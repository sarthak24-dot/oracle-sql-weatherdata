CREATE TABLE DailyWeather ( 
    City VARCHAR2(50), 
    Year NUMBER, 
    DateColumn VARCHAR2(10),  -- Store dates as strings (YYYY-MM-DD) 
    MaxTemperature NUMBER, 
    MinTemperature NUMBER, 
    Thunderstorm CHAR(1),  -- 'Y' for Yes, 'N' for No 
    Rainfall NUMBER 
); 

