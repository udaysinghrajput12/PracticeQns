/* Date Functions */ 

select GETDATE() 

select CONVERT(varchar,getdate(),1) 
select CONVERT(varchar,getdate(),2) 
select CONVERT(varchar,getdate(),3)
select CONVERT(varchar,getdate(),4)
select CONVERT(varchar,getdate(),5) 
select CONVERT(varchar,getdate(),6)   
select CONVERT(varchar,getdate(),7) 
select CONVERT(varchar,getdate(),101) 

/* DatePart() : used to display the specific portion of the given 
date */ 

select DATEPART(dd,getdate()) 
select DATEPART(mm,getdate()) 
select DATEPART(yy,getdate()) 
select DATEPART(hh,getdate()) 
select DATEPART(mi,getdate()) 
select DATEPART(SS,GETDATE()) 
select DATEPART(ms,getdate()) 
select DATEPART(DW,GETDATE()) 
select DATEPART(Dy,GETDATE()) 
select DATEPART(Wk,GETDATE()) 

/* DateName() : Used to display in string format */ 

select DATENAME(dw,getdate()) 
select DATENAME(mm,getdate()) 

/* DateAdd() : used to add no.of days/months/years to 
the given date */ 

select DATEADD(dd,3,getdate())
select DATEADD(yy,3,getdate())
select DATEADD(mm,3,getdate())

/* DateDiff() : Used to display the diff. between two dates */ 

select DATEDIFF(dd,'03/09/1995',getdate()) 
select DATEDIFF(yy,'03/09/1995',getdate()) 
