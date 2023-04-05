-- 다음은 어느 의류 쇼핑몰에 가입한 회원 정보를 담은 USER_INFO 테이블입니다.
-- USER_INFO 테이블은 아래와 같은 구조로 되어있으며,
-- USER_ID, GENDER, AGE, JOINED는 각각 회원 ID, 성별, 나이, 가입일을 나타냅니다.

-- 예를 들어 USER_INFO 테이블이 다음과 같다면

USER_ID	GENDER	AGE	    JOINED
1	    1	    26	    2021-06-01
2	    NULL	NULL	2021-07-25
3	    1	    NULL	2021-07-30
4	    0	    31	    2021-08-03


-- 문제
-- USER_INFO 테이블에서 나이 정보가 없는 회원이 몇 명인지 출력하는 SQL문을 작성해주세요.
-- 이때 컬럼명은 USERS로 지정해주세요.

-- 코드를 입력하세요
SELECT COUNT(user_id) AS USERS
-- 회원이 몇 명인지 출력, 컬럼명은 USERS로 지정

FROM USER_INFO
-- 릴레이션은 USER_INFO 대상으로 지정

WHERE AGE IS NULL
-- 나이 정보가 없는 회원이기에 AGE에 NULL값이 있는것을 조건을 정의