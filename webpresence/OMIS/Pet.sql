CREATE TABLE Location (
    LocationID          Int             NOT NULL IDENTITY(1,1),     
    Address             Char(50)        NOT NULL,
    City                Char(25)        NOT NULL,
    State               Char(2)         NOT NULL,
    Zip                 Char(10)        NOT NULL,
    PhoneNumber         Numeric(10)     NOT NULL,
    Email               Char(50)        NOT NULL,
    CONSTRAINT          LocationPK      PRIMARY KEY(LocationID)

    );
    
    CREATE TABLE Department (
	DepartmentID 		Int 			NOT NULL IDENTITY(500,1),
	PhoneNumber 		Char(10) 	    NOT NULL,
	Email 				Char(30)		NOT NULL,
	Name 				Char(35) 		NOT NULL,
	LocationID  		Int          	NOT NULL,
	CONSTRAINT 		  DepartmentPK	   PRIMARY KEY(DepartmentID),
	CONSTRAINT 		  LocationIDFK		FOREIGN KEY(LocationID)
                                    REFERENCES Location(LocationID)
                                    ON UPDATE NO ACTION
                                    ON DELETE NO ACTION
	);
    
    CREATE TABLE Employee (
	EmployeeID 			Int 			    NOT NULL IDENTITY(1,1),
	FirstName			Char(25)	       	NOT NULL,
	LastName			Char(25)	      	NOT NULL, 
	Address     		Char(50)	    	NOT NULL,
	Zip         		Char(10)	      	NOT NULL, 
	City                Char(25)	        NOT NULL,
    State               Char(2)             NOT NULL,
    PhoneNumber         Char(10)            NOT NULL,
    Sex                 Char(1)             NOT NULL,
    DepartmentID        Int                 NOT NULL,
	CONSTRAINT 			EmployeePK     		PRIMARY KEY(EmployeeID),
	CONSTRAINT 			FLnameAK1	       	UNIQUE(LastName, FirstName),	
	CONSTRAINT 			DepartmentFK        FOREIGN KEY(DepartmentID)
                                        REFERENCES Department(DepartmentID)
 							            ON UPDATE NO ACTION
								        ON DELETE NO ACTION
	);
    
     CREATE TABLE Customer (
	CustomerID 			Int 			NOT NULL IDENTITY(1000,1),
	FirstName 			Char(25) 		NOT NULL,
	LastName 			Char(25) 		NOT NULL,
    RewardsNum          Char(50)        NOT NULL,
	Address 			Char(50) 		NOT NULL,
	City 				Char(25) 		NOT NULL,
	State   			Char(2) 		NOT NULL,
	Zip          		Char(5)			NOT NULL, 
	PhoneNumber			Char(10)		NOT NULL,
	Email    			Char(50)		NOT NULL,
	DateofBirth			Date		  	NOT NULL,
    LocationID          Int             NOT NULL,
 	CONSTRAINT 			CustomerPK		PRIMARY KEY(CustomerID),
    CONSTRAINT          LocationFK      FOREIGN KEY (LocationID)
                                    REFERENCES Location (LocationID)
                                    ON UPDATE NO ACTION
                                    ON DELETE NO ACTION
	);
    
    CREATE TABLE Pets (
	PetID	         	Int 			NOT NULL IDENTITY(100,1),
	Name        		Char(30)		NOT NULL, 
	BreedType          	Char(35)       	NOT NULL,
	Sex     			Char(1)	        NOT NULL,
	Allergies			Char(50)		NULL,
	Weight             Numeric(6,2)	    NOT NULL, 
    Vaccinations        Char(40)        NOT NULL,
    CurrentIllness      Char(50)        NULL,
    DateofBirth         Datetime         NULL,
	CustomerID			Int 			NOT NULL,
	LocationID			Int 			NOT NULL,
	CONSTRAINT 			PetPK			PRIMARY KEY(PetID),
	CONSTRAINT 			PCustomerFK		FOREIGN KEY(CustomerID)
								    REFERENCES Customer(CustomerID)
 							        ON UPDATE NO ACTION
								    ON DELETE NO ACTION
	);
    
    CREATE TABLE Visit (
    VID                 Int             NOT NULL IDENTITY(1,1),
    Date                DateTime        NOT NULL,
    Reason              Char(50)        NOT NULL,
    PetID               Int             NOT NULL,
    InsurProvider       Char(50)        NULL,
    CONSTRAINT         VIDPK           Primary Key(VID),
    CONSTRAINT          PetIDVFK       FOREIGN Key (PetID)
                                    REFERENCES Pets (PetID)
                                    ON UPDATE NO ACTION
                                    ON DELETE NO ACTION
    );
    
    
    CREATE TABLE Services (
	ServiceID 			Int 			NOT NULL IDENTITY(1,1),
    ServiceType 	    Char(50)	    NOT NULL,
    PetID               Int             NOT NULL,
 	CONSTRAINT 			ServicesPK		PRIMARY KEY(ServiceID),
	CONSTRAINT 			PetFK	        FOREIGN KEY(PetID)
								        REFERENCES Pets(PetID)
								        ON UPDATE NO ACTION
								        ON DELETE NO ACTION
	);
 
   
  
  
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('49 Sauthoff Terrace', 'Cleveland', 'OH', '44197', '2165270943', 'egosland0@latimes.com');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('8 Surrey Court', 'Frankfort', 'KY', '40618', '5026698410', 'drubenchik1@domainmarket.com');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('0 Grasskamp Parkway', 'Atlanta', 'GA', '30375', '4044296036', 'tmacrury2@bandcamp.com');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('4 Grover Lane', 'Houston', 'TX', '77212', '7136113255', 'arikard3@friendfeed.com');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('5467 Nelson Circle', 'Durham', 'NC', '27710', '9199427565', 'amayger4@hud.gov');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('2413 Dahle Plaza', 'Houston', 'TX', '77065', '8327338655', 'wwidmore5@ow.ly');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('6119 Judy Alley', 'Topeka', 'KS', '66642', '7855991879', 'cleathem6@sakura.ne.jp');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('16634 Loeprich Circle', 'Austin', 'TX', '78744', '3615993546', 'bverni7@mozilla.org');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('69784 Brown Drive', 'Las Vegas', 'NV', '89115', '7022239023', 'dionnidis8@globo.com');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('80603 Commercial Center', 'El Paso', 'TX', '79945', '9152902105', 'rclendening9@123-reg.co.uk');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('82681 Fieldstone Point', 'Vancouver', 'WA', '98687', '3603093757', 'kwiffielda@virginia.edu');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('9 Bunker Hill Alley', 'Richmond', 'VA', '23260', '8044729288', 'vswanb@elpais.com');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('42 Dayton Circle', 'Tucson', 'AZ', '85720', '5206059378', 'jhansedc@examiner.com');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('771 Redwing Street', 'Manchester', 'NH', '03105', '6034964210', 'ablockleyd@java.com');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('39 Morningstar Crossing', 'Huntsville', 'AL', '35810', '2562177466', 'rhannibale@bbc.co.uk');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('7858 Eggendart Park', 'Lubbock', 'TX', '79415', '8068826476', 'rdivef@about.me');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('2 Jenna Lane', 'Charlotte', 'NC', '28247', '7048750114', 'tchorleyg@hostgator.com');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('953 Village Green Center', 'Berkeley', 'CA', '94712', '5108992769', 'feschh@latimes.com');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('91084 Dryden Drive', 'Austin', 'TX', '78715', '5127960384', 'lmyerscoughi@tmall.com');
insert into Location (Address, City, State, Zip, PhoneNumber, Email) values ('604 Knutson Parkway', 'Los Angeles', 'CA', '90035', '3108064888', 'maxonj@cisco.com');




