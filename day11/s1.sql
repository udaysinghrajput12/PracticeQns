/* String Functions */ 

/* charindex() : Used to display the first occurence
of the given character */ 

select charindex('l','hello') 

select FirstName,CHARINDEX('a',FirstName) 
from Agent

/* Reverse() : used to display name in reverse order *// 

select REVERSE('Prasanna') 

/* Left() : used to display no.of left-side chars */ 

select LEFT('Prasanna',4) 

/* Right() : Used to display no.of right-side chars */ 

select RIGHT('Prasanna',4) 

/* Len() : Used to display the length of given string */ 

select LEN('vamsi') 

select FirstName,LEN(FirstName) 
from Agent

/* Subsring() : Used to display the part of the string */

select SUBSTRING('welcome to sql',2,3) 
-- from 2nd char it prints 3 chars 

/* Replace() : used to display the part of the string */ 

select REPLACE('Java Training','Java','Sql') 