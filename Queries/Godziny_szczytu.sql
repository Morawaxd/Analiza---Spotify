select top 23 datepart(hour,ts) as godzina, 
sum(ms_played/60000) as przes�uchane_minuty from spotify_history 
group by datepart(hour,ts) order by przes�uchane_minuty desc;