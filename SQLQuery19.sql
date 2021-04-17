create table Courses
(
	ID int identity primary key not null,
	Title varchar(255) not null,
	Details varchar(255) ,
	TeacherId int not null,

)