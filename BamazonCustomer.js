var mysql = require("mysql");
var inquirer = require("inquirer");

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


// id's, names, and prices

function readValues() {
  connection.query(
    // "SELECT DISTINCT item_name FROM products WHERE ?",
    "SELECT * FROM products",
      {
        genre: 'Electric'
      },
    function(err, res) {
      if (err) throw err;
      // Log all results of the SELECT statement
      
      
      console.log(res);




      connection.end();
    }
  );
}

readValues();

// function updateValues(response) {
//   var query = connection.query(
//     "UPDATE products SET ? WHERE ?",
//     [
//       {
//         price: priceInput
//       },
//       {
//         product_name: productInput
//       }
//     ],
//     function(err, res) {
//       readValues();
//     }
//   );
// }

// inquirer
//   .prompt([
//     {
//       type: "list",
//       name: "doWhat",
//       message: "What would you like to do?",
//       choices: ["Add", "Bid", "Exit"]
//     }
//   ])
//   .then(function(response) {
//     if (response.doWhat === "Add") {
//       inquirer
//         .prompt([
//           {
//             type: "input",
//             name: "productInput",
//             message: "What would you like to add?"
//           },
//           {
//             type: "input",
//             name: "departmentInput",
//             message: "Which department?"
//           },
//           {
//             type: "input",
//             name: "priceInput",
//             message: "Price?"
//           }
//         ])
//         .then(function createValues(response2) {
//           var query = connection.query(
//             "INSERT INTO products SET ?",
//             {
//               product_name: response2.productInput,
//               department_name: response2.departmentInput,
//               price: response2.priceInput
//             },
//             function(err, res) {
//               readValues();
//             }
//           );
//         });
//     } else if (response.doWhat === "Bid") {
//         console.log("Bid");
//     } else {
//         console.log("Come again!");
//     }
//   });
