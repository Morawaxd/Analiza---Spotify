select top 10 artist_name, count(artist_name) as liczba_przes�ucha�
from spotify_history group by artist_name	
order by count(artist_name) desc;