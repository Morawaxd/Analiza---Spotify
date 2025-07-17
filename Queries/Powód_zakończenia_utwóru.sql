select distinct(reason_start),count(reason_start) as suma from spotify_history
group by reason_start order by suma desc;