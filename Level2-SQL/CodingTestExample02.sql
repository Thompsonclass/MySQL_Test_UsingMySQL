# ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
# ANIMAL_INS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는
# 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

ANIMAL_ID	ANIMAL_TYPE	DATETIME	        INTAKE_CONDITION	NAME	    SEX_UPON_INTAKE
A562649	    Dog	        2014-03-20 18:06:00	Sick	            NULL	    Spayed Female
A412626	    Dog	        2016-03-13 11:17:00	Normal	            *Sam	    Neutered Male
A563492	    Dog	        2014-10-24 14:45:00	Normal	            *Sam	    Neutered Male
A513956	    Dog	        2017-06-14 11:54:00	Normal	            *Sweetie	Spayed Female

# 동물 보호소에 동물이 몇 마리 들어왔는지 조회하는 SQL 문을 작성해주세요.
# 동물 보호소에 들어온 동물은 4마리입니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

count
4

SELECT COUNT(Distinct Name) 
# Distinct는 속성에 중복을 제거하는 역할

FROM ANIMAL_INS;
# ANIMAL_INS의 테이블을 대상으로 지정