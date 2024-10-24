DROP TABLE IF EXISTS petPet, petEvent;

CREATE TABLE petPet (
    petname VARCHAR(20) NOT NULL,
    owner VARCHAR(45),
    species VARCHAR(45),
    gender ENUM('M', 'F'),
    birth DATE,
    death DATE DEFAULT NULL,
    PRIMARY KEY (petname)
);

CREATE TABLE petEvent (
    petname VARCHAR(20) NOT NULL,
    eventdate DATE NOT NULL,
    eventtype VARCHAR(15),
    remark VARCHAR(255),
    FOREIGN KEY (petname) REFERENCES petPet(petname),
    PRIMARY KEY (petname, eventdate)
);

