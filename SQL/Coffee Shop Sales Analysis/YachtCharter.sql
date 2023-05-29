CREATE DATABASE YachtCharter;

USE YachtCharter;

CREATE TABLE Customer(CustomerID VARCHAR(50) PRIMARY KEY,
					  CustomerName VARCHAR(255) NOT NULL,
                      Nationality VARCHAR(50),
                      Email VARCHAR(255),
                      PhoneNo VARCHAR(50));

DESCRIBE Customer;
                      
SELECT * FROM Customer;

INSERT INTO Customer(CustomerID, CustomerName, Nationality, Email, PhoneNo) 
VALUES ('D13-R20', 'Jean Harlow', 'German', 'jeanh99@gmail.com', '005866419887654'),
('D17-022', 'Marilyn Monroe', 'French', 'marilyn@hotmail.com', '+88487618356732'),
('D13-101', 'Bette Davis', 'American', 'bette.davis@ulster.ac.uk', '41728003'),
('D13-203', 'Cary Grant', 'British', 'bigcary@yahoo.com', '+44417654321'),
('D13-42 ', 'Humphrey Bogart', 'American', 'bogieh@gmail.com', '07782751839'),
('D13-306', 'William Holden', 'Irish', 'billyho66@yahoo.com', '+38198322843'),
('D14-38 ', 'Katharine Hepburn', 'Irish', 'kath_hep29@hotmail.com', '00447880708090'),
('D13-R93', 'John Wayne', 'South African', 'john.wayne@ulster.ac.uk', '02890112233'),
('D13-51 ', 'Ingrid Bergman', 'Swedish', 'IngridB@hotmail.com', '02890123456');

CREATE TABLE Ports(PortName VARCHAR (50) PRIMARY KEY,
                   PhoneNo VARCHAR(50),
                   Email VARCHAR (255),
                   DockingPlaces INT);
                   
SELECT * FROM Ports;

INSERT INTO Ports(PortName, PhoneNo, Email, DockingPlaces)  
VALUES ('Genoa', '+3984774025', 'genoa667@genoaadmin.co.it', '160'),
('Kusadasi', '+9045204295', 'Kusadasi_harbour@hotmail.co.tr', '96'),
('Barcelona', '+34(0)8892436767', 'harbourmaster@barcelona_marina.com', '211'),
('Marmaris', '+90(0)62228138', '', '69'),
('Perpignan', '+3373600125', '', '88'),
('Paphos', '+35788301000', 'paphosmariana@cyprusports.cy', '47'),
('Monaco', '0037788356302', 'mariana@monacoport.mc', '104'),
('Denia', '+90229453883', 'denia_port@denia_port.com', '31'),
('St Tropez', '', 'master@sttropezmarina.fr', '239'),
('Cartagena', '+34(0)62045005', '', '21'),
('Palma', '+3494955320', '', '74'),
('Marseiles', '+3330026016', 'marseiles_port@france_ports.fr', '92'),
('Malaga', '+3430336117', 'harbour_master@malagaport.com', '198'),
('Heraklion', '', 'herp@heraklioncity.co.gr', '85'),
('Athens', '+3014936640', 'paays7@athensport.gr', '106'),
('Valencia', '+3483884002', '', '74'),
('Izmir', '009062602105', '', '93'),
('Cagliari', '+3963660326', 'ettwu7@gmail.com', '40'),
('Naples', '+3990583686', '', '132'),
('Palermo', '+3922746104', 'ggaft4@visitpalermo.co.it', '57'),
('Bodrum', '+9099264831', '', '89'),
('Lisbon', '0035144700212', '', '79'),
('Magaluf', '', 'maghar@maghar.com', '88'),
('Cadiz', '+34(0)18128403', '', '90'),
('Montpelier', '+33(0)51411947', '', '79'),
('Cannes', '+3366295633', 'cannes.marina@yahoo.com', '148'),
('Tangier', '+21245936724', 'tan778@tangierport.com', '63');


