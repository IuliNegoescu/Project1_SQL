DROP TABLE IF EXISTS Trucks;

CREATE TABLE Trucks
(
    Truck_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Model TEXT,
    Avg_Consumption INTEGER,
    Engine_Capacity REAL,
    Year INTEGER
);


DROP TABLE IF EXISTS Drivers;

CREATE TABLE Drivers
(
    Driver_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    First_Name TEXT,
    Last_Name TEXT,
    Experience_Years INTEGER,
    Liciense_Type TEXT
);

DROP TABLE IF EXISTS Routes;

CREATE TABLE Routes
(
    Route_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Starting_Point TEXT,
    Destination TEXT,
    Km REAL
);

DROP TABLE IF EXISTS Deliveries;

CREATE TABLE Deliveries
(
    Delivery_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Truck_ID INTEGER,
    Driver_ID INTEGER,
    Route_ID INTEGER,
    Date INTEGER,
    Profit INTEGER,
    Fuel_Used INTEGER, 
    FOREIGN KEY (Truck_ID) REFERENCES Trucks(Truck_ID),
    FOREIGN KEY (Driver_ID) REFERENCES Drivers(Driver_ID),
    FOREIGN KEY (Route_ID) REFERENCES Routes(Route_ID)
);

DROP TABLE IF EXISTS FuelPrices;

CREATE TABLE FuelPrices
(
    Date INTEGER PRIMARY KEY,
    Fuel_Price REAL
);