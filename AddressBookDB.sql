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
--UC5:- Ability to delete a person using person's name.
Delete AddressBook where firstName='rohit';
select * from AddressBook;
--UC6:- Ability to Retrieve Person belonging to a City or State from the Address Book.
select city,state from AddressBook;
select * from AddressBook where state='maharastra' 
select * from AddressBook where city='mumbai' or state='maharastra';
--UC7:- Ability to understand the size of address book by City and State.
select COUNT(city) from AddressBook;

select city, count(*) as AddressCount
from AddressBook group by (city);

select COUNT(state) from AddressBook;

select state, count(*) as AddressCount
from AddressBook group by (state);
--UC8:- Ability to retrieve entries sorted alphabetically by Person’s name for a given city.
select * from AddressBook order by city ASC;  
select * from AddressBook where city = 'mumbai'
order by (firstName);

select * from AddressBook where city = 'banglore'
order by (firstName);
--UC9.2:- Here the type could Family, Friends, Profession, etc.
update AddressBook set Name='ShreeRam';

update AddressBook set Type ='Friend' where firstName='rohit' or firstName='sharma';
select * from AddressBook;
update AddressBook set Type ='Family' where firstName='virat' or firstName='kholi'; 
select * from AddressBook;
--UC10:- Ability to get number of contact persons i.e. count by type.
select count(type) from AddressBook;
select Type, count(*) as TypeCount 
from AddressBook group by Type;