create database project;
use project;
CREATE TABLE car_datasets(
car_id INT NOT NULL AUTO_INCREMENT,
car_name  VARCHAR(100),
 car_year VARCHAR(4),
 km_driven INT ,
 selling_price INT,
 fuel_type Varchar(10),
 mileaage VARCHAR(30),
 max_power VARCHAR(30),
 torque VARCHAR(30),
 seats Varchar(25),
 car_engine Varchar(25),
 transmission VARCHAR(30),
 seller_Id INT,
 owner_Id INT,
 dealer_Id INT,
 PRIMARY KEY(car_Id)
 );
CREATE TABLE Seller_type(
seller_type Varchar(25),
seller_Id INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY(seller_Id)
);
Create TABLE Owner_type(
owner_type Varchar(50),
owner_Id INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY(owner_Id)
);
Create TABLE Dealer_type(
dealer_Id INT NOT NULL AUTO_INCREMENT,
dealer_type Varchar(50),
PRIMARY KEY(dealer_Id)
);
select car_name, max(car_year) from car_datasets;
select car_name, min(car_year) from car_datasets;
select car_name, avg(selling_price) from car_datasets
group by (car_name);
select car_name, count(car_name) as count from car_datasets
group by (car_name)
order by count desc;
select car_name,min(mileaage) and min(selling_price) from car_datasets;
select dealer_type, count(car_datasets.dealer_Id) as transactions, sum(selling_price) from car_datasets join dealer_type on car_datasets.dealer_Id = dealer_type.dealer_Id
where car_datasets.dealer_Id != 4
group by dealer_type
order by transactions desc;
select seller_type,count(car_datasets.seller_Id) as transactions1,sum(selling_price) from car_datasets join seller_type on car_datasets.seller_Id=seller_type.seller_Id
where car_datasets.seller_Id =1
group by seller_type
order by transactions1 desc;
