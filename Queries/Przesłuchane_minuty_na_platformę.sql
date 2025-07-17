select platform, cast(sum(ms_played/60000)as int) as minutes_played from spotify_history

group by platform;