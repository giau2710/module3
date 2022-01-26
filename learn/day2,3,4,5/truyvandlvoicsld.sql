select*from student
where StudentName like 'H%';

select*from class
where month(StartDate)=12;

select*from `subject`
where Credit between 3 and 5;

update student
set ClassId=2
where StudentName='Hung';

update student
set ClassId=2
where StudentId=1;
select*from student;

select S.StudentName, Sub.SubName,M.Mark
from Mark M join Student S on S.StudentId=M.StudentId join  `subject` Sub on M.SubId=Sub.SubId
order by mark desc;

