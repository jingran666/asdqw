**문제 1**

- SQL이란 무엇이며, 어떤 용도로 사용되나요?
  SQL(Structured Query Language)은 관계형 데이터베이스 관리 시스템(RDBMS)에서 데이터를 정의하고 조작하는 데 사용되는 표준 프로그래밍 언어입니다

**문제 2**

- 관계형 데이터베이스(MRDBS)의 대표적인 예시 세 가지를 제시하세요.
  MySQL

PostgreSQL

Oracle Database

**문제 3**

- SQL과 NoSQL 데이터베이스의 주요 차이점 두 가지를 설명하세요.
  데이터 모델,  확장성
  트랜잭션 처리, 데이터 일관성 등의 측면에서도 차이점이 존재합니다.

**문제 4**

- 다음 중 SQL의 기본 명령어에 해당하지 않는 것은 무엇인가요?



**문제 5**

- SELECT 문에서 모든 컬럼을 조회하기 위한 와일드카드는 무엇인가요?

---SELECT 문에서 모든 컬럼을 조회하기 위한 와일드카드는 *입니다.

**문제 6**

- 특정 조건에 맞는 데이터를 조회할 때 사용하는 절은 무엇인가요?

---특정 조건에 맞는 데이터를 조회할 때 사용하는 절은 WHERE 절입니다

**문제 7**

- AND, OR, NOT 연산자의 기능을 간단히 설명하세요.

---AND, OR, NOT 연산자는 SQL에서 조건을 결합하거나 반전시키는 데 사용되는 논리 연산자입니다

**문제 8**

- 다음 SQL 문에서 사용된 연산자는 무엇이며, 어떤 기능을 하나요?

```sql
SELECT * FROM students WHERE name LIKE '김%';
```

---제시된 SQL 문에서 사용된 연산자는 LIKE입니다. LIKE 연산자는 특정 패턴과 일치하는 문자열을 검색하는 데 사용됩니다.

**문제 9**

- 범위를 지정하여 데이터를 조회할 때 사용하는 연산자는 무엇인가요? 예시와 함께 설명하세요.

---
범위를 지정하여 데이터를 조회할 때 사용하는 연산자는 BETWEEN입니다
  SELECT * FROM students WHERE age BETWEEN 18 AND 25;
이 쿼리는 students 테이블에서 age가 18 이상 25 이하인 모든 행을 반환합니다. 즉, 나이가 18, 19, 20, 21, 22, 23, 24, 25인 학생들이 포함됩니다.

**문제 10**

- INSERT 문을 사용하여 여러 행을 한 번에 삽입하는 방법을 예시와 함께 설명하세요.

---INSERT 문을 사용하여 여러 행을 한 번에 삽입하려면 VALUES 절에 여러 개의 값을 괄호로 묶어 나열하면 됩니다. 각 행의 값은 괄호로 감싸고, 여러 행은 쉼표로 구분합니다.
  INSERT INTO students (name, age) 
VALUES 
    ('김철수', 20),
    ('이영희', 22),
    ('박민수', 19);
이 쿼리는 students 테이블에 세 개의 학생 정보를 한 번에 삽입합니다. 삽입된 데이터는 다음과 같습니다

**문제 11**

- UPDATE 문을 사용하여 특정 조건의 데이터를 수정할 때 주의해야 할 점은 무엇인가요?

---조건을 명확히 설정하기 (WHERE 절), WHERE 절을 반드시 사용하여 수정할 행을 정확히 지정해야 합니다. WHERE 절이 없으면 테이블의 모든 행이 수정됩니다.수정 내용을 확인하기, 백업, 트랜잭션 관리

**문제 12**

- DELETE 문과 TRUNCATE 문의 차이점을 설명하세요.

---DELETE 문과 TRUNCATE 문은 모두 SQL에서 데이터를 삭제하는 데 사용되지만, 그 방식과 특징에는 중요한 차이점이 있습니다

**문제 13**

- GROUP BY 절의 기능과 함께 집계 함수를 사용하는 예시를 보여주세요.

