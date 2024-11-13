SELECT   
    album.album_id,  
    COUNT(track.track_id) AS tracks_numbers,  
    AVG(track.duration) AS average_duration,  
    SUM(track.price) AS total_cost  
FROM   
    album 
JOIN   
    track ON album.album_id = track.album_id  
GROUP BY   
    album.album_id  
ORDER BY   
    total_cost DESC;
