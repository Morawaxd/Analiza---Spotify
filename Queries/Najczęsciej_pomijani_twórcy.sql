select top 20 artist_name,
count(track_name) as pominiête_utwory from spotify_history where skipped = 'true'
group by artist_name order by pominiête_utwory desc;