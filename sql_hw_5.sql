select first_name from employees where INSTR(first_name,'b') > 0 OR INSTR(first_name,'B') > 0;

select first_name from employees where LOWER(INSTR(first_name,'a',1,2)) > 0;

select SUBSTR(department_name,1,INSTR(department_name,' ')-1) from departments where INSTR(department_name,' ') > 0;

select SUBSTR(SUBSTR(first_name,2),1, LENGTH(SUBSTR(first_name,2)) -1) from employees;