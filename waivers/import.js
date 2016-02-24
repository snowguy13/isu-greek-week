var xlsx = require("xlsx");

// A list of workbooks to read in
// If <name> is an element of BOOKS, then the script will look for a book
// called waivers-<name>.xls and will import the waiver data into a table
// called waivers.<name>
var BOOKS = ["lipsync"];
