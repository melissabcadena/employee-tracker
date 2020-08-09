const express = require('express');
const PORT = process.env.PORT || 3000;
const app = express();
const mysql = require('mysql2');

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Creates the connection to database
const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    // Your MySQL username
    user: 'root',
    // Your MySQL password
    password: 'swhc0321',
    database: 'employeeTracker'
  });
  
  connection.connect(err => {
    if (err) throw err;
    
  });

app.get('/', (req, res) => {
    res.json({
      message: 'Hello World'
    });
  });

  // Default response for any other request(Not Found) Catch all
app.use((req, res) => {
    res.status(404).end();
  });

// Start server after DB connection
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });

