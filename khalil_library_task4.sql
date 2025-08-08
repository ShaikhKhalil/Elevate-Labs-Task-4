USE khalil_library;

SELECT COUNT(*) FROM Member;

SELECT SUM(issue_id) FROM IssuedBook;

SELECT COUNT(*) FROM Book;

SELECT AVG(published_year) FROM Book;

SELECT MIN(published_year) FROM Book;

SELECT max(published_year) FROM Book;

SELECT name, COUNT(*)
FROM Book, Category
WHERE Book.category_id = Category.category_id
GROUP BY name;

SELECT name, COUNT(*)
FROM IssuedBook, Librarian
WHERE IssuedBook.librarian_id = Librarian.librarian_id
GROUP BY name;

SELECT name, ROUND(AVG(published_year), 0)
FROM Book, Author
WHERE Book.author_id = Author.author_id
GROUP BY name;

SELECT name, COUNT(*)
FROM IssuedBook, Member
WHERE IssuedBook.member_id = Member.member_id
GROUP BY name;

SELECT name, COUNT(*)
FROM Book, Category
WHERE Book.category_id = Category.category_id
GROUP BY name
HAVING COUNT(*) > 1;


