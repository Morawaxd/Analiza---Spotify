select artist_name, 
count(case when skipped ='false' then 1 end) as liczba_odtworzen,
count(case when skipped ='true' then 1 end) as liczba_pominiec,
case when count(case when skipped ='false' then 1 end) < count(case when skipped ='true' then 1 end)
then
ABS(round(cast(count(case when skipped ='false' then 1 end)as float)
/nullif(count(case when skipped ='true' then 1 end),0)*100,2) - 100)
else
round(cast(count(case when skipped ='true' then 1 end)as float)
/nullif(count(case when skipped ='false' then 1 end),0)*100, 2) end as procent_pomijanych
from spotify_history 
group by artist_name order by liczba_odtworzen desc;
