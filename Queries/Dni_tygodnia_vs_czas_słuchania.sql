set datefirst 1;

select datepart(weekday,ts) as dzien_tygodnia,
datename(weekday,ts) as nazwa_dnia,
sum(ms_played/60000) as przes�uchane_minuty from spotify_history 
group by datename(weekday,ts), datepart(weekday,ts) order by dzien_tygodnia;