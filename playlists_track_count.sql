SELECT pl.Name, COUNT(*) FROM PlaylistTrack pt LEFT JOIN Playlist pl ON pl.PlaylistId = pt.PlaylistId GROUP BY pl.Name
