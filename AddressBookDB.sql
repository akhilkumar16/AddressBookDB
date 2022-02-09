--UC1:- Ability to create a Address Book Service DB.
--Use SQL Client to create DB and DB Records.
CREATE DATABASE AddressBookDB; 
USE AddressBookDB;
--UC2:- Ability to create a Address Book Table 
CREATE TABLE AddressBook
(
firstName varchar(20) not null,
lastName varChar(20) not null,
address varchar(100) not null,
city varchar(20) not null,
state varchar(20) not null,
zip int not null,
phoneNumber varchar(12),
email varchar(20) not null
);
select * from AddressBook;
-- UC3:- Ability to insert new Contacts to Address Book.
insert into AddressBook (firstName,lastName,address,city,state,zip,phoneNumber,email) 
values('Virat','Kholi','agdfj','banglore','karnataka','123456','123456897','virat@gmail.com');
select * from AddressBook;

insert into AddressBook values('rohit','sharma','hagdfj','mumbai','maharastra','124563','152462358','rohit@gmail.com');
--UC4:- Ability to edit existing contact person using their name.
update AddressBook set zip=2152145 where firstName='rohit';
select * from AddressBook;

update AddressBook set email='sharma@gmail.com' where firstName='rohit';
select * from AddressBook;