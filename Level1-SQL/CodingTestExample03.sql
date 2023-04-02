# ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
# ANIMAL_INS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는
# 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

#예를 들어 ANIMAL_INS 테이블이 다음과 같다면
ANIMAL_ID	ANIMAL_TYPE	DATETIME	        INTAKE_CONDITION	NAME	    SEX_UPON_INTAKE
A399552	    Dog	        2013-10-14 15:38:00	Normal	            Jack	    Neutered Male
A379998	    Dog	        2013-10-23 11:42:00	Normal	            Disciple	Intact Male
A370852	    Dog	        2013-11-03 15:04:00	Normal	            Katie	    Spayed Female
A403564	    Dog	        2013-11-18 17:03:00	Normal	            Anna	    Spayed Female

# 가장 최근에 들어온 동물은 언제 들어왔는지 조회하는 SQL 문을 작성해주세요.

# 가장 늦게 들어온 동물은 Anna이고, Anna는 2013-11-18 17:03:00에 들어왔습니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.
시간
2013-11-18 17:03:00

-- 코드를 입력하세요
SELECT MAX(Datetime) AS 시간
# Datetime을 통해 가장 최근에 들어온 동물을 확인 가능
# AS 시간을 통해 Datetime이 무언이지 인식

FROM ANIMAL_INS
# Animal_ins 테이블을 대상 지정