create table Sections(

    ID int identity primary key not null,
	SectionName varchar(255) not null,
	StartDate date not null,
	NumberOfClasses int  not null,
	SectionId int not null
   
);