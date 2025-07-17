select year(ts) as year,
cast(sum(ms_played/60000)/365 as float) as 'dzienny_�redni_czas_s�uchania(min)'
from spotify_history
group by year(ts) order by 'dzienny_�redni_czas_s�uchania(min)' desc