select year(ts) as year,
cast(sum(ms_played/60000)/365 as float) as 'dzienny_œredni_czas_s³uchania(min)'
from spotify_history
group by year(ts) order by 'dzienny_œredni_czas_s³uchania(min)' desc