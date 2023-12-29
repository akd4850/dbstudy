select sum(nvl(kor, 0)) as "합계" from sample_t;
select avg(nvl(kor, 0)) as "평균" from sample_t;
select max(nvl(kor, 0)) as "최대" from sample_t;
select min(nvl(kor, 0)) as "최소" from sample_t;
select count(*) as "학생수" from sample_t;

select sum(salary) as "전체연봉합계" from employees;

select avg( nvl2(commission_pct, salary * commission_pct, salary) ) as "평균" from employees;
select avg(commission_pct * salary) from employees;
select avg(salary) from employees;

select max(hire_date) as "가장먼저입사" from employees;
select min(hire_date) as "가장늦게입사" from employees;
select count(distinct department_id) as "부서개수" from employees;
--select count(*) from departments;