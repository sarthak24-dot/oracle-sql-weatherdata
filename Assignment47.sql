DESCRIBE WeatherData; 

DESCRIBE MonthlyWeather; 

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'WEATHERDATA'; 

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'MONTHLYWEATHER'; 

SELECT table_name FROM all_tables WHERE table_name IN ('MONTHLYWEATHER', 'WEATHERDATA'); 

  

-- Drop tables if they exist 

BEGIN 

   EXECUTE IMMEDIATE 'DROP TABLE MonthlyWeather'; 

   EXECUTE IMMEDIATE 'DROP TABLE WeatherData'; 

EXCEPTION 

   WHEN OTHERS THEN 

      IF SQLCODE != -942 THEN -- Ignore "table does not exist" error 

         RAISE; 

      END IF; 

END; 

/ 

  

-- Create MonthlyWeather table 

CREATE TABLE MonthlyWeather ( 

    City VARCHAR2(50), 

    Year NUMBER, 

    Month VARCHAR2(20), 

    HighTemperature NUMBER, 

    Rainfall NUMBER, 

    RainyDays NUMBER, 

    Thunderstorms NUMBER 

); 

  

-- Create WeatherData table 

CREATE TABLE WeatherData ( 

    City VARCHAR2(50), 

    Year NUMBER, 

    SunnyDaysPerYear NUMBER, 

    RainyDaysPerYear NUMBER, 

    ThunderstormsPerYear NUMBER 

); 

-- Insert Data into MonthlyWeather 

-- Insert Data into MonthlyWeather 

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Miami', 2024, 'June', 88.0, 4.0, 12, 8); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Miami', 2024, 'July', 90.0, 5.0, 15, 9); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Miami', 2024, 'August', 89.0, 6.0, 15, 10); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('New Orleans', 2024, 'June', 89.0, 5.0, 16, 9); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('New Orleans', 2024, 'July', 91.0, 6.0, 18, 10); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('New Orleans', 2024, 'August', 90.0, 7.0, 18, 11); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Indianapolis', 2024, 'June', 82.0, 3.0, 12, 5); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Indianapolis', 2024, 'July', 85.0, 4.0, 13, 6); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Indianapolis', 2024, 'August', 84.0, 4.0, 12, 6); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Orlando', 2024, 'June', 88.0, 4.0, 13, 7); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Orlando', 2024, 'July', 90.0, 5.0, 14, 8); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Orlando', 2024, 'August', 89.0, 6.0, 15, 9); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Jacksonville', 2024, 'June', 87.0, 4.0, 14, 6); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Jacksonville', 2024, 'July', 89.0, 5.0, 15, 7); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Jacksonville', 2024, 'August', 88.0, 6.0, 14, 6); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Tampa', 2024, 'June', 88.0, 4.0, 13, 7); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Tampa', 2024, 'July', 90.0, 5.0, 14, 8); 

  

INSERT INTO MonthlyWeather (City, Year, Month, HighTemperature, Rainfall, RainyDays, Thunderstorms) VALUES 

('Tampa', 2024, 'August', 89.0, 6.0, 15, 9); 

  

-- Insert Data into WeatherData 

INSERT INTO WeatherData (City, Year, SunnyDaysPerYear, RainyDaysPerYear, ThunderstormsPerYear) VALUES 

('Miami', 2024, 250, 180, 150); 

  

INSERT INTO WeatherData (City, Year, SunnyDaysPerYear, RainyDaysPerYear, ThunderstormsPerYear) VALUES 

('New Orleans', 2024, 225, 210, 135); 

  

INSERT INTO WeatherData (City, Year, SunnyDaysPerYear, RainyDaysPerYear, ThunderstormsPerYear) VALUES 

('Indianapolis', 2024, 210, 150, 72); 

  

INSERT INTO WeatherData (City, Year, SunnyDaysPerYear, RainyDaysPerYear, ThunderstormsPerYear) VALUES 

('Orlando', 2024, 240, 170, 80); 

  

INSERT INTO WeatherData (City, Year, SunnyDaysPerYear, RainyDaysPerYear, ThunderstormsPerYear) VALUES 

('Jacksonville', 2024, 235, 170, 72); 

  

INSERT INTO WeatherData (City, Year, SunnyDaysPerYear, RainyDaysPerYear, ThunderstormsPerYear) VALUES 

('Tampa', 2024, 245, 160, 81); 

  

COMMIT; 