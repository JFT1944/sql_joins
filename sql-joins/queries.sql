-- write your queries here
joins_exercise=# \d
                 List of relations
 Schema |      Name       |   Type   |    Owner    
--------+-----------------+----------+-------------
 public | owners          | table    | justinprice
 public | owners_id_seq   | sequence | justinprice
 public | vehicles        | table    | justinprice
 public | vehicles_id_seq | sequence | justinprice
(4 rows)

joins_exercise=# select * of owners
joins_exercise-# ;
ERROR:  syntax error at or near "of"
LINE 1: select * of owners
                 ^
joins_exercise=# select * of from owners                                        ;
ERROR:  syntax error at or near "of"
LINE 1: select * of from owners
                 ^
joins_exercise=# select * from owners                                           ;
 id | first_name | last_name 
----+------------+-----------
  1 | Bob        | Hope
  2 | Jane       | Smith
  3 | Melody     | Jones
  4 | Sarah      | Palmer
  5 | Alex       | Miller
  6 | Shana      | Smith
  7 | Maya       | Malarkin
(7 rows)

joins_exercise=# select * from vehicles
joins_exercise-# ;
 id |  make  |  model  | year |  price   | owner_id 
----+--------+---------+------+----------+----------
  1 | Toyota | Corolla | 2002 |  2999.99 |        1
  2 | Honda  | Civic   | 2012 | 12999.99 |        1
  3 | Nissan | Altima  | 2016 | 23999.99 |        2
  4 | Subaru | Legacy  | 2006 |  5999.99 |        2
  5 | Ford   | F150    | 2012 |  2599.99 |        3
  6 | GMC    | Yukon   | 2016 | 12999.99 |        3
  7 | GMC    | Yukon   | 2014 | 22999.99 |        4
  8 | Toyota | Avalon  | 2009 | 12999.99 |        4
  9 | Toyota | Camry   | 2013 | 12999.99 |        4
 10 | Honda  | Civic   | 2001 |  7999.99 |        5
 11 | Nissan | Altima  | 1999 |  1899.99 |        6
 12 | Lexus  | ES350   | 1998 |  1599.99 |        6
 13 | BMW    | 300     | 2012 | 22999.99 |        6
 14 | BMW    | 700     | 2015 | 52999.99 |        6
(14 rows)

joins_exercise=# select * from owners
joins_exercise-# join vehicles
joins_exercise-# on owners.id = vehicles.owner_id
joins_exercise-# ;
 id | first_name | last_name | id |  make  |  model  | year |  price   | owner_id 
----+------------+-----------+----+--------+---------+------+----------+----------
  1 | Bob        | Hope      |  1 | Toyota | Corolla | 2002 |  2999.99 |        1
  1 | Bob        | Hope      |  2 | Honda  | Civic   | 2012 | 12999.99 |        1
  2 | Jane       | Smith     |  3 | Nissan | Altima  | 2016 | 23999.99 |        2
  2 | Jane       | Smith     |  4 | Subaru | Legacy  | 2006 |  5999.99 |        2
  3 | Melody     | Jones     |  5 | Ford   | F150    | 2012 |  2599.99 |        3
  3 | Melody     | Jones     |  6 | GMC    | Yukon   | 2016 | 12999.99 |        3
  4 | Sarah      | Palmer    |  7 | GMC    | Yukon   | 2014 | 22999.99 |        4
  4 | Sarah      | Palmer    |  8 | Toyota | Avalon  | 2009 | 12999.99 |        4
  4 | Sarah      | Palmer    |  9 | Toyota | Camry   | 2013 | 12999.99 |        4
  5 | Alex       | Miller    | 10 | Honda  | Civic   | 2001 |  7999.99 |        :
 id | first_name | last_name | id |  make  |  model  | year |  price   | owner_id 
----+------------+-----------+----+--------+---------+------+----------+----------
  1 | Bob        | Hope      |  1 | Toyota | Corolla | 2002 |  2999.99 |        1
  1 | Bob        | Hope      |  2 | Honda  | Civic   | 2012 | 12999.99 |        1
  2 | Jane       | Smith     |  3 | Nissan | Altima  | 2016 | 23999.99 |        2
  2 | Jane       | Smith     |  4 | Subaru | Legacy  | 2006 |  5999.99 |        2
  3 | Melody     | Jones     |  5 | Ford   | F150    | 2012 |  2599.99 |        3
  3 | Melody     | Jones     |  6 | GMC    | Yukon   | 2016 | 12999.99 |        3
  4 | Sarah      | Palmer    |  7 | GMC    | Yukon   | 2014 | 22999.99 |        4
  4 | Sarah      | Palmer    |  8 | Toyota | Avalon  | 2009 | 12999.99 |        4
  4 | Sarah      | Palmer    |  9 | Toyota | Camry   | 2013 | 12999.99 |        4
  5 | Alex       | Miller    | 10 | Honda  | Civic   | 2001 |  7999.99 |        5
  6 | Shana      | Smith     | 11 | Nissan | Altima  | 1999 |  1899.99 |        6
  6 | Shana      | Smith     | 12 | Lexus  | ES350   | 1998 |  1599.99 |        6
  6 | Shana      | Smith     | 13 | BMW    | 300     | 2012 | 22999.99 |        6
  6 | Shana      | Smith     | 14 | BMW    | 700     | 2015 | 52999.99 |        6
