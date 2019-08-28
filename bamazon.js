const inquirer  = require('inquirer');
const mysql = require('mysql');

const connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'jordan23',
    database: 'bamazon_db'
});

connection.connect();

start()

function start (){
    connection.query('SELECT * FROM products', function (error, res) {
        if (error) throw error;
    
        res.forEach(row => {
            console.log(`Id: ${row.id} Name: ${row.product_name} Price: ${row.price}\n` )
        });
        askQuestions()

    })
}

function askQuestions() {
    inquirer.prompt([
        {
            message: "Which item would you like to order?",
            type: "input",
            name: "prodType"
        },
        {
            message: "how many of this item would you like to purchase",
            type: "input",
            name: "prodAmount"
        }
    ]).then(function (ans) {
        var prodType = ans.prodType;
        var prodAmount = ans.prodAmount;
        
        withdrawProd(prodType, prodAmount)
    });
}

function withdrawProd(prodType, prodAmount) {
  connection.query('SELECT * FROM products', function (error, res) {
    if (error) throw error;
    var prod;
    
    for(var i = 0; i < res.length; i++){
      if(res[i].item_id == prodType){
        prod = res[i]
      }
    }
    console.log("Product added")
      if(prodAmount === prodAmount){
        console.log("Order Complete")
        connection.end()
      }else{
        console.log("Insuffecent stock of this product")
        connection.end()
      }
  })
};