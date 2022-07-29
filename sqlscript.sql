REM   Script: Case use
REM   Using the case function in a practical way

Create table EmployeeDemographics 
(EmployeeID int,  
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50) 
);

Insert All 
into EmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender) values (1003, 'Dwight', 'Shrute', 29, 'Male') 
into EmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender) values (1004, 'Angela', 'Martin', 31, 'Female') 
into EmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender) values (1005, 'Toby', 'McGuir', 32, 'Male') 
into EmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender) values (1006, 'MaryJane', 'Watson', 25, 'Female') 
into EmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender) values (1007, 'Andrew', 'Garfield', 34, 'Male') 
into EmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender) values (1008, 'Gwen', 'Stacy', 29, 'Female') 
into EmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender) values (1009, 'Thor', 'Odinson', 5000, 'Male') 
select * from dual;

Create table EmployeeSalary 
(EmployeeID int,  
JobTitle varchar(50), 
Salary int 
);

Insert All 
into EmployeeSalary (EmployeeID, JobTitle, Salary) values (1003, 'Saleperson', 45000) 
into EmployeeSalary (EmployeeID, JobTitle, Salary) values (1004, 'Accountant', 47000) 
into EmployeeSalary (EmployeeID, JobTitle, Salary) values (1005, 'HR', 50000) 
into EmployeeSalary (EmployeeID, JobTitle, Salary) values (1006, 'Regional Manager', 65000) 
into EmployeeSalary (EmployeeID, JobTitle, Salary) values (1007, 'Supplier Relations', 41000) 
into EmployeeSalary (EmployeeID, JobTitle, Salary) values (1008, 'Scientist', 75000) 
into EmployeeSalary (EmployeeID, JobTitle, Salary) values (1009, 'Security', 40000) 
select * from dual;

select JobTitle, AVG(Salary) 
from EmployeeDemographics 
full outer join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
where JobTitle = 'Salesperson' 
group by JobTitle;

select JobTitle, AVG(Salary) 
from EmployeeDemographics 
full outer join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
where JobTitle = 'Salesperson' 
group by JobTitle;

select *  
from EmployeeDemographics;

select *  
from EmployeeDemographics 
join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

select  EmployeeDemographics.EmployeeID, FirstName, LastName, Age, JobTitle, Salary 
from EmployeeDemographics 
join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

select  EmployeeDemographics.EmployeeID, FirstName, LastName, Age, JobTitle, Salary 
from EmployeeDemographics 
join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
where salary >= 50000;

select  EmployeeDemographics.EmployeeID, FirstName, LastName, Age, JobTitle, Salary 
from EmployeeDemographics 
join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
where FirstName like 'S%';

select  EmployeeDemographics.EmployeeID, FirstName, LastName, Age, JobTitle, Salary 
from EmployeeDemographics 
join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
where LastName like 'S%';

select Age, AVG(Salary) "Average Age" 
from EmployeeDemographics 
join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
group by Age;

select Age, AVG(Salary) "Average Salary" 
from EmployeeDemographics 
join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
group by Age;

select *  
from EmployeeDemographics;

select *  
from EmployeeDemographics;

select * 
from EmployeeSalary;

select EmployeeID, FirstName, Age  
from EmployeeDemographics;

select EmployeeID, JobTitle, Salary 
from EmployeeSalary;

select EmployeeID, FirstName, Age  
from EmployeeDemographics 
union 
select EmployeeID, JobTitle, Salary 
from EmployeeSalary;

select EmployeeID, FirstName, Age  
from EmployeeDemographics 
union 
select EmployeeID, JobTitle, Salary 
from EmployeeSalary 
order by EmployeeID;

select EmployeeID, FirstName, Age  
from EmployeeDemographics;

select EmployeeID, JobTitle, Salary 
from EmployeeSalary 
order by EmployeeID;

select FirstName, LastName, Age  
from EmployeeDemographics;

select EmployeeID, JobTitle, Salary 
from EmployeeSalary 
order by EmployeeID;

select FirstName, LastName, Age  
from EmployeeDemographics 
where Age is not null;

select EmployeeID, JobTitle, Salary 
from EmployeeSalary 
order by EmployeeID;

select FirstName, LastName, Age  
from EmployeeDemographics 
where Age is not null 
order by Age;

select FirstName, LastName, 
case 
    when Age > 30  
    then 'old' 
    else 'young' 
end OldYoung 
from EmployeeDemographics 
where Age is not null 
order by Age;

select FirstName, LastName, 
case 
    when Age > 30  
    then 'old' 
    when Age BETWEEN 27 and 30 
    then 'young' 
    else 'baby' 
end OldYoung 
from EmployeeDemographics 
where Age is not null 
order by Age;

select * 
from EmployeeDemographics 
join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

select FirstName, LastName, JobTitle, Salary 
from EmployeeDemographics 
join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

select FirstName, LastName, JobTitle, Salary, 
case 
    when JobTitle = 'Saleperson' 
    then Salary + (Salary * .1) 
    when JobTitle = 'Accountant' 
    then Salary + (Salary *.05) 
    when JobTitle = 'HR' 
    then Salary + (Salary * .15) 
    else Salary + (Salary * .03) 
end Raises 
from EmployeeDemographics 
join EmployeeSalary 
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