(14 rows)

~
~
~
(END)
 id | first_name | last_name | id |  make  |  model  | year |  price   | owner_id 
----+------------+-----------+----+--------+---------+------+----------+----------
  1 | Bob        | Hope      |  1 | Toyota | Corolla | 2002 |  2999.99 |        1
  1 | Bob        | Hope      |  2 | Honda  | Civic   | 2012 | 12999.99 |        1
  2 | Jane       | Smith     |  3 | Nissan | Altima  | 2016 | 23999.99 |        2
  2 | Jane       | Smith     |  4 | Subaru | Legacy  | 2006 |  5999.99 |        2
  3 | Melody     | Jones     |  5 | Ford   | F150    | 2012 |  2599.99 |        3
  3 | Melody     | Jones     |  6 | GMC    | Yukon   | 2016 | 12999.99 |        3
  4 | Sarah      | Palmer    |  7 | GMC    | Yukon   | 2014 | 22999.99 |        4
  4 | Sarah      | Palmer    |  8 | Toyota | Avalon  | 2009 | 12999.99 |        4
  4 | Sarah      | Palmer    |  9 | Toyota | Camry   | 2013 | 12999.99 |        4
  5 | Alex       | Miller    | 10 | Honda  | Civic   | 2001 |  7999.99 |        5
  6 | Shana      | Smith     | 11 | Nissan | Altima  | 1999 |  1899.99 |        6
  6 | Shana      | Smith     | 12 | Lexus  | ES350   | 1998 |  1599.99 |        6
  6 | Shana      | Smith     | 13 | BMW    | 300     | 2012 | 22999.99 |        6
  6 | Shana      | Smith     | 14 | BMW    | 700     | 2015 | 52999.99 |        6
(14 rows)

~
~
~
~
~
(END)
 id | first_name | last_name | id |  make  |  model  | year |  price   | owner_id 
----+------------+-----------+----+--------+---------+------+----------+----------
  1 | Bob        | Hope      |  1 | Toyota | Corolla | 2002 |  2999.99 |        1
  1 | Bob        | Hope      |  2 | Honda  | Civic   | 2012 | 12999.99 |        1
  2 | Jane       | Smith     |  3 | Nissan | Altima  | 2016 | 23999.99 |        2
  2 | Jane       | Smith     |  4 | Subaru | Legacy  | 2006 |  5999.99 |        2
  3 | Melody     | Jones     |  5 | Ford   | F150    | 2012 |  2599.99 |        3
  3 | Melody     | Jones     |  6 | GMC    | Yukon   | 2016 | 12999.99 |        3
  4 | Sarah      | Palmer    |  7 | GMC    | Yukon   | 2014 | 22999.99 |        4
  4 | Sarah      | Palmer    |  8 | Toyota | Avalon  | 2009 | 12999.99 |        4
  4 | Sarah      | Palmer    |  9 | Toyota | Camry   | 2013 | 12999.99 |        4
  5 | Alex       | Miller    | 10 | Honda  | Civic   | 2001 |  7999.99 |        5
  6 | Shana      | Smith     | 11 | Nissan | Altima  | 1999 |  1899.99 |        6
  6 | Shana      | Smith     | 12 | Lexus  | ES350   | 1998 |  1599.99 |        6
  6 | Shana      | Smith     | 13 | BMW    | 300     | 2012 | 22999.99 |        6
  6 | Shana      | Smith     | 14 | BMW    | 700     | 2015 | 52999.99 |        6
(14 rows)

~
~
~
~
~
(END)
 id | first_name | last_name | id |  make  |  model  | year |  price   | owner_id 
