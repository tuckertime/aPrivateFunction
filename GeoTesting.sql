

DECLARE @g geography;
DECLARE @h geography;
SET @g = geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326);
SET @h = geography::STGeomFromText('POINT(-122.34900 47.65100)', 4326);

SELECT @g.STDistance(@h);
