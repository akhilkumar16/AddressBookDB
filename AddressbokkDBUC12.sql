---UC12:- Draw the ER Diagram for Address Book Service DB. 
--        Identifies the Entities ? Entities can be Identified using Normalization Technique.
--        Check each attribute and see if they are Composite or Multi-Valued.

--Create table Addresses
Create table Addresses(Address_id int not null identity(1,1) primary key,City varchar(20) not null,
State varchar(20) not null,Zip varchar(6) not null default '412105');
select * from Addresses; --Display table
--drop table Addresses
--insert value  into Addresses table
insert into Addresses(City,State) values('banglore','karanataka');
insert into Addresses(City,State) values('Pune','Maharashtra');
select * from Addresses;

--Create table ContactDetails
create table ContactDetails(FirstName varchar(50) not null,LastName varchar(50) not null,Address varchar(50) not null, Contact_id int not null identity(1,1)
foreign key references Addresses(Address_id),PhoneNumber varchar(10) not null, Email varchar(50) not null,Primary key(FirstName,LastName));
select * from ContactDetails;
--drop table ContactDetails
--insert value  ContactDetails table
insert into ContactDetails(Contact_id,FirstName,LastName,Address,PhoneNumber,Email)values
('1','rohit','sharma','ajdhg','1245635','rohit@gmail.com'),
('2','virat','kholi','banglore','15425685','vk@gmail.com'),
select * from ContactDetails;
--Create Table AddressBookName
create table AddressBookName(Name_id int not null identity(1,1) primary key, AddressBookName varchar(50) not null unique,
ContactType varchar(50) not null unique);
select * from AddressBookName;

--insert value into AddressBookName table
insert into AddressBookName values('AddressBook1','Friends'),('AddressBook2','Parents');

--Create table ContactTypeMapping
create table ContactTypeMapping(FirstName varchar(50) not null,LastName varchar(50) not null,
Name_id int not null foreign key references AddressBookName(Name_id),
Foreign key(FirstName,LastName) references ContactDetails(FirstName,LastName), unique(FirstName,LastName,Name_id));
select * from ContactTypeMapping;

--insert value  ContactTypeMapping table
insert into ContactTypeMapping (FirstName,LastName,Name_id) values('rohit','sharma','1');
insert into ContactTypeMapping (FirstName,LastName,Name_id) values('virat','kholi','2');
select * from ContactTypeMapping;