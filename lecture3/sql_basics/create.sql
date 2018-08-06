CREATE TABLE flights(
    id SERIAL PRIMARY KEY,
    origin VARCHAR NOT NULL,
    destination VARCHAR NOT NULL,
    duration INTEGER NOT NULL
);

-- NOte: Each id in flight table is unique Trip
