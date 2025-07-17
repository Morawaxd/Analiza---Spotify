select year(ts) as year,
cast(sum(ms_played/60000)/365 as float) as 'dzienny_sredni_czas_sluchania(min)'
from spotify_history
group by year(ts) order by 'dzienny_sredni_czas_sluchania(min)' desc
