select upper('apple'), lower('APPLE'), 
initcap('APPLE') -- 첫문자만 대문자로
from dual;

select name, length(name), lengthb(name)    -- byte 수
from employee_tb;

select 'A' || 'B' || 'C',   -- ORACLE만 사용가능
concat('abc', 'dffd')
from dual;

select * from employee_tb where name like '한' || '%';   -- '한' 변수처리

select name, instr(name, 'a') from employee_tb; -- 문자 위치는 1부터 시작 못 찾 0

select name, substr(name, 2, 2) from employee_tb;

select *
from employee_tb
where name like '구' || '%' || '민' or name like '김' || '%' || '서' or name like concat(concat('이', '%'), '영');

select substr(name, 1, 1) || '*' || substr(name, 3) from employee_tb;

select replace(dept_name, '부', '팀') from department_tb;
select replace(dept_name, '부', '') from department_tb;

select lpad(dept_name, 6, '*') from department_tb;  -- 숫자 안되용
select rpad(dept_name, 6, '*') from department_tb;

select  trim(dept_name), 
        ltrim(dept_name), 
        rtrim(dept_name) 
from department_tb;