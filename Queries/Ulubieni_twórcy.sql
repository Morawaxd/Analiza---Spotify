select top 20 artist_name, count(artist_name) as liczba_odtworzen
from spotify_history group by artist_name	
order by count(artist_name) desc;
