## UPENN_DSBC_SQL_Challenge

#### For this challenge I referenced material from class as well as from sources such as Stack Overflow, Geeks for Geeks, Google, and YouTube. Working with SQL came very naturally for me. I definitely enjoyed learning this material.

#### Initially, I wrote the Schema and Queries in alphabetical order as the CSV files are listed in the Data folder. Because of the relationship with tables and their primary and foreign keys, I encountered some errors in the beginning. There was no relation for a table with a foreign key to another table when that table had not yet been created. My first resolution to this was to use the Alter Table syntax in order to add the foreign keys. After making these updates, everything worked perfectly. However, I decided to change things around and create the tables in a specific order so that there would not be any errors and I did not need to use the Alter Table syntax subsequently to creating my tables. This is the Schema that I have submitted and it works perfectly as well.

#### When importing the CSV files, I imported each file in the order in which I created each table: departments, titles, employees, dept_emp, dept_manager, and salaries. After importing all of the data from the CSV files, I ran a quick check of each table using Select * From table_name. After confirming that the data had been successfully imported to its respective table, I ran each query. For question number 7, I can see where some people might misinterpret if the question is asking for all employees who work in the Sales department and the Development department, or if the question is asking for those employees who specifically work in BOTH the Sales and Development departments. So, I ran two queries to answer each possibility.