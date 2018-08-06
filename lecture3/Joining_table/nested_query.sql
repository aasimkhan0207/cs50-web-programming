TABLE passengers
 id | name | flight_id
----+------+-----------
  1 | asim |         1
  2 | rood |         2
  3 | max  |         2
  4 | jim  |         3
-- flight(s) that were taken by more than 1 passengers
select flight_id from passengers
group by flight_id having count(*) > 1;
flight_id
-----------
        2

NESTED QUERY->

-- get details flight which is having more than 1 passengers

select * from flights where id in
(select flight_id from passengers group by flight_id having count(*)>1);

 id | origin  | destination | duration
----+---------+-------------+----------
  2 | chennai | bombay      |       60