insert into Department (PhoneNumber, Email, Name, LocationID) values ('5511583968', 'tguerri0@surveymonkey.com', 'Human Resources', 18);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('4174598433', 'jcapsey1@kickstarter.com', 'Marketing', 8);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('2731101216', 'eforrestall2@archive.org', 'Legal', 13);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('8959610245', 'lolenichev3@elpais.com', 'Human Resources', 16);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('2348244841', 'nmendus4@illinois.edu', 'Services', 16);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('5653242929', 'kshotter5@xrea.com', 'Engineering', 18);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('7801500615', 'mjacqueme6@cbsnews.com', 'Marketing', 13);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('5757542239', 'ddrayn7@oracle.com', 'Training', 4);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('5263366937', 'sgonin8@cbsnews.com', 'Services', 7);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('2452831150', 'qmcgeffen9@storify.com', 'Support', 5);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('2873291989', 'awastella@google.co.uk', 'Sales', 19);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('8107479528', 'civankovb@woothemes.com', 'Business Development', 2);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('9035170671', 'agodsmarkc@amazon.de', 'Support', 11);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('7961664318', 'tsalland@ucsd.edu', 'Marketing', 20);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('1406731527', 'dgiocannonie@youtube.com', 'Engineering', 5);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('1188477527', 'gbaldif@columbia.edu', 'Engineering', 17);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('3016236124', 'cmirrleesg@marketwatch.com', 'Services', 20);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('4377256960', 'dburnhardh@europa.eu', 'Training', 4);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('1328361999', 'ccaleyi@artisteer.com', 'Sales', 15);
insert into Department (PhoneNumber, Email, Name, LocationID) values ('3083215009', 'kfaslerj@xrea.com', 'Legal', 1);




insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Abelard', 'Crame', '87585 Delaware Court', '44130', 'Cleveland', 'OH', '2167203146', 'M', 500);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Rafe', 'Garbett', '1745 Waubesa Plaza', '33069', 'Pompano Beach', 'FL', '9544677226', 'M', 501);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Salvidor', 'Askie', '0844 Scoville Pass', '91520', 'Burbank', 'CA', '6266873648', 'M', 502);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Arel', 'Balden', '9 Upham Point', '87505', 'Santa Fe', 'NM', '5055631293', 'M', 503);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Cathy', 'Keefe', '26 Derek Street', '46406', 'Gary', 'IN', '2192926447', 'F', 504);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Hillary', 'Kahan', '497 Schurz Crossing', '70179', 'New Orleans', 'LA', '5042542079', 'M', 505);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Miner', 'Jonke', '5809 Banding Crossing', '44705', 'Canton', 'OH', '3306855801', 'M', 506);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Edik', 'Paulusch', '2 Norway Maple Point', '10004', 'New York City', 'NY', '3476330459', 'M', 507);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Bev', 'Wateridge', '5 Northwestern Way', '40233', 'Louisville', 'KY', '5022405499', 'M', 508);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Emmie', 'Snawdon', '60 Jenna Crossing', '55108', 'Saint Paul', 'MN', '6517271357', 'F', 509);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Alford', 'Shergill', '206 Bartelt Plaza', '91606', 'North Hollywood', 'CA', '8185911354', 'M', 510);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Stephana', 'Dreye', '839 Superior Point', '44305', 'Akron', 'OH', '3309060095', 'F', 511);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Ronalda', 'Celloni', '0078 Express Pass', '76011', 'Arlington', 'TX', '6822744919', 'F', 512);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Ailsun', 'Elldred', '00 Waywood Avenue', '31210', 'Macon', 'GA', '4781052366', 'F', 513);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Wilfrid', 'Goodhall', '26413 Southridge Trail', '27105', 'Winston Salem', 'NC', '7046034669', 'M', 614);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Reta', 'Churchouse', '120 Comanche Way', '02305', 'Brockton', 'MA', '5084246968', 'F', 515);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Claudetta', 'Trunby', '66 Village Green Plaza', '72905', 'Fort Smith', 'AR', '4794689312', 'F', 516);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Stormie', 'Parkes', '6711 Spohn Trail', '20022', 'Washington', 'DC', '2021520517', 'F', 517);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Sharity', 'Howley', '4 Fairview Court', '85271', 'Scottsdale', 'AZ', '4806186813', 'F', 518);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Bert', 'Piesing', '8 Vahlen Park', '60657', 'Chicago', 'IL', '3124543525', 'M', 519);
insert into Employee (FirstName, LastName, Address, Zip, City, State, PhoneNumber, Sex, DepartmentID) values ('Gita', 'Churchbus', '190 Bomanchey Way', '02305', 'Crockton', 'PA', '5184247968', 'F', 500);




insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Paula', 'Duggon', 10, '0 Center Parkway', 'Sacramento', 'CA', '95833', '9165948907', 'pduggon0@smugmug.com', '2/7/1957', 5);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Arda', 'Morrad', 16, '698 Clarendon Court', 'Lubbock', 'TX', '79410', '8068008057', 'amorrad1@g.co', '1/17/1947', 18);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Rebekah', 'Swinden', 2, '49863 Eagan Court', 'El Paso', 'TX', '79945', '9154175193', 'rswinden2@state.tx.us', '2/8/1972', 10);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Demetris', 'Folliott', 17, '32 Di Loreto Hill', 'Van Nuys', 'CA', '91406', '8188263050', 'dfolliott3@163.com', '7/4/1973', 16);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Jedediah', 'Scaice', 17, '2 Washington Plaza', 'San Jose', 'CA', '95150', '4086094876', 'jscaice4@indiatimes.com', '6/16/1957', 20);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Nonie', 'Rodriguez', 4, '137 Riverside Park', 'Huntsville', 'TX', '77343', '9361055828', 'nrodriguez5@usgs.gov', '12/7/1947', 11);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Reena', 'Gallelli', 16, '29 Waxwing Trail', 'Durham', 'NC', '27705', '4347302689', 'rgallelli6@cnn.com', '10/24/1988', 12);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Gualterio', 'Goodwins', 15, '71204 Mandrake Plaza', 'Milwaukee', 'WI', '53210', '4146949173', 'ggoodwins7@usda.gov', '3/9/1988', 20);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Emlyn', 'Saunder', 12, '1 Graedel Court', 'Duluth', 'MN', '55811', '2182314076', 'esaunder8@examiner.com', '12/14/1946', 18);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Munroe', 'Hicklingbottom', 6, '98643 Mayer Park', 'Schenectady', 'NY', '12305', '5184514997', 'mhicklingbottom9@nymag.com', '11/25/1959', 7);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Christalle', 'Draycott', 15, '372 Maple Plaza', 'Ventura', 'CA', '93005', '8058815299', 'cdraycotta@bravesites.com', '11/22/1956', 15);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Bentley', 'Parvin', 20, '8333 Northport Parkway', 'Minneapolis', 'MN', '55436', '6124119789', 'bparvinb@discuz.net', '5/23/1954', 8);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Adriane', 'McIlhone', 19, '734 Nancy Plaza', 'Fort Lauderdale', 'FL', '33315', '9542017161', 'amcilhonec@prnewswire.com', '5/10/1997', 15);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Jesse', 'Itzkovwich', 12, '21 Garrison Pass', 'Honolulu', 'HI', '96850', '8089781761', 'jitzkovwichd@yandex.ru', '10/6/1944', 12);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Rona', 'Cornfoot', 14, '83 Merchant Avenue', 'Migrate', 'KY', '41905', '5025253704', 'rcornfoote@diigo.com', '2/1/1988', 4);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Lona', 'Rutgers', 4, '8868 Independence Park', 'Arlington', 'VA', '22205', '7031951335', 'lrutgersf@soundcloud.com', '9/27/1998', 12);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Marabel', 'Myhan', 5, '2649 Sloan Crossing', 'Salt Lake City', 'UT', '84145', '8016060081', 'mmyhang@forbes.com', '1/15/1967', 19);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Judd', 'Glaisner', 7, '83147 Oxford Place', 'San Antonio', 'TX', '78215', '2107022164', 'jglaisnerh@latimes.com', '5/9/1955', 5);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Broderic', 'Siegertsz', 14, '378 Sutherland Junction', 'Akron', 'OH', '44321', '3304886534', 'bsiegertszi@skype.com', '8/3/1972', 6);
insert into Customer (FirstName, LastName, RewardsNum, Address, City, State, Zip, PhoneNumber, Email, DateofBirth, LocationID) values ('Tomasine', 'de Copeman', 12, '81463 Artisan Park', 'Oceanside', 'CA', '92056', '7601391085', 'tdecopemanj@bloomberg.com', '3/26/1969', 19);




insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Beatrix', 'Dog', 'F', 'Parsnips', 18.35, 'rabies', 'rabid', '7/1/2000', 1007, 6);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Adrian', 'Black-eyed beast', 'F', 'Beets', 11.95, 'B3M99', 'Scurvey', '10/2/2010', 1000, 17);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Barclay', 'American alligator', 'M', 'Shellfish', 12.62, 'Small pox','none', '8/31/2000', 1001, 8);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Teodoro', 'House Cat', 'M', 'Karatin', 13.47, 'None', 'Healthy', '6/2/2007', 1002, 19);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Nowell', 'Mongoose, banded', 'M', 'Latex', 2.36, 'None', 'None', '1/9/2009', 1003, 13);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Nealson', 'Dragon, frilled', 'M', 'None', 16.57, 'none', 'Fire Cough', '9/12/2005', 1004, 16);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Ky', 'white-tailed Fox', 'M', 'none', 18.5, 'none', 'none', '4/1/2018', 1005, 13);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Kary', 'Carpet snake', 'F', 'Lake Snails', 16.54, 'none', 'none', '1/18/2018', 1006, 16);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Ara', 'Butterfly (unidentified)', 'F', 'none', 2.47, 'none', 'none', '6/12/2016', 1019, 9);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Graehme', 'Ferruginous hawk', 'M', 'None', 13.75, 'none', 'weak wings', '10/5/2016', 1008, 19);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Hashim', 'Tasmanian devil', 'M', 'Salt', 14.58, 'none', 'none', '5/19/2015', 1009, 14);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Reg', 'Iguana', 'M', 'Humans', 13.73, 'rabies', 'none', '6/10/2000', 1010, 11);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Brody', 'Agile wallaby', 'M', 'artificial leaves', 15.16, 'none', 'Depression', '11/16/2005', 1011, 11);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Mei', 'Waxbill, violet-eared', 'F', 'none', 16.07, 'rabies', 'none', '4/6/2008', 1012, 10);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Renard', 'Alligator, mississippi', 'M', 'none', 2.4, 'none', 'toothache', '3/18/2008', 1013, 1);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Arvy', 'Angelfish', 'M', 'fake flakes', 4.56, 'none', 'Vertigo', '2/28/2011', 1014, 20);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Maurice', 'Burrowing owl', 'M', 'none', 8.72, 'none', 'none', '6/2/2003', 1015, 20);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Nicolea', 'black-tailed tree Creeper', 'F', 'none', 2.95, 'none', 'Bipolar Disorder', '5/31/2016', 1016, 13);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Olia', 'Starling', 'F', 'moss', 11.4, 'none', 'none', '1/17/2003', 1017, 10);
insert into Pets (Name, BreedType, Sex, Allergies, Weight, Vaccinations, CurrentIllness, DateofBirth, CustomerID, LocationID) values ('Krishnah', 'Dog', 'M', 'Grapes', 3.47, 'rabies', 'none', '1/12/2015', 1018, 4);