CREATE TABLE Yacht(YachtName VARCHAR (50) PRIMARY KEY,
                   YachtType VARCHAR (50),
                   Model VARCHAR (50),
                   PortName VARCHAR (50),
                   Berth VARCHAR (50),
                   Cost DECIMAL (10,2),
                   IsAvailable BOOLEAN DEFAULT NULL,
                   FOREIGN KEY (PortName)
						REFERENCES Ports(PortName)ON DELETE SET NULL);

SELECT * FROM Yacht;

INSERT INTO Yacht(YachtName, YachtType, Model, PortName, Berth, Cost) 
VALUES ('Serendipity','Monohull','Catalina 350', 'Genoa', '9', '2995.92'),
('Second Wind','Catamaran','MacGregor 26X', 'Kusadasi', '8', '1063.45'),
('Mad Hatter','Monohull','Jeanneau 42 DS', 'Barcelona', '4', '869.45'),
('Serenity','Powered','Ranger 28', 'Genoa', '11', '2294'),
('Windsong','Catamaran','MacGregor 26X', 'Denia', '7', '1352.9'),
('Orion','Powered','Ranger 28', 'Marmaris', '9', '2309.56'),
('Wind Dancer','Monohull','Jeanneau 42 DS', 'Barcelona', '4', '892.4'),
('Escape','Monohull','Beneteau 373', 'Kusadasi', '10', '3016.34');

CREATE TABLE Charter(CharterID VARCHAR(50) PRIMARY KEY,
					 YachtName VARCHAR (50),
                     CustomerID VARCHAR(50),
                     StartDate DATE NOT NULL,
                     Duration INT NOT NULL,
                     FOREIGN KEY (YachtName)
						REFERENCES Yacht(YachtName) ON DELETE SET NULL,
					 FOREIGN KEY (CustomerID)
						REFERENCES Customer(CustomerID) ON DELETE CASCADE);

SELECT * FROM Charter;

INSERT INTO Charter(CharterID, YachtName, CustomerID, StartDate, Duration) 
VALUES ('CH-033 ', 'Serendipity', 'D13-R20', '2018-06-17', '7'),
('CH-032 ', 'Second Wind', 'D17-022', '2018-06-24', '36'),
('CH-027 ', 'Mad Hatter', 'D13-101', '2018-06-25', '7'),
('CH-034 ', 'Serendipity', 'D13-203', '2018-06-30', '18'),
('CH-036 ', 'Serenity', 'D13-42 ', '2018-07-02', '14'),
('CH-028 ', 'Mad Hatter', 'D13-42 ', '2018-07-05', '21'),
('CH-043 ', 'Windsong', 'D13-306', '2018-07-06', '10'),
('CH-030 ', 'Orion', 'D13-R20', '2018-07-11', '14'),
('CH-039 ', 'Wind Dancer', 'D13-101', '2018-07-12', '7'),
('CH-035 ', 'Serendipity', 'D13-R20', '2018-07-22', '10'),
('CH-037 ', 'Serenity', 'D14-38 ', '2018-07-23', '21'),
('CH-044 ', 'Windsong', 'D13-306', '2018-07-29', '35'),
('CH-031 ', 'Orion', 'D13-101', '2018-07-30', '10'),
('CH-029 ', 'Mad Hatter', 'D13-R93', '2018-08-05', '14'),
('CH-040 ', 'Wind Dancer', 'D17-022', '2018-08-10', '10'),
('CH-038 ', 'Serenity', 'D13-203', '2018-08-18', '7'),
('CH-041 ', 'Wind Dancer', 'D13-51 ', '2018-08-23', '7'),
('CH-026 ', 'Escape', 'D13-51 ', '2018-08-25', '14'),
('CH-042 ', 'Wind Dancer', 'D14-38 ', '2018-09-06', '15'),
('CH-045 ', 'Windsong', 'D13-203', '2018-09-06', '21');

CREATE TABLE Charter_Port(VisitID VARCHAR(10) PRIMARY KEY,
						  CharterID VARCHAR(50),
                          PortName VARCHAR(50),
                          ArrivalDate DATE NOT NULL,
                          LengthofStay INT NOT NULL,
                          FOREIGN KEY (CharterID)
							REFERENCES Charter(CharterID) ON DELETE SET NULL,
                          FOREIGN KEY (PortName)
							REFERENCES Ports(PortName) ON DELETE SET NULL);
					
