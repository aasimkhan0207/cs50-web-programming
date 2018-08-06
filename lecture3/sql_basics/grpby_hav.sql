select origin,count(*) from flights group by origin;
  origin  | count
----------+-------
 Goa      |     2
 New York |     1
 chennai  |     1

select origin,sum(duration) from flights group by origin;
  origin  | sum
----------+-----
 Goa      | 340
 New York | 600
 chennai  |  60

 select origin,count(*) from flights group by origin having count(*) > 1;
 origin | count
--------+-------
 Goa    |     2


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
