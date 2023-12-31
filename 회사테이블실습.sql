CREATE TABLE DEPARTMENT_TBL (
    DEPT_NO VARCHAR2(15) NOT NULL PRIMARY KEY,
    DEPT_NAME VARCHAR2(30),
    DEPT_LOCATION VARCHAR2(50)
);

CREATE TABLE EMPLOYEE_TBL (
    EMP_NO NUMBER NOT NULL PRIMARY KEY,
    DEPT_NO VARCHAR2(15) REFERENCES DEPARTMENT_TBL(DEPT_NO) ON DELETE SET NULL,
    POSITION CHAR(10),
    NAME VARCHAR2(15),
    HIRE_DATE DATE,
    SALARY NUMBER
);

CREATE TABLE PROJECT_TBL (
    PRJ_NO NUMBER NOT NULL PRIMARY KEY,
    PRJ_NAME VARCHAR2(30),
    BEGIN_DATE DATE,
    END_DATE DATE
);

CREATE TABLE PROCEEDING_TBL (
    PCD_NO NUMBER NOT NULL PRIMARY KEY,
    EMP_NO NUMBER REFERENCES EMPLOYEE_TBL(EMP_NO) ON DELETE CASCADE,
    PRJ_NO NUMBER REFERENCES PROJECT_TBL(PRJ_NO) ON DELETE SET NULL,
    PRJ_STATE NUMBER NOT NULL
);