----+------------+-----------+----+--------+---------+------+----------+----------
  1 | Bob        | Hope      |  1 | Toyota | Corolla | 2002 |  2999.99 |        1
  1 | Bob        | Hope      |  2 | Honda  | Civic   | 2012 | 12999.99 |        1
  2 | Jane       | Smith     |  3 | Nissan | Altima  | 2016 | 23999.99 |        2
  2 | Jane       | Smith     |  4 | Subaru | Legacy  | 2006 |  5999.99 |        2
  3 | Melody     | Jones     |  5 | Ford   | F150    | 2012 |  2599.99 |        3
  3 | Melody     | Jones     |  6 | GMC    | Yukon   | 2016 | 12999.99 |        3
  4 | Sarah      | Palmer    |  7 | GMC    | Yukon   | 2014 | 22999.99 |        4
  4 | Sarah      | Palmer    |  8 | Toyota | Avalon  | 2009 | 12999.99 |        4
  4 | Sarah      | Palmer    |  9 | Toyota | Camry   | 2013 | 12999.99 |        4
  5 | Alex       | Miller    | 10 | Honda  | Civic   | 2001 |  7999.99 |        5
  6 | Shana      | Smith     | 11 | Nissan | Altima  | 1999 |  1899.99 |        6
  6 | Shana      | Smith     | 12 | Lexus  | ES350   | 1998 |  1599.99 |        6
  6 | Shana      | Smith     | 13 | BMW    | 300     | 2012 | 22999.99 |        6
  6 | Shana      | Smith     | 14 | BMW    | 700     | 2015 | 52999.99 |        6
(14 rows)

~
~
~
~
~
(END)
 id | first_name | last_name | id |  make  |  model  | year |  price   | owner_id 
----+------------+-----------+----+--------+---------+------+----------+----------
  1 | Bob        | Hope      |  1 | Toyota | Corolla | 2002 |  2999.99 |        1
  1 | Bob        | Hope      |  2 | Honda  | Civic   | 2012 | 12999.99 |        1
  2 | Jane       | Smith     |  3 | Nissan | Altima  | 2016 | 23999.99 |        2
  2 | Jane       | Smith     |  4 | Subaru | Legacy  | 2006 |  5999.99 |        2
  3 | Melody     | Jones     |  5 | Ford   | F150    | 2012 |  2599.99 |        3
  3 | Melody     | Jones     |  6 | GMC    | Yukon   | 2016 | 12999.99 |        3
  4 | Sarah      | Palmer    |  7 | GMC    | Yukon   | 2014 | 22999.99 |        4
  4 | Sarah      | Palmer    |  8 | Toyota | Avalon  | 2009 | 12999.99 |        4
  4 | Sarah      | Palmer    |  9 | Toyota | Camry   | 2013 | 12999.99 |        4
  5 | Alex       | Miller    | 10 | Honda  | Civic   | 2001 |  7999.99 |        5
  6 | Shana      | Smith     | 11 | Nissan | Altima  | 1999 |  1899.99 |        6
  6 | Shana      | Smith     | 12 | Lexus  | ES350   | 1998 |  1599.99 |        6
  6 | Shana      | Smith     | 13 | BMW    | 300     | 2012 | 22999.99 |        6
  6 | Shana      | Smith     | 14 | BMW    | 700     | 2015 | 52999.99 |        6
(14 rows)

~
~
~
~
~
(END)
 id | first_name | last_name | id |  make  |  model  | year |  price   | owner_id 
----+------------+-----------+----+--------+---------+------+----------+----------
  1 | Bob        | Hope      |  1 | Toyota | Corolla | 2002 |  2999.99 |        1
  1 | Bob        | Hope      |  2 | Honda  | Civic   | 2012 | 12999.99 |        1
  2 | Jane       | Smith     |  3 | Nissan | Altima  | 2016 | 23999.99 |        2
  2 | Jane       | Smith     |  4 | Subaru | Legacy  | 2006 |  5999.99 |        2
  3 | Melody     | Jones     |  5 | Ford   | F150    | 2012 |  2599.99 |        3
  3 | Melody     | Jones     |  6 | GMC    | Yukon   | 2016 | 12999.99 |        3
  4 | Sarah      | Palmer    |  7 | GMC    | Yukon   | 2014 | 22999.99 |        4
  4 | Sarah      | Palmer    |  8 | Toyota | Avalon  | 2009 | 12999.99 |        4
  4 | Sarah      | Palmer    |  9 | Toyota | Camry   | 2013 | 12999.99 |        4
  5 | Alex       | Miller    | 10 | Honda  | Civic   | 2001 |  7999.99 |        5
  6 | Shana      | Smith     | 11 | Nissan | Altima  | 1999 |  1899.99 |        6
  6 | Shana      | Smith     | 12 | Lexus  | ES350   | 1998 |  1599.99 |        6
  6 | Shana      | Smith     | 13 | BMW    | 300     | 2012 | 22999.99 |        6
  6 | Shana      | Smith     | 14 | BMW    | 700     | 2015 | 52999.99 |        6