---GROUP BY 절은 SQL에서 데이터를 그룹화하여 집계 함수를 사용해 요약된 결과를 얻는 데 사용됩니다. GROUP BY를 사용하면 특정 컬럼의 값에 따라 데이터를 그룹화하고, 각 그룹에 대해 집계 함수를 적용할 수 있습니다. 집계 함수에는 COUNT, SUM, AVG, MAX, MIN 등이 있습니다

**문제 14**

- INNER JOIN과 LEFT JOIN의 차이점을 설명하세요.

---INNER JOIN과 LEFT JOIN은 SQL에서 테이블 간의 관계를 연결하는 데 사용되는 조인 방식입니다
  INNER JOIN: 두 테이블에서 일치하는 행만 반환.
LEFT JOIN: 왼쪽 테이블의 모든 행을 반환하고, 오른쪽 테이블에서 일치하는 값이 없으면 NULL을 반환.
이러한 차이점으로 인해 각 조인은 데이터베이스 쿼리에서 서로 다른 목적을 가지고 사용됩니다

**문제 15**

- 서브쿼리(Subquery)란 무엇이며, 어떤 상황에서 사용되나요?

---**서브쿼리(Subquery)**는 SQL 쿼리 내에 포함된 다른 쿼리로, 주 쿼리의 결과를 필터링하거나 데이터를 계산하는 데 사용됩니다. 서브쿼리는 괄호로 감싸서 표현하며, 주 쿼리의 SELECT, INSERT, UPDATE, 또는 DELETE 문에서 사용할 수 있습니다.

**문제 16**

- 윈도우 함수(Window Function)의 목적과 예시를 설명하세요.

---**윈도우 함수(Window Function)**는 SQL에서 데이터 집계 및 분석을 수행할 때 사용되는 강력한 기능입니다. 일반적인 집계 함수와는 달리, 윈도우 함수는 특정 행을 기준으로 계산을 수행하고, 결과를 원래 데이터 세트의 각 행에 추가합니다. 즉, 데이터를 그룹화하지 않고도 집계 결과를 얻을 수 있습니다.
  SELECT 
    sale_date,
    amount,
    SUM(amount) OVER (ORDER BY sale_date) AS cumulative_sales
FROM 
    sales;


**문제 17**

- 테이블 생성 시 PRIMARY KEY와 FOREIGN KEY의 역할을 각각 설명하세요.

---테이블 생성 시 PRIMARY KEY와 FOREIGN KEY는 데이터베이스의 무결성과 관계를 유지하는 데 중요한 역할을 합니다
  PRIMARY KEY: 테이블 내의 각 행을 고유하게 식별하며, 유일성과 비어 있지 않음을 보장합니다.
FOREIGN KEY: 다른 테이블과의 관계를 설정하고 데이터의 참조 무결성을 유지합니다.
이 두 가지 제약 조건은 데이터베이스의 구조와 무결성을 유지하는 데 필수적인 요소입니다.

**문제 18**

- 트랜잭션(Transaction)이란 무엇이며, 어떤 특징을 가지나요?

---**트랜잭션(Transaction)**은 데이터베이스에서 하나의 작업 단위를 의미하며, 여러 데이터베이스 작업(예: INSERT, UPDATE, DELETE)을 묶어 하나의 작업으로 수행하는 개념입니다. 트랜잭션은 데이터의 일관성과 무결성을 유지하는 데 중요한 역할을 합니다.

**문제 19**

- 사용자 계정을 생성하고 특정 권한을 부여하는 SQL 명령어를 작성하세요.

---사용자 계정을 생성하기 위해 CREATE USER 명령어를 사용합니다.
  CREATE USER 'username'@'host' IDENTIFIED BY 'password';


**문제 20**

- SQL에서 데이터베이스의 성능을 향상시키기 위해 인덱스를 사용하는데, 인덱스의 장점과 단점을 각각 설명하세요.
  장점
검색 성능 향상, 정렬 성능 향상, 중복 데이터 방지, JOIN 성능 향상

단점
쓰기 성능 저하,메모리 사용 증가, 유지 관리 필요, 복잡성 증가
