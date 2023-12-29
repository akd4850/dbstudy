select abs(-100) from dual;
select sqrt(25) from dual; -- 제곱근
select power(2,3) from dual;    -- 제곱
select mod(5,2) from dual;      -- 나머지
select ceil(1.1) from dual;     -- 올림
select floor(1.9) from dual;    -- 내림
select  round(123.456), -- 원하는 자리수로 반올림
        round(123.456, 1),
        round(123.456, 2),
        round(123.456, -1),
        round(123.456, -2)
from dual;

-- 절삭
select  trunc(123.456),
        trunc(123.456, 2),
        trunc(123.456, 1),
        trunc(123.456, -1),
        trunc(123.456, -2)
from dual;

select round(-1.9), trunc(-1.9) from dual;  -- round, trunc 차이

select ceil(123.456 * power(10, 3)) / power(10, 3) from dual;