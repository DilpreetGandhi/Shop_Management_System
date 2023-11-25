create database Shop_Management_System;
Use Shop_Management_System;
Create table primary_stock_inventory(
					Inventory_ID int NOT NULL auto_increment
                    primary key,
                    Category varchar (20),
                    Quantity int,
                    Unit_Cost_Price int,
                    Unit_selling_Price int,
                    Created_date date,
                    updated_date date
                    );

create table profit_table(
						Sale_ID int NOT NULL primary Key auto_increment,
						Stock_ID int, 	
                        Foreign key(Stock_ID) references primary_stock_inventory(Inventory_ID),
						Profit double, 
						Type_of_sale char(20), 
						current_selling_price int, 
						created_date date, 
						updated_date date
						);
                        
Select * from primary_stock_inventory;
Select * from profit_table;