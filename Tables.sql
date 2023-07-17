use proj_1;
-- Tables for the database
CREATE TABLE `orders` (
    `row_id` int  NOT NULL ,
    `order_id` varchar(10)  NOT NULL ,
    `created_at` datetime  NOT NULL ,
    `PizzaId` int  NOT NULL ,
    `quantity` int  NOT NULL ,
    `cust_id` int  NOT NULL   ,
    `add_id` int  NOT NULL ,
    `Dp_id` int  NOT NULL ,
    PRIMARY KEY (
        `row_id`,`PizzaId`
    ),
    -- Indexing for foreign key
    INDEX `fk_Customers_cust_id` (`cust_id`),
    INDEX `fk_Address_add_id` (`add_id`),
    INDEX `fk_Pizza_PizzaId` (`PizzaId`),
    INDEX `fk_DeliveryPerson_Dp_id` (`Dp_id`)

);
CREATE TABLE `Customers` (
    `cust_id` int  NOT NULL ,
    `cust_firstname` varchar(50)  NOT NULL ,
    `cust_lastname` varchar(50)  NOT NULL ,
    `Phone` varchar(15)  NOT NULL ,
    PRIMARY KEY (
        `cust_id`
    )
);

CREATE TABLE `Address` (
    `add_id` int  NOT NULL ,
    `delivery_address1` varchar(200)  NOT NULL ,
    `delivery_address2` varchar(200)  NULL ,
    `delivery_city` varchar(50)  NOT NULL ,
    `delivery_zipcode` varchar(20)  NOT NULL ,
    PRIMARY KEY (
        `add_id`
    )
);

CREATE TABLE `Pizza` (
    `PizzaId` int  NOT NULL ,
    `Name` varchar(50)  NOT NULL ,
    `Description` varchar(50)  NOT NULL ,
    `Size` varchar(20)  NOT NULL ,
    `Price` decimal(5,2)  NOT NULL ,
    `ing_id` int  NOT NULL ,
    PRIMARY KEY (
        `PizzaId`
    ),
    INDEX `fk_Ingredients_ing_id` (`ing_id`)
);

CREATE TABLE `Ingredients` (
    `ing_id` int  NOT NULL ,
    `Ing_name` varchar(50)  NOT NULL ,
    `Ing_price` Decimal(8,2)  NOT NULL ,
    `QuantityInStock` int  NOT NULL ,
    PRIMARY KEY (
        `ing_id`
    )
);

CREATE TABLE `DeliveryPerson` (
    `Dp_id` int  NOT NULL ,
    `dp_name` varchar(20)  NOT NULL ,
    `dp_phone` varchar(15)  NOT NULL ,
    `dp_vehicleno` varchar(20)  NOT NULL ,
    PRIMARY KEY (
        `Dp_id`
    )
);

-- Declaring Foreign key

ALTER TABLE `Customers` ADD CONSTRAINT `fk_Customers_cust_id` FOREIGN KEY(`cust_id`)
REFERENCES `orders` (`cust_id`);

ALTER TABLE `Address` ADD CONSTRAINT `fk_Address_add_id` FOREIGN KEY(`add_id`)
REFERENCES `orders` (`add_id`);

ALTER TABLE `Pizza` ADD CONSTRAINT `fk_Pizza_PizzaId` FOREIGN KEY(`PizzaId`)
REFERENCES `orders` (`PizzaId`);

ALTER TABLE `Ingredients` ADD CONSTRAINT `fk_Ingredients_ing_id` FOREIGN KEY(`ing_id`)
REFERENCES `Pizza` (`ing_id`);

ALTER TABLE `DeliveryPerson` ADD CONSTRAINT `fk_DeliveryPerson_Dp_id` FOREIGN KEY(`Dp_id`)
REFERENCES `orders` (`Dp_id`);

