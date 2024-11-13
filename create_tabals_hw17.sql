CREATE TABLE artist (
artist_id SERIAL NOT NULL PRIMARY KEY,
artist_full_name VARCHAR(100) NOT NULL
)

CREATE TABLE album(
album_id SERIAL NOT NULL PRIMARY KEY,
title VARCHAR(100) NOT NULL,
release_date DATE NOT NULL
)

CREATE TABLE track (
track_id SERIAL NOT NULL PRIMARY KEY,
artist_id SERIAL NOT NULL,
album_id SERIAL NOT NULL,
price INTEGER NOT NULL,
title VARCHAR(100) NOT NULL,
track_size INTEGER NOT NULL,
track_type VARCHAR(100) NOT NULL,
genre VARCHAR(100) NOT NULL,
duration TIME NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id),  
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
)

CREATE TABLE customer(
customer_id SERIAL NOT NULL PRIMARY KEY,
customer_name VARCHAR(100) NOT NULL,
phone_number VARCHAR(100) NOT NULL,
email VARCHAR(100)
)

CREATE TABLE sales(
sales_id SERIAL NOT NULL PRIMARY KEY,
customer_id SERIAL NOT NULL,
sales_item VARCHAR(255) NOT NULL,
quantity INTEGER NOT NULL,
sales_date DATE NOT NULL,
sales_price INTEGER NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

CREATE TABLE sales_track(
sales_id SERIAL NOT NULL,
track_id SERIAL NOT NULL,
FOREIGN KEY (sales_id) REFERENCES sales(sales_id),
FOREIGN KEY (track_id) REFERENCES track(track_id)
)