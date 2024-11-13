SELECT artist.artist_full_name AS artist_name
FROM artist
JOIN track ON artist.artist_id=track.artist_id 
WHERE track.genre = 'rock'
GROUP BY artist.artist_id,artist , artist.artist_full_name 
HAVING COUNT(track.track_id) >=10;