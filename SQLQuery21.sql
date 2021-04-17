create table Students
(
	ID int identity primary key not null,
	Email varchar(255) not null,
	Pass varchar(255) not null,
	UserName varchar(255) not null,
	SectionId int not null,

)