-- Initial sql script for building the database

-- @Arthor: Germaine Hounakey; David Mirakin; Daniela Contreras

-- NOT RUN YET

-- drop tables
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS ImageLInk;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS CodeBuilding;

--Links building names to building codes
CREATE TABLE CodeBuilding (
    code varchar(5) PRIMARY KEY,
    name varchar(20),
);


--Contains room number and building code for each room/question
CREATE TABLE Room (
    IDRoom integer PRIMARY KEY,
    buildingCode varchar(5) REFERENCES CodeBuilding(code),
    roomNumber varchar(10),
);


--Record for each picture, links to Room. Will either contian filepath to image or contain the image itself
CREATE TABLE ImageLink (
    IDImageLink integer PRIMARY KEY,
    roomID integer REFERENCES Room(IDRoom),
    imagePath varchar(30)
);

--Player from the scoreboard
CREATE TABLE Player (
    IDPlayer integer PRIMARY KEY,
    name varchar(10),
    score integer
);

-- Allow users to select data from the tables.
GRANT SELECT ON CodeBuilding TO PUBLIC;
GRANT SELECT ON Room TO PUBLIC;
GRANT SELECT ON ImageLink TO PUBLIC;
GRANT SELECT ON Player TO PUBLIC;


-- add records
INSERT INTO CodeBuilding VALUES ('SB', 'Science Building');
INSERT INTO CodeBuilding VALUES ('NH', 'North Hall');
INSERT INTO CodeBuilding VALUES ('CFAC', 'Covenent Fine Arts Center');
INSERT INTO CodeBuilding VALUES ('HM', 'Heminga Hall');
INSERT INTO CodeBuilding VALUES ('DC', 'DeVos Communication Center ');
INSERT INTO CodeBuilding VALUES ('SPF', 'Spoelhof Center');
INSERT INTO CodeBuilding VALUES ("CM", 'Commons Anex');
INSERT INTO CodeBuilding VALUES ("SOB", 'Business School');
INSERT INTO CodeBuilding VALUES ("PC", 'Prince Conference');
INSERT INTO CodeBuilding VALUES ("SM", 'Seminary');
INSERT INTO CodeBuilding VALUES ("DH", 'DeVries Hall');