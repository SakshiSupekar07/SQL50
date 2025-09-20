Select e.name,em.unique_id from Employees e
left join EmployeeUNI em on e.id=em.id;
