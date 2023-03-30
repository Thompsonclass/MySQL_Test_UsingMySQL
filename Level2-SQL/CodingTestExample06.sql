# 다음은 어느 의류 쇼핑몰의 온라인 상품 판매 정보를 담은 ONLINE_SALE 테이블 입니다. 
# ONLINE_SALE 테이블은 아래와 같은 구조로 되어있으며 ONLINE_SALE_ID, USER_ID, PRODUCT_ID, SALES_AMOUNT, SALES_DATE는
# 각각 온라인 상품 판매 ID, 회원 ID, 상품 ID, 판매량, 판매일을 나타냅니다.

# 테이블 예시   
ONLINE_SALE_ID	USER_ID	PRODUCT_ID	SALES_AMOUNT	SALES_DATE
1	            1	    3	        2	            2022-02-25
2	            1	    4	        1	            2022-03-01
4	            2	    4	        2	            2022-03-12
3	            1	    3	        3	            2022-03-31
5	            3	    5	        1	            2022-04-03
6	            2	    4	        1	            2022-04-06
2	            1	    4	        2	            2022-05-11

# 결과 예시
USER_ID	PRODUCT_ID
1	    4
1	    3
2	    4

# 문제
# ONLINE_SALE 테이블에서 동일한 회원이 동일한 상품을 재구매한 데이터를 구하여, 
# 재구매한 회원 ID와 재구매한 상품 ID를 출력하는 SQL문을 작성해주세요. 
# 결과는 회원 ID를 기준으로 오름차순 정렬해주시고 회원 ID가 같다면 상품 ID를 기준으로 내림차순 정렬해주세요.

SELECT User_id, Product_id
# 회원 ID와 재구매한 상품 ID를 출력하는 것이 목적

FROM Online_sale
# Online_sale 테이블을 대상으로 진행

GROUP BY User_id, Product_Id
# User_id, Product_Id의 속성을 따로 그룹화

HAVING Count(*) >= 2
# USER_ID, Product_Id가 같은 동일 하다면 튜플의 개수를 구하는 Count이용 2개이상으로 조건문 작성
# HAVINGd은 그룹화한 결과 테이블에 조건을 걸어는 주는 역할

ORDER BY User_id, Product_id DESC
# 결과는 회원 ID를 기준으로 오름차순 정렬해주시고
# 회원 ID가 같다면 상품 ID를 기준으로 내림차순 정렬해주세요.
