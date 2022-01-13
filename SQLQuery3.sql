use [master]
GO
CREATE DATABASE Voz
GO
USE [Voz]
GO
Create table [Contacts] (
[Id] [int] NOT NULL,
[Email] [nvarchar](256) NOT NULL,
[Company] [nvarchar] (256) NULL,
[LastName] [nvarchar] (256) NULL,
[FirstName] [nvarchar] (256) NULL,
[Phone] [nvarchar] (256) NULL

Constraint PK_Contacts PRIMARY KEY CLUSTERED(
Id asc)
) on [PRIMARY]

GO
Create table [OpportunityStatuses] (
[Id] [int] NOT NULL,
[Name] [nvarchar] NULL

Constraint PK_OpportunityStatuses PRIMARY KEY CLUSTERED(
Id asc)
) on [PRIMARY]

GO
Create table [TaskStatuses] (
[Id] [int] NOT NULL,
[Name] [nvarchar] (256) NULL
Constraint PK_TaskStatuses PRIMARY KEY CLUSTERED(
Id asc)
) on [PRIMARY]

GO
Create table [TaskTypes] (
[Id] [int] NOT NULL,
[Name] [nvarchar] NULL
Constraint PK_TaskTypes PRIMARY KEY CLUSTERED(
Id asc)
) on [PRIMARY]
GO
Create table [Opportunity] (
[Id] [int] NOT NULL,
[Amount] [money] NOT NULL,
[UserId] [nvarchar] (450) NOT NULL,
[ContactId] [int] NOT NULL,
	constraint FK_ContactId FOREIGN KEY(ContactId)
	references Contacts(Id),
[StatusId] [int] NOT NULL,
	constraint FK_StatusId1 FOREIGN KEY (StatusId)
	references OpportunityStatuses(Id),
[CloseDate] [datetime] NOT NULL,
[Name] [nvarchar] (256) NOT NULL
Constraint PK_Opportunity PRIMARY KEY CLUSTERED (
Id asc)
) on [PRIMARY]
GO
Create table [Tasks] (
[Id] [int] NOT NULL,
[Title] [nvarchar](256) NULL,
[OpportunityId] [int]  NOT NULL,
	constraint FK_OpportunityId FOREIGN KEY (OpportunityId)
	references Opportunity(Id),
[DueDate] [datetime] NOT NULL,
[TypeId] [int] NOT NULL,
	constraint FK_TypeId FOREIGN KEY (TypeId)
	references TaskTypes (Id),
[StatusId] [int] NULL
	constraint FK_StatusId FOREIGN KEY (StatusId)
	references TaskStatuses(Id),
Constraint PK_Tasks PRIMARY KEY CLUSTERED(
Id asc)
) on [PRIMARY]

