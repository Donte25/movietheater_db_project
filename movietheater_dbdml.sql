INSERT INTO customer(
    first_name,
    last_name
) VALUES (
    'Donte',
    'Fordham'
);

SELECT *
FROM customer;

INSERT INTO customer(
    first_name,
    prime
) VALUES
 (
    'Cloud',
    true
),
 (
    'Noctis',
    true
),
(
    'Sora',
    True
);


INSERT INTO concession(
    item_name,
    price
) VALUES(
    'Small Popcorn',
    08.99
),
(
    'Large Popcorn',
    12.99
),
(
    'HotDog',
    08.99
),
(
    'Nachos',
    10.99
),
(
    'Small Drink',
    4.99
),
(
    'Large Drink',
    6.99
),
(
    'Candy',
    02.00
);

SELECT * FROM concession;

INSERT INTO ticket(
    customer_id,
    price
) VALUES(
    1,
   12.99
),(
    4,
    19.99
),(
    1,
    34.98
);

SELECT *
FROM ticket;
