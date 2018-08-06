create table passengers(
    id serial primary key,
    name varchar not null,
    flight_id integer references flights
);
