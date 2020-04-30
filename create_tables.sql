-- CREATE TABLE Employee (
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   department_id INTEGER NOT NULL
-- );

-- CREATE TABLE Employee_Program (
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   employee_id INTEGER NOT NULL,
--   training_program_id INTEGER NOT NULL
-- );

-- CREATE TABLE Department (
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   budget INTEGER NOT NULL,
--   supervisor_id INTEGER NOT NULL
-- );

-- CREATE TABLE Computer (
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   purchase_date TEXT NOT NULL,
--   decommission_date TEXT NOT NULL,
--   owner_id INTEGER NOT NULL
-- );

-- CREATE TABLE Training_Program (
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   start_date TEXT NOT NULL,
--   end_date TEXT NOT NULL,
--   maximum_attendees INTEGER NOT NULL
-- );

-- CREATE TABLE Product_Type (
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   category  TEXT NOT NULL
-- );

-- CREATE TABLE Product (
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   type_id INTEGER NOT NULL,
--   price INTEGER NOT NULL,
--   title  TEXT NOT NULL,
--   description  TEXT NOT NULL,
--   creator_id INTEGER NOT NULL
-- );

-- CREATE TABLE `Order`(
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   customer_id INTEGER NOT NULL,
--   FOREIGN KEY (customer_id) REFERENCES Customer (id)
-- );

-- CREATE TABLE Payment_Type (
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   account_number INTEGER NOT NULL
-- );

-- CREATE TABLE Order_Payment (
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   order_id INTEGER NOT NULL,
--   payment_type_id INTEGER NOT NULL
-- );

-- CREATE TABLE Customer_Payment (
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   customer_id INTEGER NOT NULL,
--   payment_type_id INTEGER NOT NULL
-- );

-- CREATE TABLE Customer (
--   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--   first_name  TEXT NOT NULL,
--   last_name  TEXT NOT NULL,
--   date_created TEXT NOT NULL,
--   days_active INTEGER NOT NULL
-- );

-- ALTER TABLE Employee ADD FOREIGN KEY (department_id) REFERENCES Department (id);

-- ALTER TABLE Department ADD FOREIGN KEY (supervisor_id) REFERENCES Employee (id);

-- ALTER TABLE Employee_Program ADD FOREIGN KEY (employee_id) REFERENCES Employee (id);

-- ALTER TABLE Employee_Program ADD FOREIGN KEY (training_program_id) REFERENCES Training_Program (id);

-- ALTER TABLE Computer ADD FOREIGN KEY (owner_id) REFERENCES Employee (id);

-- ALTER TABLE Product ADD FOREIGN KEY (type_id) REFERENCES Product_Type (id);

-- ALTER TABLE Product ADD FOREIGN KEY (creator_id) REFERENCES Customer (id);

-- ALTER TABLE Customer_Payment ADD FOREIGN KEY (customer_id) REFERENCES Customer (id);

-- ALTER TABLE Customer_Payment ADD FOREIGN KEY (payment_type_id) REFERENCES Payment_Type (id);

-- ALTER TABLE Order_Payment ADD FOREIGN KEY (order_id) REFERENCES Order (id);

-- ALTER TABLE Order_Payment ADD FOREIGN KEY (payment_type_id) REFERENCES Payment_Type (id);
