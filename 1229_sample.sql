create table sample_t (
    name varchar2(20 byte),
    kor number(3),
    eng number(3),
    math number(3)
);

insert into sample_t values ('A', 100, 100, null);
insert into sample_t values ('B', 100, null, 100);
insert into sample_t values ('C', null, 100, 100);

commit;

select * from sample_t;

select  name, kor, eng, math,
        (kor + eng + math) as "total",  -- null 포함 연산 null
        (kor + eng + math) / 3 as "aver"
from sample_t;

/* 
nvl(expr, value if expr is null)
nvl2(expr, value if expr is not null, value if expr is null)
*/

select  name,
        nvl(kor, 0) as kor,
        nvl(eng, 0) as eng,
        nvl(math, 0) as math,
        (nvl(kor, 0) + nvl(eng, 0) + nvl(math, 0)) as "합계"
from sample_t;

select salary, salary + salary * nvl(commission_pct, 0) as "salary2", commission_pct from employees;