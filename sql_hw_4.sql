select first_name as "Имя" from employees where length(first_name) > 10;

select first_name as "Имя", last_name as "Фамилия", salary as "Зарплата" from employees where mod(salary, 1000) = 0;

select phone_number, SUBSTR(phone_number,0, 3) from employees where phone_number like '___.___.____';

select first_name from employees where (LENGTH(first_name) > 5) AND ( first_name like '%m' );

select SYSDATE, NEXT_DAY(SYSDATE, 'Пятница') from dual;

select first_name, hire_date, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date))  from employees where MONTHS_BETWEEN(SYSDATE, hire_date) > 150;

select REPLACE(phone_number, '.','-') from employees;

select UPPER(first_name), LOWER(email), INITCAP(job_id) from employees;

select CONCAT(first_name, salary) from employees;

select hire_date, TRUNC(hire_date, 'MONTH'), TRUNC(hire_date, 'YEAR') from employees;

select RPAD(first_name, 10, '$'), LPAD(last_name, 15, '!') from employees;

select first_name, INSTR(first_name, 'a', 1, 2) from employees;

select '!!!HELLO!! MY FRIEND!!!!!!!!', TRIM(BOTH '!' FROM '!!!HELLO!! MY FRIEND!!!!!!!!') from dual;

select salary, salary * 3.1415, ROUND(salary * 3.1415), TRUNC(salary * 3.1415/1000) from employees;

select hire_date, ADD_MONTHS(hire_date, 6), LAST_DAY(hire_date) from employees;
