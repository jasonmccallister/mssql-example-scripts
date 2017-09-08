USE "cafe-cinema"

GO

-- seed the database with some dummy data
INSERT INTO customers (first_name, last_name, email)
VALUES 
('Jason', 'McCallister', 'jason@mccallister.io'),
('Bart', 'simpson', 'bart@simpson.io'),
('lisa', 'simpson', 'lisa@simpson.io'),
('collin', 'farrel', 'collin@farrel.io'),
('tim', 'mccain', 'tim@mccain.io'),
('queen', 'elizabeth', 'queen@elizabeth.io'),
('brandon', 'boyd', 'brandon@boyd.io'),
('danny', 'rand', 'danny@rand.io'),
('jessica', 'jones', 'jessica@jones.io'),
('luke', 'cage', 'luke@cage.io'),
('matt', 'murdock', 'matt@murdock.io'),
('bruce', 'wayne', 'bruce@wayne.io'),
('george', 'clooney', 'george@clooney.io'),
('brad', 'McCallister', 'brad@mccallister.io'),
('tim', 'McCallister', 'tim@mccallister.io'),
('angela', 'McCallister', 'angela@mccallister.io'),
('pam', 'McCallister', 'pam@mccallister.io'),
('jim', 'McCallister', 'jim@mccallister.io'),
('rey', 'McCallister', 'rey@mccallister.io'),
('luke', 'skywalker', 'luke@skywalker.io'),
('darth', 'vader', 'darth@vader.io');

INSERT INTO movies (name, parental_rating, length)
VALUES
('Star Wars', 'PG-13', 123),
('Daredevil', 'PG-13', 96),
('Home Alone', 'PG-13', 60),
('Home Alone 2', 'PG-13', 65),
('Home Alone 3', 'PG-13', 76),
('Afer Earth', 'PG-13', 96),
('Aliens', 'R', 120),
('Alien', 'PG', 136),
('300', 'R', 85),
('Stranger Things', 'PG-13', 163);

INSERT INTO theaters (name, maximum_sets)
VALUES
('Theather One', 90),
('Theater Two', 90),
('Theater Three', 90);

INSERT INTO product_types (name)
VALUES
('Ticket'),
('Lunch'),
('Dinner');

INSERT INTO products (name, price, product_type_id)
VALUES
('Matinee Ticket', 5, 1),
('Regular Ticket', 5, 1),
('Hot Dog Lunch', 7, 2),
('Hot Dog Dinner', 7, 2),
('Steak Lunch', 15, 3),
('Steak Dinner', 15, 3),
('Hamburger Lunch', 10, 3),
('Hamburger Dinner', 10, 3),
('Pizza Lunch', 12, 3),
('Pizza Dinner', 12, 3);

INSERT INTO showings (movie_id, theater_id, airing)
VALUES
(8, 1, GETDATE()),
(3, 3, GETDATE()),
(9, 1, GETDATE()),
(10, 1, GETDATE()),
(1, 3, GETDATE()),
(7, 2, GETDATE()),
(6, 1, GETDATE()),
(5, 1, GETDATE()),
(4, 3, GETDATE()),
(2, 2, GETDATE()),
(1, 2, GETDATE()),
(10, 3, GETDATE()),
(6, 1, GETDATE()),
(7, 2, GETDATE()),
(9, 3, GETDATE()),
(8, 3, GETDATE());

INSERT INTO orders (customer_id, product_id)
VALUES
(20, 10),
(19, 9),
(18, 8),
(17, 7),
(16, 6),
(15, 5),
(14, 4),
(13, 3),
(12, 2),
(11, 1),
(20, 10),
(9, 9),
(8, 8),
(7, 7),
(6, 6),
(5, 5),
(4, 4),
(3, 3),
(2, 2),
(1, 1);


-- delete an order by its id

-- update a price for an product

-- update a movie title

-- delete a showing

-- 

GO