CREATE FUNCTION [dbo].[CalculateBearing] 
(
    @pointA as geography
    ,@pointB as geography
)

RETURNS decimal(18,12)

AS

    BEGIN

    -- Declare the return variable
    DECLARE @bearing decimal(18,12)

    -- Declare the local variables
    DECLARE @x decimal(18,12)
    DECLARE @y decimal(18,12)
    DECLARE @dLat decimal(18,12)
    DECLARE @dLong decimal(18,12)
    DECLARE @rLat1 decimal(18,12)
    DECLARE @rLat2 decimal(18,12)

    IF(@pointA.STIsEmpty() = 1 OR @pointB.STIsEmpty() = 1)
        set @bearing = null
    ELSE
        BEGIN

        -- Calculate delta between coordinates
        SET @dLat = RADIANS(@pointB.Lat - @pointA.Lat)
        SET @dLong = RADIANS(@pointB.Long - @pointA.Long)

        -- Calculate latitude as radians
        SET @rLat1 = RADIANS(@pointA.Lat)
        SET @rLat2 = RADIANS(@pointB.Lat)

        SET @y = SIN(@dLong)*COS(@rLat2)
        SET @x = COS(@rLat1)*SIN(@rLat2)-SIN(@rLat1)*COS(@rlat2)*COS(@dLong)

        IF (@x = 0 and @y = 0)
            SET @bearing = null
        ELSE
            BEGIN
                SET @bearing = CAST((DEGREES(ATN2(@y,@x)) + 360) as decimal(18,12)) % 360
            END
    END

    -- Return the result of the function
    RETURN @bearing

END

GO
/*
--Function utilisation
DECLARE @pointA as geography
DECLARE @pointB as geography

SET @pointA = geography::STGeomFromText('POINT(3 45)', 4326)
SET @pointB = geography::STGeomFromText('POINT(4 47)', 4326)

SELECT [dbo].[CalculateBearing](@pointA, @pointB)

*/
