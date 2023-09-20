CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    membership BOOLEAN DEFAULT false,
    created_at DATE DEFAULT CURRENT_DATE
    )

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    time_purchased TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   price NUMERIC(4,2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
)

CREATE TABLE Movies(
    movie_id SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
   customer_id INTEGER NOT NULL,
   price NUMERIC(4,2),
   movie_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
)

CREATE TABLE Concession(
    item_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    amount INTEGER NOT NULL,
    item_name VARCHAR(50) NOT NULL UNIQUE,
    price NUMERIC(8,2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
)

