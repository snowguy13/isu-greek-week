var pg = require("pg");

// Should work remotely or locally
var DB = process.env.DATABASE_URL || "tomscallon:tomscallon@localhost/isugreekweek";

// Create the client and connect to the database
var client = new pg.Client( DB );
client.connect();

module.exports = {
  
};