# DevOpsPorto Database

This project is dedicated to the database development.

## Features

* Unit testing with <a href="https://tsqlt.org/" target="_blank">tSQLt</a>
* Functional testing (talk environment, Azure environment) with <a href="https://tsqlt.org/" target="_blank">Pester</a>

## Deploy

The database changes are deployed at:

* Local SQL Server instance
* Azure SQL Database (using ARM templates)

## Data Model

### Member

* MemberId (PK)
* MemberUserName
* MemberFirstName
* MemberLastName
* MemberRoleId (FK)
* MemberBirthDate

### Meetup

* MeetupId (PK)
* MeetupName
* MeetupDate

### Role

* RoleId (PK)
* RoleName
