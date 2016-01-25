define(["jquery", "json!/api/apparel", "util/OrderManager"],
function( $,       apparel,        OrderManager ) {

apparel = JSON.parse( apparel );

var NUM_COLS = 6,

    OrderRow,
    OrderTable;

var findApparelByName = function( name ) {
  var res;

  apparel.forEach(function( item ) {
    if( item.name === name ) {
      res = item;
    }
  });

  return res;
};

var addOption = function( select, val, text ) {
  text = text || val;

  var option = $("<option />")
    .attr("value", val )
    .text( text );

  select.append( option );
};

OrderRow = function( table, item ) {
  var self = this, // for use within event callbacks

      row = $("<tr />"),
      cells,

      nameSelect = $("<select />"),
      sizeSelect = $("<select />"),
      countInput = $("<input />"),
      deleteButton = $("<button />");
  
  // Prepare the row
  row.addClass("order");

  // Create the cells, append them to the row
  cells = ["index", "name", "size", "count", "cost", "delete"].reduce(function( cells, name ) {
    var cell = cells[ name ] = $("<td />")
      .addClass( name );

    row.append( cell );

    return cells;
  }, {});

  // Add relevant items to the object
  this._table = table;
  this._item = item || {};
  this._row = row;
  this._nameSelect = nameSelect;
  this._sizeSelect = sizeSelect;
  this._countInput = countInput;
  this._costCell = cells.cost;
  this._deleteButton = deleteButton;
  
  // Prepare the controls
  // (1) Name select
  apparel.forEach(function( item ) {
    addOption( nameSelect, item.name );
  });

  // On change, update size select and cost
  nameSelect.on("change", function() {
    // Reflect the change in the data
    self._item.name = nameSelect.val();
    
    // Update the size select
    self._makeSizeSelect();

    // Update the cost
    self._updateCost();
  });

  // If an item is given, use its name
  if( item ) {
    nameSelect.val( item.name );
  }

  // (2) Size select (this is done repeatedly and so is in a method)
  findApparelByName( nameSelect.val() ).sizes.forEach(function( size ) {
    addOption( sizeSelect, size );
  });

  // On change, update data
  sizeSelect.on("change", function() {
    self._item.size = sizeSelect.val();
  });

  // If an item is given, use its size
  if( item ) {
    sizeSelect.val( item.size );
  }

  // (3) Count input
  countInput
    .attr({
      "type": "number",
      "min":  1
    });

  // If an item is given, use its count, otherwise, use 1
  countInput.val( item ? item.count : 1 );

  // On change, update data and cost
  countInput.on("change", function() {
    // Update data
    self._item.count = countInput.val();

    // update cost
    self._updateCost();
  });

  // (4) Delete button -- TODO
  deleteButton
    .text("✕")
    .click(function() {
      self._delete();
    });

  // Update item info if no item is given
  if( !item ) {
    this._item.name = nameSelect.val();
    this._item.size = sizeSelect.val();
    this._item.count = countInput.val();
    this._updateCost();
  }

  // Then, add elements to the relevant cells
  cells.name.append( nameSelect );
  cells.size.append( sizeSelect );
  cells.count.append( countInput );
  cells.delete.append( deleteButton );

  // Finally, if this is a new item, make a request to the server to add it
  if( !this._item.id ) {
    this._createInServer();
  }
};

OrderRow.prototype = {
  _makeSizeSelect: function() {
    var name = this._nameSelect,
        size = this._sizeSelect,

        val  = size.val();

    // Empty the current sizeSelect
    size.empty();

    // Then reconstruct the options based on the current name
    findApparelByName( nameSelect.val() ).sizes.forEach(function( size ) {
      addOption( sizeSelect, size );
    });

    // Try selecting the previously selected element
    size.val( val );

    // Update the change (if any) in data
    this._item.size = size.val();
  },

  _updateCost: function() {
    var itemInfo = findApparelByName( this._item.name ),
        cost = itemInfo.cost * this._item.count;

    // Update the cost cell
    this._costCell.text("$" + cost );

    // Make the change in data
    this._cost = cost;

    // Update the parent table's cost
    this._table._updateCost();
  },

  _createInServer: function() {
    var self = this, 
        row = this._row;

    row.addClass("creating");
    this._setControlsEnabled( false );

    OrderManager.addItem( this._item, function( res ) {
      // Remove the marker class
      row.removeClass("creating");

      // If successful, save the id
      if( res.success ) {
        self._item.id = res.id;
        this._setControlsEnabled( true );
      } else {
        // Otherwise, show an error
        row.addClass("error");
      }
    });
  },

  _delete: function() {
    var self = this,
        index = this._row.index();

    this._row.addClass("deleting");
    this._setControlsEnabled( false );

    OrderManager.deleteItem( this._item, function( res ) {
      if( res.success ) {
        self._table._itemDeleted( index );
      } else {
        self._row
          .removeClass("deleting")
          .addClass("error");
        
        // Leave controls disabled, marked for deletion
      }
    });
  },

  _setControlsEnabled: function( enabled ) {
    this._nameSelect.attr("disabled", !enabled );
    this._sizeSelect.attr("disabled", !enabled );
    this._countInput.attr("disabled", !enabled );
    this._deleteButton.attr("disabled", !enabled );
  }
};

OrderTable = function( table, items ) {
  var self = this,

      head = $("<thead />"),
      headRow = $("<tr />"),

      foot = $("<tfoot />"),
      newItem = $("<button />"),
      totalCell = $("<td />"),

      body = $("<tbody />"),
      emptyRow = $("<tr />");

  // Empty the table, then add class to the table
  table
    .empty()
    .addClass("apparel-order");

  // Prepare the header row
  ["" /* for numbering */, "Name", "Size", "Count", "Cost", "" /* for delete buttons */].forEach(function( header ) {
    headRow.append( $("<th />")
      .addClass("header")
      .text( header )
    );
  });

  head.append( headRow );

  // Prepare the footer row
  newItem
    .addClass("button")
    .text("+ New")
    .click(function() {
      self._addItem();
    });

  totalCell
    .addClass("total")
    .attr("colspan", 2 );

  foot.append( $("<tr />")
    .append( $("<td />") 
      .attr("colspan", NUM_COLS - 2 )
      .addClass("foot-left")
      .append( newItem )
    )
    .append( totalCell )
  );
  
  // Prepare the empty row -- shown if an order is empty
  emptyRow
    .addClass("empty")
    .append( $("<td />")
      .attr("colspan", NUM_COLS )
      .html("You haven't added anything to the order yet!<br />"
          + "Hit <strong>+ New</strong> below to add an item.")
    );

  // Prepare the body
  body.append( emptyRow );

  this._rows = [];
  if( items ) {
    items.forEach(function( item ) {
      this._addItem( item );
    }, this );
  }

  // Append head, foot, and body
  table.append([ head, foot, body ]);

  // Save relevant properties
  this._totalCell = totalCell;
  this._emptyRow  = emptyRow;
  this._body      = body;
};

OrderTable.prototype = {
  _addItem: function( item /* may be left blank */ ) {
    var row = new OrderRow( this, item );
    
    // Append the row to the table
    this._body.append( row._row );

    // Save the row
    this._rows.push( row );

    // Remove the empty row from the table
    this._emptyRow.detach();
  },

  _itemDeleted: function( index ) {
    // Remove the row
    this._rows.splice( index, 1 );

    // And update the cost
    this._updateCost();
  },

  _updateCost: function() {
    var totalCell = this._totalCell,
        total;

    total = this._rows.reduce(function( total, row ) {
      return total + row._cost;
    }, 0 );
  }
};

return OrderTable;

});