# ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
# ANIMAL_INS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는
# 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

ANIMAL_ID	ANIMAL_TYPE	DATETIME	        INTAKE_CONDITION	NAME	    SEX_UPON_INTAKE
A399552	    Dog	        2013-10-14 15:38:00	Normal	            Jack	    Neutered Male
A379998 	Dog	        2013-10-23 11:42:00	Normal	            Disciple	Intact Male
A370852	    Dog	        2013-11-03 15:04:00	Normal	            Katie	    Spayed Female
A403564 	Dog	        2013-11-18 17:03:00	Normal	            Anna	    Spayed Female

-- 코드를 입력하세요
SELECT MIN(Datetime) AS 시간
# Datetime의 최소값을 구하기 위해 MIN 사용 AS는 해당 Datetime가 어떤 정보인지를 나타냄

FROM Animal_ins
# Animal_ins의 테이블을 대상으로 진행