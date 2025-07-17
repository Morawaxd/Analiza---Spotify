select distinct(year(ts)) as year, count(year(ts)) as liczba_odtworzen from spotify_history 
group by year(ts) order by year;
