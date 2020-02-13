SELECT pl.Name, COUNT(*) 
FROM PlaylistTrack pt 
LEFT JOIN Playlist pl 
ON pl.PlaylistId = pt.PlaylistId 
GROUP BY pl.Name

--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