SELECT * FROM Charter_Port;

INSERT INTO Charter_Port(VisitID, CharterID, PortName, ArrivalDate, LengthofStay) 
VALUES ('V101', 'CH-033 ', 'Genoa', '2018-06-17', '0'),
('V102', 'CH-032 ', 'Kusadasi', '2018-06-24', '0'),
('V103', 'CH-027 ', 'Barcelona', '2018-06-25', '0'),
('V104', 'CH-032 ', 'Marmaris', '2018-06-27', '1'),
('V105', 'CH-027 ', 'Perpignan', '2018-06-29', '1'),
('V106', 'CH-034 ', 'Genoa', '2018-06-30', '1'),
('V107', 'CH-036 ', 'Genoa', '2018-07-02', '1'),
('V108', 'CH-032 ', 'Paphos', '2018-07-04', '3'),
('V109', 'CH-034 ', 'Monaco', '2018-07-04', '2'),
('V110', 'CH-028 ', 'Barcelona', '2018-07-05', '1'),
('V111', 'CH-043 ', 'Dénia', '2018-07-06', '0'),
('V112', 'CH-036 ', 'St Tropez', '2018-07-07', '2'),
('V113', 'CH-043 ', 'Cartagena', '2018-07-08', '1'),
('V114', 'CH-028 ', 'Palma', '2018-07-09', '3'),
('V115', 'CH-034 ', 'Marseiles', '2018-07-10', '1'),
('V116', 'CH-030 ', 'Marmaris', '2018-07-11', '0'),
('V117', 'CH-043 ', 'Malaga', '2018-07-11', '3'),
('V118', 'CH-039 ', 'Barcelona', '2018-07-12', '1'),
('V119', 'CH-032 ', 'Heraklion', '2018-07-13', '1'),
('V120', 'CH-036 ', 'Monaco', '2018-07-13', '1'),
('V121', 'CH-034 ', 'St Tropez', '2018-07-15', '1'),
('V122', 'CH-028 ', 'Cartagena', '2018-07-16', '1'),
('V123', 'CH-030 ', 'Paphos', '2018-07-16', '2'),
('V124', 'CH-032 ', 'Athens', '2018-07-19', '3'),
('V125', 'CH-030 ', 'Heraklion', '2018-07-21', '1'),
('V126', 'CH-028 ', 'Valencia', '2018-07-22', '2'),
('V127', 'CH-035 ', 'Genoa', '2018-07-22', '1'),
('V128', 'CH-032 ', 'Izmir', '2018-07-23', '1'),
('V129', 'CH-037 ', 'Genoa', '2018-07-23', '0'),
('V130', 'CH-035 ', 'Cagliari', '2018-07-26', '1'),
('V131', 'CH-037 ', 'Naples', '2018-07-26', '1'),
('V132', 'CH-044 ', 'Dénia', '2018-07-29', '0'),
('V133', 'CH-031 ', 'Marmaris', '2018-07-30', '0'),
('V134', 'CH-035 ', 'Naples', '2018-07-30', '1'),
('V135', 'CH-037 ', 'Palermo', '2018-07-31', '1'),
('V136', 'CH-044 ', 'Malaga', '2018-08-02', '1'),
('V137', 'CH-031 ', 'Heraklion', '2018-08-03', '1'),
('V138', 'CH-029 ', 'Barcelona', '2018-08-05', '0'),
('V139', 'CH-037 ', 'Cagliari', '2018-08-05', '2'),
('V140', 'CH-031 ', 'Bodrum', '2018-08-06', '2'),
('V141', 'CH-044 ', 'Lisbon', '2018-08-07', '4'),
('V142', 'CH-029 ', 'Cartagena', '2018-08-10', '1'),
('V143', 'CH-037 ', 'Naples', '2018-08-10', '1'),
('V144', 'CH-040 ', 'Barcelona', '2018-08-10', '0'),
('V145', 'CH-040 ', 'St Tropez', '2018-08-13', '1'),
('V146', 'CH-029 ', 'Magaluf', '2018-08-15', '1'),
('V147', 'CH-044 ', 'Cadiz', '2018-08-15', '1'),
('V148', 'CH-040 ', 'Montpelier', '2018-08-17', '1'),
('V149', 'CH-038 ', 'Genoa', '2018-08-18', '0'),
('V150', 'CH-038 ', 'Cannes', '2018-08-22', '1'),
('V151', 'CH-044 ', 'Tangier', '2018-08-22', '2'),
('V152', 'CH-041 ', 'Barcelona', '2018-08-23', '0'),
('V153', 'CH-026 ', 'Kusadasi', '2018-08-25', '0'),
('V154', 'CH-041 ', 'Montpelier', '2018-08-27', '1'),
('V155', 'CH-044 ', 'Palma', '2018-08-27', '1'),
('V156', 'CH-026 ', 'Athens', '2018-08-29', '2'),
('V157', 'CH-026 ', 'Izmir', '2018-09-05', '1'),
('V158', 'CH-042 ', 'Barcelona', '2018-09-06', '0'),
('V159', 'CH-045 ', 'Dénia', '2018-09-06', '1'),
('V160', 'CH-042 ', 'Magaluf', '2018-09-08', '1'),
('V161', 'CH-042 ', 'Cartagena', '2018-09-10', '2'),
('V162', 'CH-045 ', 'Barcelona', '2018-09-12', '2'),
('V163', 'CH-042 ', 'Dénia', '2018-09-15', '1'),
('V164', 'CH-045 ', 'Montpelier', '2018-09-17', '2'),
('V165', 'CH-042 ', 'Magaluf', '2018-09-18', '1'),
('V166', 'CH-045 ', 'Magaluf', '2018-09-23', '1');


