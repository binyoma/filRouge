CREATE TABLE Posts(
   pos_id INT,
   pos_libelle VARCHAR(50),
   PRIMARY KEY(pos_id)
);

CREATE TABLE categories(
   cat_id INT,
   cat_libelle VARCHAR(50),
   PRIMARY KEY(cat_id)
);

CREATE TABLE typeCustomer(
   typ_id INT,
   typ_libelle VARCHAR(50) NOT NULL,
   PRIMARY KEY(typ_id)
);

CREATE TABLE countries(
   cou_id INT,
   cou_name VARCHAR(50),
   PRIMARY KEY(cou_id)
);

CREATE TABLE Employees(
   emp_id INT,
   emp_regNumber INT NOT NULL,
   emp_supervisor_id INT,
   emp_lastname VARCHAR(50) NOT NULL,
   emp_firstname VARCHAR(50) NOT NULL,
   emp_address VARCHAR(50),
   emp_zipcode VARCHAR(50),
   emp_city VARCHAR(50) NOT NULL,
   emp_mail VARCHAR(100) NOT NULL,
   emp_phone INT NOT NULL,
   emp_salary VARCHAR(50),
   emp_enrty_date DATE NOT NULL,
   emp_children INT NOT NULL,
   emp_gender VARCHAR(2) NOT NULL,
   emp_id_1 INT NOT NULL,
   pos_id INT NOT NULL,
   PRIMARY KEY(emp_id),
   FOREIGN KEY(emp_id_1) REFERENCES Employees(emp_id),
   FOREIGN KEY(pos_id) REFERENCES Posts(pos_id)
);

CREATE TABLE customers(
   cus_id INT,
   cus_ref INT NOT NULL,
   cus_lastname VARCHAR(50) NOT NULL,
   cus_firstname VARCHAR(50) NOT NULL,
   cus_address VARCHAR(50) NOT NULL,
   cus_zipcode VARCHAR(50) NOT NULL,
   cus_city VARCHAR(50) NOT NULL,
   cus_mail VARCHAR(200),
   cus_discount INT NOT NULL,
   cus_phone INT NOT NULL,
   cus_add_date DATE,
   cus_update DATE,
   cou_id INT NOT NULL,
   emp_id INT NOT NULL,
   typ_id INT NOT NULL,
   PRIMARY KEY(cus_id),
   FOREIGN KEY(cou_id) REFERENCES countries(cou_id),
   FOREIGN KEY(emp_id) REFERENCES Employees(emp_id),
   FOREIGN KEY(typ_id) REFERENCES typeCustomer(typ_id)
);

CREATE TABLE orders(
   ord_id INT,
   ord_ref VARCHAR(50),
   ord_date DATE NOT NULL,
   ord_payment DATE,
   ord_ship DATE,
   ord_reception DATE,
   ord_status VARCHAR(50),
   cus_id INT NOT NULL,
   PRIMARY KEY(ord_id),
   FOREIGN KEY(cus_id) REFERENCES customers(cus_id)
);

CREATE TABLE order_details(
   ode_id INT,
   ode_unit_price_ht CURRENCY NOT NULL,
   ode_quantity INT NOT NULL,
   ode_discount INT NOT NULL,
   ord_id INT NOT NULL,
   PRIMARY KEY(ode_id),
   FOREIGN KEY(ord_id) REFERENCES orders(ord_id)
);

CREATE TABLE suppliers(
   sup_id INT,
   sup_ref INT NOT NULL,
   sup_name VARCHAR(50) NOT NULL,
   sup_address VARCHAR(100),
   sup_zipcode VARCHAR(10),
   sup_city VARCHAR(50) NOT NULL,
   sup_phone INT NOT NULL,
   sup_mail VARCHAR(100),
   cou_id INT NOT NULL,
   PRIMARY KEY(sup_id),
   FOREIGN KEY(cou_id) REFERENCES countries(cou_id)
);

CREATE TABLE Products(
   pro_id INT,
   pro_ref VARCHAR(10) NOT NULL,
   pro_ean INT NOT NULL,
   pro_name VARCHAR(50) NOT NULL,
   pro_price CURRENCY NOT NULL,
   pro_stock INT NOT NULL,
   pro_stock_alert INT NOT NULL,
   pro_color VARCHAR(50) NOT NULL,
   pro_description VARCHAR(1000),
   pro_publish LOGICAL NOT NULL,
   pro_picture VARCHAR(10) NOT NULL,
   pro_add DATE NOT NULL,
   pro_update DATE,
   ode_id INT NOT NULL,
   sup_id INT NOT NULL,
   cat_id INT NOT NULL,
   PRIMARY KEY(pro_id),
   FOREIGN KEY(ode_id) REFERENCES order_details(ode_id),
   FOREIGN KEY(sup_id) REFERENCES suppliers(sup_id),
   FOREIGN KEY(cat_id) REFERENCES categories(cat_id)
);
