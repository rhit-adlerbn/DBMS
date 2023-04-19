const Connection = require('tedious').Connection
const Request = require('tedious').Request
var TYPES = require('tedious').TYPES;

function executeStatement() {
    let request = new Request("select * from Demon", function(err, rowCount) {
      if (err) {
        console.log(err);
      } else {
        console.log(rowCount + ' rows');
        // and we close the connection
        connection.close()
      }
    });

    request.on('row', function(columns) {
        let result = ""
      columns.forEach(function(column) {
        result += column.value + ", "
      });
      console.log(result)
    });

    connection.execSql(request);
}

var config = {  
    server: 'titan.csse.rose-hulman.edu',
    authentication: {
        type: 'default',
        options: {
            userName: 'petersa2', //update me
            password: 'Password123'  //update me
        }
    },
    options: {
        // If you are on Microsoft Azure, you need encryption:
        encrypt: true,
        database: 'DemonBase',  //update me
        trustServerCertificate: true
    }
};  


var connection = new Connection(config);

// Setup event handler when the connection is established. 
connection.on('connect', function(err) {
  if(err) {
    console.log('Error: ', err)
  }
  // If no error, then good to go...
  executeStatement();
});

// Initialize the connection.
connection.connect();