-- 1.add details of a new customer together with the start date and duration of the charter they have booked, but without specifying the yacht to be used or the ports to be visited.

INSERT INTO Customer(CustomerID, CustomerName, Nationality, Email, PhoneNo)
VALUES('D22-01', 'Cory Fueyo' , 'American', 'cory.f@gmail.com', '07482751100');

SELECT * FROM Customer;

INSERT INTO Charter(CharterID, CustomerID, StartDate, Duration)
VALUES('CH-050', 'D22-01', '2022-07-14', 10);

SELECT * FROM Charter;

-- 2.list the total length of stay, between two given dates of yachts in the fleet in each port.

SELECT C.YachtName, CP.PortName, SUM(CP.LengthofStay) AS TotalLenghtofStay
FROM Charter_Port CP
INNER JOIN Charter C ON C.CharterID = CP.CharterID
WHERE (ArrivalDate BETWEEN '2018-06-01' AND '2018-06-30')
GROUP BY C.YachtName, CP.PortName;

-- 3.get a list of yachts visiting their home port between two given dates, together with the date of arrival and the length of the stay.

SELECT Y.YachtName, CP.PortName AS HomePortVisit , CP.ArrivalDate, CP.LengthofStay
FROM ((Charter C
INNER JOIN Yacht Y ON C.YachtName = Y.YachtName)
INNER JOIN Charter_Port CP ON C.CharterID = CP.CharterID)
WHERE Y.PortName = CP.PortName AND (CP.ArrivalDate BETWEEN '2018-06-01' AND '2018-06-30');

-- 4.list the ports visited by a given customer together with the date of arrival and length of stay, ordered by date

SELECT CU.CustomerName, CP.PortName, CP.ArrivalDate, CP.LengthofStay
FROM ((Charter C
INNER JOIN Customer CU ON C.CustomerID = CU.CustomerID)
INNER JOIN Charter_Port CP ON C.CharterID = CP.CharterID)
WHERE CU.CustomerName = 'Jean Harlow'
ORDER BY CP.ArrivalDate;

-- 5.get a list of yachts that are not available.

CREATE TEMPORARY TABLE YachtNotAvailable
SELECT * FROM Yacht;

SELECT * FROM YachtNotAvailable;

UPDATE YachtNotAvailable
SET IsAvailable = False;

UPDATE YachtNotAvailable
SET IsAvailable = True
WHERE YachtName = 'Escape';

DELETE FROM YachtNotAvailable
WHERE IsAvailable = 1;