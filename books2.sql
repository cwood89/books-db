Select
  books.name,
  authors.name AS Author,
  books.dateWritten AS Published,
  authors.birthday AS AuthorsAge,
  authors.numberOfAwards AS TotalAwards
FROM books
JOIN authors
ON books.authorId = authors.id;