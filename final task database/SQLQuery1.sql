create database compelete_database
use  compelete_database

create table patients (
urNum int primary key , idDoctor int ,name varchar(50),address varchar(50),email varchar(50),age int ,phone varchar(50),
foreign key (idDoctor ) REFERENCES Doctor (id) 


)
create table Doctor (
id int primary key ,name varchar(50),email varchar(50) ,phone varchar(50)


)

create table pharmatical ( name varchar(30) primary key ,phone varchar(50),address varchar(50))


create table drug ( trad_name varchar(30) primary key , name_company varchar(30) , drug_stingh varchar(30),
foreign key (name_company ) REFERENCES pharmatical(name)

)
 create table drug_doctor( trad_name varchar(30),id int ,primary key(trad_name,id))

  create table precsription (
  id int primary key ,quntity varchar(30),trad_name varchar(30),urNum int,idDoctor int
  foreign key ( trad_name) REFERENCES drug(trad_name),
  foreign key (urNum ) REFERENCES patients (urNum),
  foreign key (idDoctor) REFERENCES Doctor(id)

  )