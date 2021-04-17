create table Sections
(
	ID int identity primary key not null,
	SectionName varchar(255) not null,
	StartDate date not null,
	NumberOfClassed int not null,
	CourseId int not null,

)