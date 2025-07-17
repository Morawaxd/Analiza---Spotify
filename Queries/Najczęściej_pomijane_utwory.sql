select artist_name, track_name,
count(track_name) as liczba_skipów
from spotify_history where skipped ='true'
group by track_name, artist_name order by liczba_skipów desc;