(14 rows)

~
~
~
~
~
joins_exercise=# select first_name, last_name, count(owner_id) from owners                                                                        join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  ;
ERROR:  column "owners.first_name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: select first_name, last_name, count(owner_id) from owners
               ^
joins_exercise=# select first_name, last_name, count(vehicle.owner_id) from owners                                                                join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  ;
ERROR:  missing FROM-clause entry for table "vehicle"
LINE 1: select first_name, last_name, count(vehicle.owner_id) from o...
                                            ^
joins_exercise=# select * from owners                                                                                                             join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  ;
 id | first_name | last_name | id |  make  |  model  | year |  price   | owner_id 
----+------------+-----------+----+--------+---------+------+----------+----------
  1 | Bob        | Hope      |  1 | Toyota | Corolla | 2002 |  2999.99 |        1
  1 | Bob        | Hope      |  2 | Honda  | Civic   | 2012 | 12999.99 |        1
  2 | Jane       | Smith     |  3 | Nissan | Altima  | 2016 | 23999.99 |        2
  2 | Jane       | Smith     |  4 | Subaru | Legacy  | 2006 |  5999.99 |        2
  3 | Melody     | Jones     |  5 | Ford   | F150    | 2012 |  2599.99 |        3
  3 | Melody     | Jones     |  6 | GMC    | Yukon   | 2016 | 12999.99 |        3
  4 | Sarah      | Palmer    |  7 | GMC    | Yukon   | 2014 | 22999.99 |        4
  4 | Sarah      | Palmer    |  8 | Toyota | Avalon  | 2009 | 12999.99 |        4
  4 | Sarah      | Palmer    |  9 | Toyota | Camry   | 2013 | 12999.99 |        4
  5 | Alex       | Miller    | 10 | Honda  | Civic   | 2001 |  7999.99 |        5
  6 | Shana      | Smith     | 11 | Nissan | Altima  | 1999 |  1899.99 |        6
  6 | Shana      | Smith     | 12 | Lexus  | ES350   | 1998 |  1599.99 |        6
  6 | Shana      | Smith     | 13 | BMW    | 300     | 2012 | 22999.99 |        6
  6 | Shana      | Smith     | 14 | BMW    | 700     | 2015 | 52999.99 |        6
(14 rows)

joins_exercise=# select first_name, last_name, count(id) from owners                                                                              join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  ;
ERROR:  column reference "id" is ambiguous
LINE 1: select first_name, last_name, count(id) from owners
                                            ^
joins_exercise=# joins_e*t_name, count(id) from owners                                                                                            join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  ;
 id | first_name | last_name | id |  make  |  model  | year |  price   | owner_id 
----+------------+-----------+----+--------+---------+------+----------+----------
  1 | Bob        | Hope      |  1 | Toyota | Corolla | 2002 |  2999.99 |        1
  1 | Bob        | Hope      |  2 | Honda  | Civic   | 2012 | 12999.99 |        1
  2 | Jane       | Smith     |  3 | Nissan | Altima  | 2016 | 23999.99 |        2
  2 | Jane       | Smith     |  4 | Subaru | Legacy  | 2006 |  5999.99 |        2
  3 | Melody     | Jones     |  5 | Ford   | F150    | 2012 |  2599.99 |        3
  3 | Melody     | Jones     |  6 | GMC    | Yukon   | 2016 | 12999.99 |        3
  4 | Sarah      | Palmer    |  7 | GMC    | Yukon   | 2014 | 22999.99 |        4
  4 | Sarah      | Palmer    |  8 | Toyota | Avalon  | 2009 | 12999.99 |        4
  4 | Sarah      | Palmer    |  9 | Toyota | Camry   | 2013 | 12999.99 |        4
  5 | Alex       | Miller    | 10 | Honda  | Civic   | 2001 |  7999.99 |        5
  6 | Shana      | Smith     | 11 | Nissan | Altima  | 1999 |  1899.99 |        6
  6 | Shana      | Smith     | 12 | Lexus  | ES350   | 1998 |  1599.99 |        6
  6 | Shana      | Smith     | 13 | BMW    | 300     | 2012 | 22999.99 |        6
  6 | Shana      | Smith     | 14 | BMW    | 700     | 2015 | 52999.99 |        6
(14 rows)

joins_exercise=# select count(*) from owners                                                                                                      join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  ;
 count 
-------
    14
(1 row)

