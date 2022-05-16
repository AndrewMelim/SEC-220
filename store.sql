CREATE DATABASE Store;
USE company;
CREATE TABLE Store.orders(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    productId varchar (20),
    cost int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers(id)

);
CREATE TABLE Store.customers(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar (20),
    company varchar(20),
    PRIMARY KEY (id)

);

CREATE TABLE Store.products(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar (20),
    PRIMARY KEY (id)


);
CREATE TABLE Store.product_orders_association(
  id int NOT NULL UNIQUE AUTO_INCREMENT,
    product_id int NOT NULL,
    orders_id int NOT NULL,
    PRIMARY KEY (id)



);

INSERT INTO Store.customers(firstname, lastname, company) VALUES (
                                                             'aaron', 'donald', 'rams'
                                                            );
INSERT INTO Store.customers(firstname, lastname, company) VALUES (
                                                             'von', 'miller', 'rams'
                                                            );
INSERT INTO Store.customers(firstname, lastname, company) VALUES (
                                                             'patrick', 'mahomes', 'chiefs'
                                                            );
INSERT INTO Store.orders(productId, cost, customerid) VALUES ('football', '10','1');
INSERT INTO Store.orders(productId, cost, customerId) VALUES ('helmet', '15','1');
INSERT INTO Store.orders(productId, cost, customerId) VALUES ('football', '10','2');
INSERT INTO Store.orders(productId, cost, customerId) VALUES ('helmet', '15','2');
INSERT INTO Store.orders(productId, cost, customerid) VALUES ('jersey', '25', '1');
INSERT INTO Store.orders(productId, cost, customerId) VALUES ('cleats', '10','1');
INSERT INTO Store.orders(productId, cost, customerid) VALUES ('jersey', '25', '2');
INSERT INTO Store.orders(productId, cost, customerId) VALUES ('cleats', '10','2');

INSERT INTO Store.products(product) VALUES ('Football');
INSERT INTO Store.products(product) VALUES ('Helmet');
INSERT INTO Store.products(product) VALUES ('Jersey');
INSERT INTO Store.products(product) VALUES ('Cleats');

INSERT INTO Store.product_orders_association (product_id, orders_id) VALUES (1,1);
INSERT INTO Store.product_orders_association (product_id, orders_id) VALUES (1,3);
INSERT INTO Store.product_orders_association (product_id, orders_id) VALUES (2,2);
INSERT INTO Store.product_orders_association (product_id, orders_id) VALUES (2,4);
INSERT INTO Store.product_orders_association (product_id, orders_id) VALUES (3,5);
INSERT INTO Store.product_orders_association (product_id, orders_id) VALUES (3,7);
INSERT INTO Store.product_orders_association (product_id, orders_id) VALUES (4,6);
INSERT INTO Store.product_orders_association (product_id, orders_id) VALUES (4,8);


SELECT * from Store.customers;
SELECT * from Store.orders;
SELECT * from Store.products;
SELECT * from Store.product_orders_association;
select firstname, lastname from customers;
select customerId, cost from Store.orders;
select product from Store.products;
select lastname, company from customers;
select firstname, company from customers;







