import { Connection } from 'tedious';  
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
            database: 'DemonBase'  //update me
        }
    };  
    
    var connection = new Connection(config);  
    connection.on('connect', function(err) {  
        // If no error, then good to proceed.
        console.log("Connected");  
    });
    
    connection.connect();