joins_exercise=# select count(*) from owners                                                                                                      join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  group by owner.id
joins_exercise-# ;
ERROR:  missing FROM-clause entry for table "owner"
LINE 4: group by owner.id
                 ^
joins_exercise=# select count(*) from owners                                                                                                      join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  group by owners.id                                                                                                                                ;
 count 
-------
     3
     4
     2
     2
     1
     2
(6 rows)

joins_exercise=# select first_name, last_name, count(*) from owners                                                                               join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  group by owners.id                                                                                                                                ;
 first_name | last_name | count 
------------+-----------+-------
 Sarah      | Palmer    |     3
 Shana      | Smith     |     4
 Jane       | Smith     |     2
 Melody     | Jones     |     2
 Alex       | Miller    |     1
 Bob        | Hope      |     2
(6 rows)

joins_exercise=# select first_name, last_name, count(*) from owners                                                                               join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  group by owners.id                                                                                                                                order by first_name asc;
 first_name | last_name | count 
------------+-----------+-------
 Alex       | Miller    |     1
 Bob        | Hope      |     2
 Jane       | Smith     |     2
 Melody     | Jones     |     2
 Sarah      | Palmer    |     3
 Shana      | Smith     |     4
(6 rows)

joins_exercise=# 

;
 first_name | last_name |   average_price    | count 
------------+-----------+--------------------+-------
 Sarah      | Palmer    | 16333.323567708334 |     3
 Shana      | Smith     | 19874.989624023438 |     4
 Jane       | Smith     |    14999.990234375 |     2
 Melody     | Jones     | 7799.9901123046875 |     2
 Alex       | Miller    |     7999.990234375 |     1
 Bob        | Hope      | 7999.9901123046875 |     2
(6 rows)

joins_exercise=# select first_name, last_name,avg(price) as average_price, count(*) as count from owners                                          join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  group by owners.id                                                                                                                                having count(*) > 1                                                                                                                               ;
 first_name | last_name |   average_price    | count 
------------+-----------+--------------------+-------
 Sarah      | Palmer    | 16333.323567708334 |     3
 Shana      | Smith     | 19874.989624023438 |     4
 Jane       | Smith     |    14999.990234375 |     2
 Melody     | Jones     | 7799.9901123046875 |     2
 Bob        | Hope      | 7999.9901123046875 |     2
(5 rows)

joins_exercise=# select first_name, last_name,avg(price) as average_price, count(*) as count from owners                                          join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  group by owners.id                                                                                                                                having count(*) > 1 and avg(price) > 10000;                                                                                                        first_name | last_name |   average_price    | count 
------------+-----------+--------------------+-------
 Sarah      | Palmer    | 16333.323567708334 |     3
 Shana      | Smith     | 19874.989624023438 |     4
 Jane       | Smith     |    14999.990234375 |     2
(3 rows)

joins_exercise=# select first_name, last_name,avg(price) as average_price, count(*) as count from owners                                          join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  group by owners.id                                                                                                                                having count(*) > 1 and avg(price) > 10000
joins_exercise-# order by first_name desc
joins_exercise-# ;
 first_name | last_name |   average_price    | count 
------------+-----------+--------------------+-------
 Shana      | Smith     | 19874.989624023438 |     4
 Sarah      | Palmer    | 16333.323567708334 |     3
 Jane       | Smith     |    14999.990234375 |     2
(3 rows)

joins_exercise=#    | 16333.323567708334 |     3
joins_exercise-#  Shana      | Smith     | 19874.989624023438 |     4
joins_exercise-#  Jane       | Smith     |    14999.990234375 |     2
joins_exercise-# (3 rows)
joins_exercise-# 
joins_exercise-# joins_exercise=# select first_name, last_name,avg(price) as average_price, count(*) as count from owners                                          join vehicles                                                                                                                                     on owners.id = vehicles.owner_id                                                                                                                  group by owners.id                                                                                                                                having count(*) > 1 and avg(price) > 10000
joins_exercise-# joins_exercise-# order by first_name desc
joins_exercise-# joins_exercise-# ;
ERROR:  syntax error at or near "|"
LINE 1: | 16333.323567708334 |     3
        ^
joins_exercise=#  first_name | last_name |   average_price    | count 
joins_exercise-# ------------+-----------+--------------------+-------
joins_exercise-#  Shana      | Smith     | 19874.989624023438 |     4
joins_exercise-#  Sarah      | Palmer    | 16333.323567708334 |     3
joins_exercise-#  Jane       | Smith     |    14999.990234375 |     2
joins_exercise-# (3 rows)
joins_exercise-# 
