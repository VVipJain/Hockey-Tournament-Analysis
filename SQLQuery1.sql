-- Selecting the database created--
USE vipuldb;

--Displaying the data once received from python datadrame--
Select * from hockey;

--Creating a duplicate table for data cleaning and formatting--
SELECT * INTO hockey_staging
FROM hockey;

SELECT * FROM hockey_staging;

--Changing the datatypes of the column for data formatting--
ALTER TABLE hockey_staging
ALTER COLUMN Year INT NOT NULL;

ALTER TABLE hockey_staging
ALTER COLUMN Wins INT NOT NULL;

ALTER TABLE hockey_staging
ALTER COLUMN Losses INT NOT NULL;

ALTER TABLE hockey_staging
ALTER COLUMN [OT Losses] INT NOT NULL;

ALTER TABLE hockey_staging
ALTER COLUMN [Win %] FLOAT NOT NULL;

ALTER TABLE hockey_staging
ALTER COLUMN [Goals For (GF)] INT NOT NULL;

ALTER TABLE hockey_staging
ALTER COLUMN [Goals Against (GA)] INT NOT NULL;

ALTER TABLE hockey_staging
ALTER COLUMN [+ / -] INT NOT NULL;

UPDATE hockey_staging
SET [Win %] = [Win %]*100;

SELECT * FROM hockey_staging;

--Analysing the new table with some queries--
SELECT [Team Name],SUM(Wins) as 'Total Wins'
FROM hockey_staging
GROUP BY [Team Name]
ORDER BY [Total Wins] DESC;

SELECT * FROM hockey_staging
WHERE [Win %] > 60;

WITH CTE_EXP AS(
SELECT [Team Name] , [Year], SUM([Goals For (GF)]) AS 'Total Goals For',
DENSE_RANK() OVER(PARTITION BY SUM([Goals For (GF)]) ORDER BY [Team Name] DESC) AS RANKING
FROM hockey_staging
GROUP BY [Team Name],[Year]
)
SELECT * FROM CTE_EXP;

-- After this we'll import this database in Power BI for further analysis and visualisation.