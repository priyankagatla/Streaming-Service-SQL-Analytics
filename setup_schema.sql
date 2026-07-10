CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(100),
    PremiumStatus VARCHAR(10) CHECK (PremiumStatus IN ('Free', 'Premium')),
    SubscriptionDate DATE
);

CREATE TABLE Content (
    ContentID INT PRIMARY KEY,
    Title VARCHAR(150),
    Genre VARCHAR(50),
    ReleaseYear INT,
    ContentType VARCHAR(10) CHECK (ContentType IN ('Movie', 'Show', 'Book'))
);

CREATE TABLE WatchHistory (
    LogID INT PRIMARY KEY,
    UserID INT,
    ContentID INT,
    WatchDate DATE,
    DurationMinutes INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ContentID) REFERENCES Content(ContentID)
);
INSERT INTO Users VALUES
(1, 'Alice Smith', 'Premium', '2025-01-15'),
(2, 'Bob Jones', 'Free', '2025-03-10'),
(3, 'Charlie Brown', 'Premium', '2025-05-20'),
(4, 'Diana Prince', 'Free', '2026-01-01'),
(5, 'Evan Wright', 'Premium', '2026-02-14');

INSERT INTO Content VALUES
(101, 'Stranger Sci-Fi', 'Sci-Fi', 2022, 'Show'),
(102, 'The Midnight Sun', 'Sci-Fi', 2024, 'Movie'),
(103, 'Laugh Out Loud', 'Comedy', 2021, 'Show'),
(104, 'Detective Poirot', 'Mystery', 2020, 'Book'),
(105, 'Shadows in Dark', 'Mystery', 2023, 'Movie'),
(106, 'Cosmic Journey', 'Sci-Fi', 2025, 'Book');

INSERT INTO WatchHistory VALUES
(1001, 1, 101, '2026-06-01', 45),
(1002, 1, 102, '2026-06-02', 120),
(1003, 2, 103, '2026-06-05', 22),
(1004, 3, 101, '2026-06-10', 50),
(1005, 3, 105, '2026-06-12', 95),
(1006, 4, 103, '2026-05-01', 25),
(1007, 1, 105, '2026-06-15', 110),
(1008, 5, 106, '2026-06-20', 300),
(1009, 2, 101, '2026-06-22', 40);
