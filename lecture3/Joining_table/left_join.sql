-- final result include all value of columns of table
-- that is place on left side of 'JOIN'

id | name | flight_id
----+------+-----------
 1 | asim |         1
 2 | rood |         2
 3 | max  |         2
 4 | jim  |         3
 -- NOte- no passenger has taken flight no. 4 (Goa->kolkata)

 id |  origin  | destination | duration
 ----+----------+-------------+----------
  2 | chennai  | bombay      |       60
  3 | Goa      | Hyd         |       90
  4 | Goa      | kolkata     |      250
  1 | New York | Delhi       |      600


select name,origin,destination from flights left join passengers on flights.id=passengers.flight_id;
 name |  origin  | destination
------+----------+-------------
 asim | New York | Delhi
 rood | chennai  | bombay
 max  | chennai  | bombay
 jim  | Goa      | Hyd
      | Goa      | kolkata

-- FROM passengers LEFT JOIN flights      
select name,origin,destination from passengers left join flights on flights.id=passengers.flight_id;
       name |  origin  | destination
      ------+----------+-------------
       asim | New York | Delhi
       rood | chennai  | bombay
       max  | chennai  | bombay
       jim  | Goa      | Hyd
