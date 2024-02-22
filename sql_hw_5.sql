//1
select first_name from employees where INSTR(first_name,'b') > 0 OR INSTR(first_name,'B') > 0;
//2
select first_name from employees where LOWER(INSTR(first_name,'a',1,2)) > 0;
//3
select SUBSTR(department_name,1,INSTR(department_name,' ')-1) from departments where INSTR(department_name,' ') > 0;
//4
select SUBSTR(SUBSTR(first_name,2),1, LENGTH(SUBSTR(first_name,2)) -1) from employees;
//5
select first_name, job_id, SUBSTR(job_id,4) from employees where (LENGTH(SUBSTR(job_id,INSTR(job_id,'_') + 1)) > 2) AND (SUBSTR(job_id,4) <> 'CLERK');
//6
select * from employees where SUBSTR(TO_CHAR(hire_date,'YYYYMMDD'),7) = '01' ;
//7
select * from employees where TO_CHAR(hire_date,'YYYY') = '2008' ;
//8
select TO_CHAR(sysdate + 1, 'fm"Tomorrow is "Ddspth" of "Month')  from dual;
//9
select first_name, to_char(hire_date, 'fmDdth" of "Month", "YYYY') from employees;
//10
select first_name, to_char(salary*1.2,'$99,999.99') from employees;
//11
select
    to_char(sysdate, 'DDMMYYYY HH:MI:SS'),
    to_char(sysdate + (1/(24*60*60)), 'DDMMYYY HH:MI:SS') as second,
    to_char(sysdate + (1/(24*60)),'DDMMYYYY HH:MI:SS') as minute,
    to_char(sysdate + (1/24),'DDMMYYYY HH:MI:SS') as hour,
    to_char(sysdate + 1, 'DDMMYYYY HH:MI:SS') as day,
    to_char(add_months(sysdate,1), 'DDMMYYYY HH:MI:SS') as months,
    to_char(add_months(sysdate, 12), 'DDMMYYYY HH:MI:SS') as year
from dual;
//12
select first_name, salary, salary + to_number('$12,345.55', '$99,999.99') from employees;
//13
select first_name, hire_date, months_between(to_date('09, 18:45:00 18 2009', 'MM, HH24:MI:SS DD YYYY'), hire_date) from employees;
//14
select first_name, to_char(salary,'$99,999.99'), to_char((salary + salary*commission_pct),'$99,999.99') from employees;
//15
select first_name, last_name, NVL2(nullif(length(first_name),length(last_name)),'different length','same length') from employees;
//16
select first_name, commission_pct, NVL2(commission_pct,'Yes','No') from employees;
//17
select first_name, COALESCE(commission_pct, manager_id, salary) from employees;
//18
select first_name, salary,
    case
        when salary < 5000 then 'Low Level'
        when salary >=5000 and salary < 10000 then 'Normal Level'
        when salary >=10000 then 'High Level'
    end
from employees;
//19
select country_name, DECODE(region_id,1,'Europe',2,'America',3,'Asia',4,'Africa') from countries;
//20
select country_name, case
    when region_id = 1 then 'Europe'
    when region_id = 2 then 'America'
    when region_id = 3 then 'Asia'
    when region_id = 4 then 'Africa'
    end
from countries;
//21
select first_name, salary, case
    when salary < 10000 and commission_pct is
    null then 'Bad'
    when (salary > 10000 and salary < 15000) or commission_pct is not null then 'Normal'
    when salary >= 15000 then 'Good'
    end
from employees;

