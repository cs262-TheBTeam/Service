-- sample queries

-- get records for building dropdown
SELECT *
FROM CodeBuilding

-- get players in leaderboard
SELECT name, score
FROM Player
ORDER BY score DESC

-- choose 3 random questions
SELECT *
FROM Room r
ORDER BY RANDOM()
LIMIT 3

-- get pictures for a single room (ID == id for the room)
SELECT imagePath
FROM ImageLink
WHERE roomID = ID

-- I'm not sure if this will work, if it does then it will give us three random questions with
-- the room pictures all in one query. If this doesn't work, there must be another way to do this
SELECT *
FROM Room r
ORDER BY RANDOM()
LIMIT 3
WHERE IDRoom IN (
    SELECT roomID
    FROM ImageLInk
)
