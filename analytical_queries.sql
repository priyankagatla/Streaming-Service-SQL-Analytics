-- 1. Top Watched Content
-- Identifies the most popular titles based on the number of times they appear in logs.
SELECT 
    c.Title, 
    COUNT(w.LogID) AS ViewCount
FROM Content c
JOIN WatchHistory w ON c.ContentID = w.ContentID
GROUP BY c.Title
ORDER BY ViewCount DESC;

-- 2. Total Watch Time per User
-- Shows the total time (in minutes) each user has spent watching content.
SELECT 
    u.Name, 
    SUM(w.DurationMinutes) AS TotalMinutesWatched
FROM Users u
JOIN WatchHistory w ON u.UserID = w.UserID
GROUP BY u.Name
ORDER BY TotalMinutesWatched DESC;

-- 3. Genre Popularity
-- Finds which genres are the most frequently watched.
SELECT 
    c.Genre, 
    COUNT(w.LogID) AS TotalViews
FROM Content c
JOIN WatchHistory w ON c.ContentID = w.ContentID
GROUP BY c.Genre
ORDER BY TotalViews DESC;

-- 4. Engagement: Premium vs Free
-- Compares average session length between account types.
SELECT 
    u.PremiumStatus, 
    AVG(w.DurationMinutes) AS AverageSessionDuration
FROM Users u
JOIN WatchHistory w ON u.UserID = w.UserID
GROUP BY u.PremiumStatus;

-- 5. Content Discovery (Unwatched)
-- Identifies content that has never been watched (useful for marketing campaigns).
SELECT 
    c.Title
FROM Content c
LEFT JOIN WatchHistory w ON c.ContentID = w.ContentID
WHERE w.LogID IS NULL;
