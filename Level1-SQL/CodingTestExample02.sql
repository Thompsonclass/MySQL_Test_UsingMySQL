# ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
# ANIMAL_INS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는
# 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

# 예를 들어 ANIMAL_INS 테이블이 다음과 같다면
ANIMAL_ID	ANIMAL_TYPE	DATETIME	        INTAKE_CONDITION	NAME	    SEX_UPON_INTAKE
A368930	    Dog	        2014-06-08 13:20:00	Normal	            NULL	    Spayed Female
A524634	    Dog	        2015-01-02 18:54:00	Normal	            *Belle	    Intact Female
A465637	    Dog	        2017-06-04 08:17:00	Injured	            *Commander	Neutered Male

# 동물 보호소에 들어온 동물 중, 이름이 없는 채로 들어온 동물의 ID를 조회하는 SQL 문을 작성해주세요. 
# 단, ID는 오름차순 정렬되어야 합니다.

-- 코드를 입력하세요
SELECT Animal_id
# 동물의 아이디를 출력하겠습니다.

FROM Animal_ins
# Animal_ins 테이블을 사용하겠습니다.

WHERE Name IS NULL
# Name에 NULL값을 확인 했습니다. 조건을 걸어줍니다.

ORDER BY Animal_id ASC
# id를 오름차순으로 합니다.