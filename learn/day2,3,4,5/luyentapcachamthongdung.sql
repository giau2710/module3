select*from `subject`
where (select max(Credit) from `subject`)=Credit;

-- 2
select 
s.SubId,
s.SubName,
s.Credit,
s.`Status`
from `subject` s
join mark m on m.SubId=s.SubId
where (select max(Mark) from `studentmark`)=Mark;

-- 3
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;

SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
order by M.Mark;