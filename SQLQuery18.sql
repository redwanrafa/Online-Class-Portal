create table Teacher
(
	ID int identity primary key not null,
	Name varchar(255) not null,
	Email varchar(255) unique not null,
	Password varchar(255) not null,

)