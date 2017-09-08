USE "cafe-cinema"

GO

-- drop tables, bad for real code

IF OBJECT_ID('dbo.orders', 'U') IS NOT NULL
	DROP TABLE dbo.orders;
IF OBJECT_ID('dbo.customers', 'U') IS NOT NULL
	DROP TABLE dbo.customers;
IF OBJECT_ID('dbo.product_types', 'U') IS NOT NULL
	DROP TABLE dbo.product_types;
IF OBJECT_ID('dbo.products', 'U') IS NOT NULL
	DROP TABLE dbo.products;
IF OBJECT_ID('dbo.showings', 'U') IS NOT NULL
	DROP TABLE dbo.showings;
IF OBJECT_ID('dbo.movies', 'U') IS NOT NULL
	DROP TABLE dbo.movies;
IF OBJECT_ID('dbo.theaters', 'U') IS NOT NULL
	DROP TABLE dbo.theaters;

-- create the tables

CREATE TABLE customers
(
    id INT PRIMARY KEY IDENTITY(1,1),
    first_name NVARCHAR(255),
    last_name NVARCHAR(255),
    email NVARCHAR(255),
    deleted_at DATETIME DEFAULT(NULL),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NOT NULL DEFAULT GETDATE(),
);

CREATE TABLE product_types
(
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255),
    deleted_at DATETIME DEFAULT(NULL),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NOT NULL DEFAULT GETDATE(),
);

CREATE TABLE products
(
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255),
    price INT,
    product_type_id INT NOT NULL,
    deleted_at DATETIME DEFAULT(NULL),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NOT NULL DEFAULT GETDATE(),
    -- constraints for foreign keys
    CONSTRAINT fk_product_type_id FOREIGN KEY (product_type_id) REFERENCES product_types (id),
);

CREATE TABLE orders
(
    id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    deleted_at DATETIME DEFAULT(NULL),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NOT NULL DEFAULT GETDATE(),
    -- constraints for foreign keys
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers (id),
    CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES products (id),
);

CREATE TABLE movies
(
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255) NOT NULL,
    parental_rating NVARCHAR(255) NOT NULL,
    length INT NOT NULL,
    deleted_at DATETIME DEFAULT(NULL),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NOT NULL DEFAULT GETDATE(),
);

CREATE TABLE theaters
(
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255) NOT NULL,
    maximum_seats INT NOT NULL,
    deleted_at DATETIME DEFAULT(NULL),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NOT NULL DEFAULT GETDATE(),
);

CREATE TABLE showings
(
    id INT PRIMARY KEY IDENTITY(1,1),
    movie_id INT NOT NULL,
    theater_id INT NOT NULL,
    airing DATETIME DEFAULT GETDATE(),
    deleted_at DATETIME DEFAULT(NULL),
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    updated_at DATETIME NOT NULL DEFAULT GETDATE(),
    -- constraints for foreign keys
    CONSTRAINT fk_movie_id FOREIGN KEY (movie_id) REFERENCES movies (id),
    CONSTRAINT fk_theater_id FOREIGN KEY (theater_id) REFERENCES theaters (id),
);

GO