

---

# Car Market Analysis



## Project Description

Car Market Analysis is a database management system that allows users to analyze and explore a dataset related to the car market. The database contains information about various cars, including their specifications, pricing, sellers, owners, and dealers. The project aims to provide insights into the car market, such as popular car models, average selling prices, and transactions by different seller and dealer types.

## Database Schema

The project's database consists of the following tables:

1. `car_datasets`: This table stores detailed information about different cars, including their specifications, pricing, and ownership details. The primary key is `car_id`.

2. `Seller_type`: This table stores information about different types of sellers in the car market. The primary key is `seller_Id`.

3. `Owner_type`: This table stores information about different types of owners in the car market. The primary key is `owner_Id`.

4. `Dealer_type`: This table stores information about different types of dealers in the car market. The primary key is `dealer_Id`.

## Queries and Analysis

The database supports the following SQL queries to extract insights from the car dataset:

1. Find the latest year for each car model in the dataset.

2. Find the earliest year for each car model in the dataset.

3. Calculate the average selling price for each car model in the dataset.

4. Count the number of occurrences of each car model in the dataset and order them in descending order of occurrence.

5. Find the car model with the lowest mileage and the lowest selling price.

6. Count the number of transactions and the total selling price for each dealer type, excluding dealer type with `dealer_Id = 4`.

7. Count the number of transactions and the total selling price for a specific seller type with `seller_Id = 1`.

 **Find the car model with the lowest mileage and the lowest selling price:**

   Explanation of the query and its result.

   *Query:*
   ```sql
   SELECT car_name, MIN(mileaage) AS lowest_mileage, MIN(selling_price) AS lowest_selling_price
   FROM car_datasets;
   ```

   *Analysis:*
   The above query retrieves the car model with the lowest mileage and the lowest selling price from the `car_datasets` table. The `MIN` function is used to find the minimum values for mileage and selling price. The result displays the car name along with its corresponding lowest mileage and selling price.

 **Calculate the average selling price for each car model in the dataset:**

   Explanation of the query and its result.

   *Query:*
   ```sql
   SELECT car_name, AVG(selling_price) AS average_selling_price
   FROM car_datasets
   GROUP BY car_name;
   ```

   *Analysis:*
   This query calculates the average selling price for each car model in the `car_datasets` table. The `AVG` function is used to calculate the average selling price for each car model, and the `GROUP BY` clause groups the results by car name. The result shows the car name and its corresponding average selling price.

 **Find the car model with the lowest mileage and the lowest selling price:**

   Explanation of the query and its result.

   *Query:*
   ```sql
   SELECT car_name, MIN(mileaage) AS lowest_mileage, MIN(selling_price) AS lowest_selling_price
   FROM car_datasets;
   ```

   *Analysis:*
   This query is the same as the one mentioned in the first analysis. It retrieves the car model with the lowest mileage and the lowest selling price from the `car_datasets` table. The `MIN` function is used to find the minimum values for mileage and selling price. The result displays the car name along with its corresponding lowest mileage and selling price.

 **Dealers with the most car sales and their total sales:**

   Explanation of the query and its result.

   *Query:*
   ```sql
   SELECT dealer_type, COUNT(dealer_Id) AS total_sales, SUM(selling_price) AS total_revenue
   FROM car_datasets
   JOIN dealer_type ON car_datasets.dealer_Id = dealer_type.dealer_Id
   GROUP BY dealer_type
   ORDER BY total_sales DESC;
   ```

   *Analysis:*
   This query identifies the dealers with the most car sales and calculates their total sales revenue from the `car_datasets` table. The `COUNT` function is used to count the number of cars sold by each dealer, and the `SUM` function calculates the total revenue generated from those sales. The results are sorted in descending order based on the total number of sales (`total_sales`).

 **Total revenue from individual sales:**

   Explanation of the query and its result.

   *Query:*
   ```sql
   SELECT SUM(selling_price) AS total_revenue
   FROM car_datasets;
   ```

   *Analysis:*
   This query calculates the total revenue generated from all individual car sales in the `car_datasets` table. The `SUM` function is used to calculate the sum of all selling prices, providing the total revenue from individual sales.


## Getting Started

To run the project and execute the SQL queries, you need to set up a MySQL database and import the provided dataset. Follow the steps below to get started:

1. Create a new MySQL database.
2. Import the provided dataset into the database.
3. Configure the database connection settings in the project code.
4. Run the SQL queries to analyze the car market dataset.

## Contributors

- Nurillokh. A
- Heera Singh

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

