select artist_name, track_name,
count(track_name) as liczba_skip�w
from spotify_history where skipped ='true'
group by track_name, artist_name order by liczba_skip�w desc;