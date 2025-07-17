select artist_name, track_name,
count(track_name) as suma_skipow
from spotify_history where skipped ='true'
group by track_name, artist_name order by suma_skipow desc;
