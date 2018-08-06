-- WHERE CLAUSE

select * from flights where id=2;

select * from flights where duration > 200;

select * from flights where destination='Delhi' AND duration<500;

select * from flights where destination IN ('Hyd','Delhi');
