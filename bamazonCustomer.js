const mysql = require("mysql");
const cTable = require("console.table");
const inquirer = require("inquirer");

// connection info for sql database
const connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "password",
  database: "bamazon_db"
});

// connect to mysql server and sql database
connection.connect(err => {
  if (err) throw err;
});

connection.query('SELECT * FROM products', function (err, results) {
  if (err) throw err;
  // display all of the items available for sale
  console.table(results);
});

/* 
create - INSERT 
read - SELECT
update products - UPDATE 
*/

purchaseItem();

function purchaseItem() {
  // reading from bamazon database, items in products table - SELECT
  connection.query("SELECT * FROM products", (err, results) => {
    if (err) throw err;
    inquirer
      .prompt([
        {
          name: "item_id",
          type: "input",
          message: "What is the item_id of the product you would like to purchase?"
        },
        {
          name: "quantity",
          type: "input",
          message: "How many would you like to purchase?"
        }
      ])
      .then(function (answer) {
        // get quatity information about the product choosen by item_id
        console.log(answer);
        let actualQuantity;
        for (let i = 0; i < results.length; i++) {
          if (results[i].item_id == answer.item_id) {
            actualQuantity = results[i];
          }
        }
        // determine if there are enough items in inventory
        if (products.quantity > actualQuantity.stock_quantity) {
          if (error) throw err;
          // reurn stops the function and prevents the order from going through, but ONLY if the above if statement is true
          return console.log("Insufficient quantity. We cannot process your order.");
        }
        else {
          if (error) throw err;
          console.log("Your order has been placed. Thank you!");
          // connect to sql database to update the remaining quatity
          connection.query(
            // update products at the value of stock_quantity at answer(or item_id) the user wants
            "UPDATE products SET ? WHERE ?",
            [
              {
                stock_quantity: answer.quantity
              }
            ]
          ).then 
          // print the total cost of the user's purchase
          // put value from price column WHERE item_id = answer.item_id into a variable
          // multiply said variable by the quantity ordered by the user
        }
      })
    }
  )};
