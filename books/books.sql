use bookstoree;

CREATE TABLE IF NOT EXISTS books_scrape (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    price FLOAT,
    availability VARCHAR(100),
    rating INT
);

-- 1. **Find the number of books available in stock.**


SELECT COUNT(*) AS in_stock
FROM books_scrape
WHERE availability LIKE '%In stock%';




-- 2. **List the top 5 most expensive books.**


SELECT title, price
FROM books_scrape
ORDER BY price DESC
LIMIT 5;


-- 3. **Find the average rating of books.**


SELECT ROUND(AVG(rating), 2) AS avg_rating
FROM books_scrape;



-- 4. **Retrieve the total number of books for each rating (e.g., 1-star, 2-star, etc.).**


SELECT rating, COUNT(*) AS total
FROM books_scrape
GROUP BY rating
ORDER BY rating;
