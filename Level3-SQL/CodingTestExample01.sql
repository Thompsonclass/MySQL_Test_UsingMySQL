-- ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
-- ANIMAL_INS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는
-- 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

-- ANIMAL_INS

ANIMAL_ID	ANIMAL_TYPE	DATETIME	        INTAKE_CONDITION	NAME	        SEX_UPON_INTAKE
A354597	    Cat	        2014-05-02 12:16:00	Normal	            Ariel	        Spayed Female
A373687	    Dog	        2014-03-20 12:31:00	Normal	            Rosie	        Spayed Female
A412697	    Dog	        2016-01-03 16:25:00	Normal	            Jackie	        Neutered Male
A413789	    Dog	        2016-04-19 13:28:00	Normal	            Benji	        Spayed Female
A414198	    Dog	        2015-01-29 15:01:00	Normal	            Shelly	        Spayed Female
A368930	    Dog	        2014-06-08 13:20:00	Normal		        Spayed Female

ANIMAL_OUTS

ANIMAL_ID	ANIMAL_TYPE	DATETIME	        NAME	SEX_UPON_OUTCOME
A354597	    Cat	        2014-05-02 12:16:00	Ariel	Spayed Female
A373687	    Dog	        2014-03-20 12:31:00	Rosie	Spayed Female
A368930	    Dog	        2014-06-13 15:52:00		    Spayed Female

NAME	            TYPE	    NULLABLE
ANIMAL_ID	        VARCHAR(N)	FALSE
ANIMAL_TYPE	        VARCHAR(N)	FALSE
DATETIME	        DATETIME	FALSE
NAME	            VARCHAR(N)	TRUE
SEX_UPON_OUTCOME	VARCHAR(N)	FALSE


-- 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 보호 시작일 순으로 조회해야 합니다.

-- 코드를 입력하세요
SELECT A.NAME, A.DATETIME
--이름과 보호 시작일이 출력

FROM ANIMAL_INS A LEFT JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
--ANIMAL_OUTS 테이블에는 없는 동물들의 이름과 입양일자를 조회합니다.

WHERE B.ANIMAL_ID IS NULL
--WHERE 절에서는 ANIMAL_OUTS 테이블에 있는 동물을 제외하고,
--ANIMAL_INS 테이블에만 있는 동물을 찾도록 조건을 설정합니다. 

ORDER BY A.DATETIME
--보호 시작일순으로 정렬

LIMIT 3
--최대 3개의 데이터만 조회하도록 LIMIT 절을 추가합니다.