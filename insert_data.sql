INSERT INTO Trucks(Model, Avg_Consumption,Engine_Capacity,Year)
VALUES ('Volvo FH500', 28.5,12.8, 2018),
        ('Scania R560', 27.5, 13.0, 2021 ),
        ('Mercedes Actros 1851', 24, 12.8, 2025);

INSERT INTO Drivers(First_Name, Last_Name, Experience_Years, License_Type)
VALUES  
    ('Marin', 'Alexandru', 3, 'C+E'),
    ('Popescu', 'Ion', 10, 'C'),
    ('Antofie', 'Andrei', 15, 'C+E');

INSERT INTO Routes(Starting_Point, Destination, Km)
VALUES ('Targoviste', 'Berlin', 1600),
        ('Targoviste', 'Tirana', 983),
        ('Targoviste', 'Milan', 1200);

INSERT INTO Deliveries(Truck_ID, Driver_ID, Route_ID, Date, Profit, Fuel_Used)
VALUES
    (1,1,1, '2024-05-01', 4200, 750),
    (2, 2, 2, '2024-05-02', 3900, 690),
    (3,3,3, '2024-05-03', 4100, 730),
    (1, 2, 2, '2024-05-04', 4000, 730),
    (2, 1, 3, '2024-05-05', 3950, 700);

INSERT INTO FuelPrices(Date, Fuel_Price)
VALUES
    ('2024-05-01', 1.60),
('2024-05-02', 1.62),
('2024-05-03', 1.58),
('2024-05-04', 1.65),
('2024-05-05', 1.61);