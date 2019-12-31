var mysql = require("mysql");


function createConnection() {
    var connection = mysql.createConnection({
        host: "0.0.0.0",
        port: "3306",
        user: "root",
        password: "Yu20191123",
        database: "my_blog"
    })
    return connection;
}

module.exports.createConnection = createConnection;