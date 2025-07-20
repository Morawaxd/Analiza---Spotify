select top 500 artist_name,count(track_name) as liczba_odtworzen, album_name from spotify_history
group by album_name, artist_name order by liczba_odtworzen desc;
