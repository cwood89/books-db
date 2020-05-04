# books-db

Using mySQL to create a books database.

1. Have at least three tables with at least one relationship to another table for each
2. Have one table with at least 25 records and at least 10 records in the others (there is no max limit!)
3. Two tables should have at least five columns (including the primary key column)

``` sql
  CREATE TABLE authors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL,
    birthday DATE NOT NULL,
    death DATE,
    numberOfAwards INT NOT NULL
  )
```

``` sql
  CREATE TABLE genres (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type VARCHAR(50) NOT NULL,
    fiction VARCHAR(05) NOT NULL
  )
```

``` sql
  CREATE TABLE books(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
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
      INSERT INTO genres(type,fiction)
        VALUES ("Drama", "true"),
        ("Horror", "true"),
        ("Romance", "true"),
        ("Young Adult", "true"),
        ("Science Fiction", "true"),
        ("Self Help", "false"),
        ("Science", "false"),
        ("Cooking", "false"),
        ("Art", "false"),
        ("History", "false");
    ```

2. Write a JOIN that displays a view with at least 5 columns from two different tables

    ```sql
        Select
          books.name,
          authors.name AS Author,
          books.dateWritten AS Published,
          authors.birthday AS AuthorsAge,
          authors.numberOfAwards AS TotalAwards
        FROM books
        JOIN authors
        ON books.authorId = authors.id;
    ```

3. Write a JOIN that displays a view with at least 7 columns from three (or more) different tables

    ```sql
        Select
          books.name,
          authors.name AS Author,
          books.dateWritten AS Published,
          authors.birthday AS AuthorsAge,
          authors.numberOfAwards AS TotalAwards,
          genres.type AS Genre,
          genres.fiction
        FROM books
        JOIN authors
        ON books.authorId = authors.id
        Join genres
        ON books.genreId = genres.id
    ```

4. Write an ALTER TABLE command to add a new column to your table

    ```sql

    ```
