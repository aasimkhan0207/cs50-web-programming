id | name | flight_id
----+------+-----------
 1 | asim |         1
 2 | rood |         2
 3 | max  |         2
 4 | jim  |         3
(4 rows)


cs50=# select * from flights;
id |  origin  | destination | duration
----+----------+-------------+----------
 2 | chennai  | bombay      |       60
 3 | Goa      | Hyd         |       90
 4 | Goa      | kolkata     |      250
 1 | New York | Delhi       |      600

select name,origin,destination from flights
    join passengers on flights.id=passengers.flight_id;

 name |  origin  | destination
------+----------+-------------
 asim | New York | Delhi
 rood | chennai  | bombay
 max  | chennai  | bombay
 jim  | Goa      | Hyd

select name,origin,destination from flights join passengers on flights.id=passengers.flight_id where name='asim';
 name |  origin  | destination
------+----------+-------------
 asim | New York | Delhi
