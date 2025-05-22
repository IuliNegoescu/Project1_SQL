--Profitul total realizat de fiecare sofer--

SELECT Drivers.First_Name ||' '|| Drivers.Last_Name AS Driver,
        SUM(Deliveries.Profit) AS Total_Profit
FROM Deliveries
JOIN Drivers ON Deliveries.Driver_ID = Drivers.Driver_ID;

--Consumul total de combustibil pe fiecare camion--

SELECT 
    Trucks.Model, 
    SUM(Deliveries.Fuel_Used) AS Total_Consumption
FROM Deliveries
JOIN Trucks ON Deliveries.Truck_ID = Trucks.Truck_ID
GROUP BY Trucks.Model;

--Cursa cu cel mai mare profit--

SELECT 
    Delivery_ID,
    Profit,
    Date
FROM Deliveries
ORDER BY Profit DESC
LIMIT 1;

--Profitul zilnic total ordonat cronologic--

SELECT
    Date, 
    SUM(Profit) AS Daily_Profit
FROM Deliveries
GROUP BY Date
ORDER BY Date;