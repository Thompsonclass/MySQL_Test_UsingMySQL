--ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
--ANIMAL_INS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는
--각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

NAME	            TYPE	    NULLABLE
ANIMAL_ID	        VARCHAR(N)	FALSE
ANIMAL_TYPE	        VARCHAR(N)	FALSE
DATETIME	        DATETIME	FALSE
INTAKE_CONDITION	VARCHAR(N)	FALSE
NAME	            VARCHAR(N)	TRUE
SEX_UPON_INTAKE	    VARCHAR(N)	FALSE

NAME	            TYPE	    NULLABLE
ANIMAL_ID	        VARCHAR(N)	FALSE
ANIMAL_TYPE	        VARCHAR(N)	FALSE
DATETIME	        DATETIME	FALSE
NAME	            VARCHAR(N)	TRUE
SEX_UPON_OUTCOME	VARCHAR(N)	FALSE

--예를 들어, ANIMAL_INS 테이블과 ANIMAL_OUTS 테이블이 다음과 같다면

--ANIMAL_INS
ANIMAL_ID	ANIMAL_TYPE	DATETIME	        INTAKE_CONDITION	NAME	SEX_UPON_INTAKE
A352713	    Cat	        2017-04-13 16:29:00	Normal	            Gia	    Spayed Female
A350375	    Cat	        2017-03-06 15:01:00	Normal	            Meo	    Neutered Male

--ANIMAL_OUTS
ANIMAL_ID	ANIMAL_TYPE	DATETIME	        NAME	SEX_UPON_OUTCOME
A349733	    Dog	        2017-09-27 19:09:00	Allie	Spayed Female
A352713	    Cat	        2017-04-25 12:25:00	Gia	    Spayed Female
A349990	    Cat	        2018-02-02 14:18:00	Spice	Spayed Female

--문제 :
--천재지변으로 인해 일부 데이터가 유실되었습니다. 
--입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회하는 SQL문을 작성해주세요.

--따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.
ANIMAL_ID	NAME
A349733	    Allie
A349990	    Spice

SELECT ANIMAL_OUTS.animal_id, ANIMAL_OUTS.name
--입양을 간 기록을 통해 들어온 기록이 없는 동물의 ID와 이름을 조회

FROM animal_outs LEFT OUTER JOIN animal_ins ON ANIMAL_OUTS.animal_id = ANIMAL_INS.animal_id
--null값이 없는 animal_outs를 left로 join을 하고 조인을 합니다.(이때는 null값이 포함된 테이블)

WHERE ANIMAL_INS.animal_id IS NULL;
--기록이 없는 즉, null값을 대상으로 지정