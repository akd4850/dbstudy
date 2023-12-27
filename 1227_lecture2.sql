/*
    테이블(table)
    1. 관계형 데이터베이스에서 데이터를 저장하는 객체이다.
    2. 표 형식을 가진다.
    3. 행(Row)와 열(Column)의 집합 형식이다.
*/
/*
    테이블 만들기
    1. 열(Colmn)을 만드는 과정이다.
    2. 테이블 만드는 쿼리문
        CREATE TABLE TABLE_NAME (
            COLMN1 DATA_TYPE1 제약조건1,
            COLMN2 DATA_TYPE2 제약조건2,
            ...
            );
*/
/*
    데이터타입 종류
    1. NUMBER(p, s) : 정밀도가 p, 스케일이 s인 숫자
        1) p : 전체 유효 숫자(글자수)
        2) s : 소수부의 유효 숫자
        0.xx - number(2,2)
        3) 스케일만 생략하면 정수로 표시하는 숫자
        4) 정밀도와 스케일을 생략하면 정수, 실수 모두 표시할 수 있는 숫자
    2. CHAR(size) : 글자수가 최대 size인 고정 문자 타입
        1) 고정 문자 : 글자 수의 변동이 적은 문자(전화번호, 주민번호)
        2) 최대 size : 2000
    3. VARCHAR2(size) : 글자수가 최대 size인 가변 문자 타입
        1) 가변 문자 : 글자 수의 변동이 큰 문자(이름, 주소)
        2) 최대 size : 4000 byte
    4. CLOB : VARCHAR2(size)로 처리할 수 없는 큰 문자
    5. DATE : 날짜/시간(년,월,일,시,분,초)
    6. TIMESTAMP : 정밀한 날짜/시간(년,월,일,시,분,초,마이크로초1/100만)
    
    제약조건 종류
    1. NOT NULL : 필수 입력
    2. UNIQUE : 중복 불가
    3. PRIMARY KEY : 기본키
    4. FOREIGN KEY : 외래키
    5. CHECK : 작성한 조건으로 값의 제한
*/
CREATE TABLE BLOG_T (
    BLOG_NO NUMBER NOT NULL /*UNIQUE*/PRIMARY KEY,
    TITLE VARCHAR2(100 BYTE) NOT NULL,
    EDITOR VARCHAR2(100 BYTE) NOT NULL,
    CONTENTS CLOB /*NULL*/,
    CREATED DATE NOT NULL
);

-- 테이블 삭제
-- DROP TABLE BLOG_T;