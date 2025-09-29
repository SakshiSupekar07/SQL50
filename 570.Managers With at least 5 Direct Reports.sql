# Write your MySQL query statement below
select e2.name from Employee e
join Employee e2 on e.managerId=e2.id
group by  e.managerId
having count(*)>=5;
