select location_dis1.distance as score, count(*) as occurences
from (

  select case  
    when distance between 0 and 5 then ' 0- 5'
    when distance between 5 and 10 then '5-10'
	when distance between 10 and 15 then '10-15'
	when distance between 15 and 20 then '15-20'
	when distance between 20 and 25 then '20-25'
	when distance between 25 and 30 then '25-30'
	when distance between 30 and 35 then '30-35'
	when distance between 35 and 40 then '35-40'
	when distance between 40 and 50 then '40-50' 
   else '>50'
	end as distance
  from location_dis1 where ASGN_STTS_IND='U' ) location_dis1
group by location_dis1.distance 
order by occurences;