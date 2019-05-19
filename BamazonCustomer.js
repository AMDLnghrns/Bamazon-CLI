// // // Require statements
var mysql = require("mysql");
var inquirer = require("inquirer");

// // // Connecting the database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "bamazon"
});

// // // Function to show user what is in stock
function whatWeHave() {
  inquirer
    .prompt([
      {
        type: "list",
        name: "genre",
        message: "Welcome to my music store! What genre do you like?",
        choices: ["Classic Rock", "Country", "Electric", "Pop"]
      }
    ])
    .then(function(response) {
      console.log("This is what we have:");
      readValues(response);
      purchaseSelection();
    });
}

// // // Function to read values
function readValues(response) {
  connection.query(
    "SELECT item_id, item_name, price FROM products WHERE ?",
    {
      genre: response.genre
    },
    function(err, res) {
      if (err) throw err;
      console.log(res);
    }
  );
}

// // // Function to purchase selected item
function purchaseSelection() {
  inquirer
    .prompt([
      {
        type: "input",
        name: "purchaseSelection",
        message: "Which product would you like to buy?"
      },
      {
        type: "input",
        name: "quantity",
        message: "How many would you like?"
      }
    ])
    .then(function(response) {
      confirmStock(response);
    });
}

function confirmStock(response) {
  connection.query(
    "SELECT stock_quantity, price FROM products WHERE ?",
    {
      item_id: response.purchaseSelection
    },
    function(err, res) {
      if (err) throw err;
      if (res[0].stock_quantity > response.quantity) {
        console.log(
          "That total comes to $" + res[0].price * response.quantity + "."
        );
        updateValues(response);
      } else {
        console.log(
          "I'm sorry, we only have " +
            res[0].stock_quantity +
            " of that item right now and cannot fulfil this purchase. Please come again!"
        );

        connection.end();
      }
    }
  );
}

// // // Function to update values when purchased
function updateValues(response) {
  connection.query(
    `
        UPDATE products
        SET stock_quantity = (stock_quantity - "${response.quantity}")
        WHERE ?;
    `,
    [
      {
        item_id: response.purchaseSelection
      }
    ],
    function(err, res) {
      console.log("Thank you for your purchase!");
      connection.end();
    }
  );
}

// // // Function to kick off program
whatWeHave();
