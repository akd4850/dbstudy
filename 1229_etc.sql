-- 1. 암호화하기(해시 알고리즘)
select  standard_hash('1111', 'SHA256') ,
        standard_hash('1111', 'SHA384'),
        standard_hash('1111', 'SHA512'),
        standard_hash('1111', 'MD5')
from dual;

-- 순위 구하기 동점자의 경우 같은 순위
select emp_no, name, salary, rank() over(order by salary desc), rank() over(order by salary asc) from employee_tb;

-- 행 번호 구하기 동점자 처리 안함
select  emp_no, name, salary,
        row_number() over(order by salary asc),
        row_number() over(order by salary desc)
from employee_tb;

-- decode
select  emp_no,
        name,
        decode(depart,
            21, '영업부',
            22, '인사부',
            23, '총무부',
            24, '기획부') as depart
    from employee_tb;    

-- case when
select  emp_no,
        name,
        case
            when depart = 21 then '영업부'
            when depart = 22 then '인사부'
            when depart = 23 then '총무부'
            when depart = 24 then '기획부'
            else 'Unknown'
        end as depart
    from employee_tb;