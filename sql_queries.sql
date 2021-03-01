CREATE TABLE Summary (
   ID                int  NOT NULL AUTO_INCREMENT,
   Summary           text NOT NULL,
   PRIMARY KEY (ID)
);

INSERT INTO Summary (Summary)
VALUES ('Freezing'), ('Bracing'), ('Chilly'), ('Cool'), ('Mild'), ('Warm'), ('Balmy'), ('Hot'), ('Sweltering'), ('Scorching');

CREATE TABLE Weather (
   ID               int   NOT NULL AUTO_INCREMENT,
   Date             date  NOT NULL,
   TemperatureC     int   NOT NULL,
   TemperatureF     int   NOT NULL,
   SummaryID        int   NOT NULL,
   PRIMARY KEY (ID),
   FOREIGN KEY (SummaryID) REFERENCES Summary(ID)
);

-- display today's weather
SELECT TemperatureC, TemperatureF, Summary.Summary FROM Weather
INNER JOIN Summary ON Weather.SummaryID=Summary.ID
WHERE Date LIKE CURDATE();

-- add new entry
INSERT INTO Weather (Date, TemperatureC, TemperatureF, SummaryID)
VALUES ('2000-10-24', 10, 50, 4);

-- change existing entry
UPDATE Weather
SET TemperatureC = 5, TemperatureF = 41
WHERE ID = 1;

-- delete one entry
DELETE FROM Weather WHERE ID = 1;
