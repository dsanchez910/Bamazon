const inquirer  = require('inquirer');
const mysql = require('mysql');

const connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: '',
    database: 'bamazon'
});

connection.connect();

start()

function start (){
    connection.query('SELECT * FROM products', function (error, res) {
        if (error) throw error;
       
        res.forEach(row => {
            console.log(`Id: ${row.item_id} Name: ${row.product_name} Price: ${row.price}\n` )
        });
        askQuestions()

      
    })
}

function askQuestions() {
    inquirer.prompt([
        {
            message: "Write the product",
            type: "input",
            name: "prodId"
        },
        {
            message: "how many would you like to buy?",
            type: "input",
            name: "prodQty"
        }
    ]).then(function (ans) {
        var prodId = ans.prodId;
        var prodQty = ans.prodQty;
        withdrawProd(prodId, prodQty)
    });
}
