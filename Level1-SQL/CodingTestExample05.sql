# ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. ANIMAL_INS 테이블 구조는 다음과 같으며,
# ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는 
# 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

#예를 들어, ANIMAL_INS 테이블이 다음과 같다면
ANIMAL_ID	ANIMAL_TYPE	DATETIME	        INTAKE_CONDITION	NAME	SEX_UPON_INTAKE
A349996	    Cat	        2018-01-22 14:32:00	Normal	            Sugar	Neutered Male
A350276	    Cat	        2017-08-13 13:50:00	Normal	            Jewel	Spayed Female
A396810	    Dog	        2016-08-22 16:13:00	Injured	            Raven	Spayed Female
A410668	    Cat	        2015-11-19 13:41:00	Normal	            Raven	Spayed Female

# 1. 이름을 사전 순으로 정렬하면 다음과 같으며, 'Jewel', 'Raven', 'Sugar'
# 2. 'Raven'이라는 이름을 가진 개와 고양이가 있으므로, 이 중에서는 보호를 나중에 시작한 개를 먼저 조회합니다.
#     따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

ANIMAL_ID	NAME	DATETIME
A350276	    Jewel	2017-08-13 13:50:00
A396810	    Raven	2016-08-22 16:13:00
A410668	    Raven	2015-11-19 13:41:00
A349996	    Sugar	2018-01-22 14:32:00

# 동물 보호소에 들어온 모든 동물의 아이디와 이름, 보호 시작일을 이름 순으로 조회하는 SQL문을 작성해주세요.
# 단, 이름이 같은 동물 중에서는 보호를 나중에 시작한 동물을 먼저 보여줘야 합니다.

-- 코드를 입력하세요
SELECT Animal_id, Name, Datetime
# 아이디와 이름, 보호 시작일 출력

From Animal_ins
# Animal_ins 테이블 대상 지정

ORDER BY Name, Datetime DESC
# Name을 먼저 선어해주면 이름 중복을 찾고, DateTime을 통해서 보호를 나중에
# 즉, 늦게 보호 시작한 동물을 보여라 으로 내림차순 지정 DESC 사용
