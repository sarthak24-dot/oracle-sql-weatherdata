SELECT DateColumn, MaxTemperature, MinTemperature, Thunderstorm, Rainfall
FROM DailyWeather
WHERE City = 'Miami' AND MaxTemperature >= 93
ORDER BY DateColumn;

SELECT DateColumn, MaxTemperature, MinTemperature, Thunderstorm, Rainfall
FROM DailyWeather
WHERE City = 'Orlando' AND MaxTemperature >= 93
ORDER BY DateColumn;

SELECT DateColumn, MaxTemperature, MinTemperature, Thunderstorm, Rainfall
FROM DailyWeather
WHERE City = 'Tampa' AND MaxTemperature >= 93
ORDER BY DateColumn;

SELECT DateColumn, MaxTemperature, MinTemperature, Thunderstorm, Rainfall
FROM DailyWeather
WHERE City = 'Indianapolis' AND MaxTemperature >= 93
ORDER BY DateColumn;

SELECT DateColumn, MaxTemperature, MinTemperature, Thunderstorm, Rainfall
FROM DailyWeather
WHERE City = 'New Orleans' AND MaxTemperature >= 93
ORDER BY DateColumn;
