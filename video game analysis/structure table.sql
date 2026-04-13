use videogames;
LOAD DATA LOCAL INFILE 'C:/Users/rishi/OneDrive/Desktop/video game analysis/clean_games.csv'
INTO TABLE games
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SET GLOBAL local_infile = 1;

select* from games;
CREATE TABLE vgsales (
    Grade INT,
    Name VARCHAR(255) CHARACTER SET utf8mb4,
    Platform VARCHAR(50),
    Year INT,
    Genre VARCHAR(100) CHARACTER SET utf8mb4,
    Publisher VARCHAR(255) CHARACTER SET utf8mb4,
    NA_Sales FLOAT,
    EU_Sales FLOAT,
    JP_Sales FLOAT,
    Other_Sales FLOAT,
    Global_Sales FLOAT,
    Calculated_Global_Sales FLOAT
);
LOAD DATA LOCAL INFILE 'C:/Users/rishi/OneDrive/Desktop/video game analysis/clean_vgsales.csv'
INTO TABLE vgsales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select* from vgsales;

CREATE TABLE merged_games AS
SELECT 
    g.Title,
    g.Release_Date,
    g.Team,
    g.Rating,
    g.Number_of_Reviews,
    g.Plays,
    g.Playing,
    g.Backlogs,
    g.Wishlist,
    g.Genres,

    v.grade,
    v.Platform,
    v.Year,
    v.Genre AS Sales_Genre,
    v.Publisher,
    v.NA_Sales,
    v.EU_Sales,
    v.JP_Sales,
    v.Other_Sales,
    v.Global_Sales

FROM games g
INNER JOIN vgsales v
ON g.Title = v.Name;

select * from merged_games;