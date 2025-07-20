
select artist_name, 
count(case when skipped = 'false' then 1 end) as liczba_przesluchanych,
count(case when skipped = 'true' then 1 end) as liczba_pominietych,
round(cast(count(case when skipped = 'false' then 1 end) as float) /
nullif(count(case when skipped = 'false' then 1 end)
+ count(case when skipped = 'true' then 1 end),0) * 100, 2) as procent_przesluchanych
from spotify_history group by artist_name
having count(case when skipped = 'true' then 1 end) >= 10
order by liczba_przesluchanych desc;