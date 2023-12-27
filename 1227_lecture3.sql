/*
참조 무결성
    1) 참조하는 테이블에 존재하는 데이터만 가져올 수 있다.
    2) 참조 무결성이 위배되는 경우를 대비해 추가 옵션을 사용할 수 있다.
        (1) 부모키가 삭제되는 경우 자식키만 삭제한다.
            ON DELETE SET NULL
        (2) 부모키가 삭제되는 경우 자식키를 가진 행 전체를 삭제한다.
            ON DELETE CASCADE
형식
    부모 테이블    - 자식 테이블
    부모 키        - 자식 키
    기본 키/UNIQUE - 외래키
*/

/*
일대다 관계
    1. 2개의 테이블을 관계 짓는 가장 흔한 관계
*/

CREATE TABLE PRODUCT_T (
    PRODUCT_NO NUMBER NOT NULL PRIMARY KEY,
    PRODUCT_NAME VARCHAR2(100 BYTE) NOT NULL,
    PRODUCT_PRICE NUMBER NOT NULL,
    PRODUCT_STOCK NUMBER
);

CREATE TABLE ORDER_T (
    ORDER_NO NUMBER NOT NULL PRIMARY KEY,
    ORDER_ID VARCHAR2(100 BYTE) NOT NULL,
    PRODUCT_NO NUMBER REFERENCES PRODUCT_T(PRODUCT_NO),
    ORDER_DATE DATE NOT NULL
);

/*DROP TABLE ORDER_T;
DROP TABLE PRODUCT_T;*/