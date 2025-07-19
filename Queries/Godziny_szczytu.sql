select datepart(hour,ts) as godzina, 
sum(ms_played/60000) as przesluchane_minuty from spotify_history 
group by datepart(hour,ts) order by przesluchane_minuty desc;
