SELECT DateColumn, MaxTemperature, MinTemperature, Thunderstorm, Rainfall
FROM DailyWeather
WHERE City = 'Miami' AND MaxTemperature >= 93
ORDER BY DateColumn;