insert into Visit (Date, Reason, InsurProvider, PetID) values ('9/24/2017', 'Check up', 'AniCare'', 107);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('8/9/2017', 'Check up', GreenCross, 111);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('1/18/2018', 'Vaccines', 'AniCare', 103);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('1/29/2018', 'Amputation', 'WatchCo', 116);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('5/15/2017', 'Check up', 'DigHealthy', 123);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('9/10/2017', 'Check up', 'HealthE', 108);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('10/10/2017', 'Vaccines', 'DigHealthy', 104);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('11/1/2017', 'Dental Exam', 'WatchCo', 109);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('6/24/2017', 'Check Up', 'HealthE', 103);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('2/4/2018', 'Amputation', 'DigHealthy', 107);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('2/25/2018', 'Follow up', 'AniCare', 115);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('8/20/2017', 'Follow up', 'DigHealthy', 110);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('9/5/2017', 'Exam', 'AniCare', 108);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('1/21/2018', 'Xray', 'HealthE', 113);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('2/11/2018', 'CT SCAN', 'HealthE', 115);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('4/16/2017', 'Dental Exam', 'DigHealthy', 108);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('7/6/2017', 'Evaluation', 'Petcare', 112);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('4/7/2018', 'Evaluation', 'HealthE', 102);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('12/9/2017', 'Exam', 'AniCare', 115);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('6/11/2017', 'Xray', 'DigHealthy', 108);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('6/12/2017', 'Rectal Exam', 'DigHealthy', 120);                           insert into Visit (Date, Reason, InsurProvider, PetID) values ('6/13/2017', 'Operation', 'DigHealthy', 121);
insert into Visit (Date, Reason, InsurProvider, PetID) values ('6/11/2017', 'XRay', 'HealthE', 119);


                                                               
insert into Services (ServiceType, PetID) values ('Check up', 114);
insert into Services (ServiceType, PetID) values ('Check up', 119);
insert into Services (ServiceType, PetID) values ('X ray', 109);
insert into Services (ServiceType, PetID) values ('Exam', 115);
insert into Services (ServiceType, PetID) values ('Exam', 108);
insert into Services (ServiceType, PetID) values ('Check up', 108);
insert into Services (ServiceType, PetID) values ('Evaluation', 107);
insert into Services (ServiceType, PetID) values ('Evaluation', 103);
insert into Services (ServiceType, PetID) values ('CT Scan', 103);
insert into Services (ServiceType, PetID) values ('Exam', 104);
insert into Services (ServiceType, PetID) values ('Xray', 118);
insert into Services (ServiceType, PetID) values ('Check up', 102);
insert into Services (ServiceType, PetID) values ('Amputation', 104);
insert into Services (ServiceType, PetID) values ('Vaccines', 107);
insert into Services (ServiceType, PetID) values ('Vaccines', 118);
insert into Services (ServiceType, PetID) values ('Xray', 112);
insert into Services (ServiceType, PetID) values ('Check up', 112);
insert into Services (ServiceType, PetID) values ('check up', 123);
insert into Services (ServiceType, PetID) values ('exam', 113);
insert into Services (ServiceType, PetID) values ('exam', 112);                                                               
       
                                                               
                                    