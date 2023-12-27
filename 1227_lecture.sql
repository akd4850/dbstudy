-- Sing Line 주석
/*
Multi Line
*/
/*
    SYS 계정
    1. 오라클 관리자 계정이다.
    2. 일반 사용자를 만드는 역할로 국한해서 사용한다.
    3. SYS 계정으로 일반 퀴리 작업을 수행하지 않도록 주의한다.
*/
/*
    새로룬 사용자 생성 방법
    1. 사용자를 만드는 쿼리문을 실핸한다.
        CREATE USER [ACCOUNT_NAME] IDENTIFIED BY [ACCOUNT_PASSWORD];
    2. 사용자에게 권한을 부여한다.
        1) 접속 권한 부여
            GRANT CONNECT TO [ACCOUNT_NAME];
        2) 접속/사용 권한 부여
            GRANT CONNECT, RESOURCE TO [ACCOUNT_NAME];
        3) 관리자 권한 부여
            GRANT DBA TO [ACCOUNT_NAME];
*/
/*
    쿼리문 실행하는 방법
    1. 커서를 두고 CTRL + ENTER : 커서만 있는 쿼리문만 실행된다.
    2. 블록을 잡고 CTRL + ENTER : 블록 잡은 부분의 쿼리문만 실핸된다.
    3. F5 : 전체 스크립트 실행된다.
*/

/*
-- 18 버전부터 계정 앞에 C## 붙여야 한다. 
CREATE USER C##AKD4850 IDENTIFIED BY 1111;
GRANT DBA TO C##AKD4850;
*/

/*
    계정 삭제하기
    1. 데이터베이스 객체 가진 경우
        DROP USER [ACCOUNT_NAME] CASCADE;
    2. 데이터베이스 객체 안가진 경우
        DROP USER [ACCOUNT_NAME];
*/
--DROP USER C##AKD4850;