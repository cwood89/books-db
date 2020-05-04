# books-db

Using mySQL to create a books database.

1. Have at least three tables with at least one relationship to another table for each
2. Have one table with at least 25 records and at least 10 records in the others (there is no max limit!)
3. Two tables should have at least five columns (including the primary key column)

``` sql
CREATE TABLE authors (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birthday DATE NOT NULL,
    death DATE,
    numberOfAwards INT NOT NULL
)
```

``` sql
CREATE TABLE genres (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    fiction BOOLEAN,
)
```

``` sql
CREATE TABLE books(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    authorId INT NOT NULL,
    dateWritten DATE,
    genreId INT NOT NULL,
    FOREIGN KEY (genreId) REFERENCES genres(id),
    FOREIGN KEY (authorId) REFERENCES authors(id)
)
```

Show off using the following commands by using the File->Save SQL function

1. Write an INSERT INTO command that adds multiple records at the same time

    ```sql

    ```

2. Write a JOIN that displays a view with at least 5 columns from two different tables

    ```sql

    ```

3. Write a JOIN that displays a view with at least 7 columns from three (or more) different tables

    ```sql

    ```

4. Write an ALTER TABLE command to add a new column to your table

    ```sql

    ```
