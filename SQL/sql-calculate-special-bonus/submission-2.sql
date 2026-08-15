select employee_id ,
Case 
    when employee_id%2!=0 AND name Not like 'M%' then salary
    Else 0
END as bonus
from employees
ORDER BY employee_id;
