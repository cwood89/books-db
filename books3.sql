Select 
	books.name, 
    authors.name AS Author, 
    books.dateWritten as Published, 
    authors.birthday as AuthorsAge,
    authors.numberOfAwards AS TotalAwards,
    genres.type AS Genre,
	genres.fiction
from books
Join authors
ON books.authorId = authors.id
Join genres
ON books.genreId = genres.id
