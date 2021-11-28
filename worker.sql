CREATE TABLE `worker` (
  `num` int NOT NULL AUTO_INCREMENT,
  `id` char(20) NOT NULL,
  `name` char(10) NOT NULL,
  `gender` char(1) NOT NULL,
  `age` int NOT NULL,
  `department` char(20) NOT NULL,
  `phone` char(20) NOT NULL,
  `address` char(100),
  PRIMARY KEY(num)
) ;

INSERT INTO `worker` (`id`, `name`, `gender`, `age`, `department`, `phone`, `address`) VALUES
('chkim', '김창훈', 'M', 28, '총무부', '010-3838-8577', '경기도 용인시'),
('jhjang', '장종훈', 'M', 38, '총무부', '010-3347-7474', '서울시 강동구'),
('jek98', '안달훈', 'M', 25, '인사부', '010-3744-4747', '강원도 정선군'),
('lms2', '이세영', 'F', 48, '경리부', '010-3736-4784', '전라북도 전주시'),
('apple3', '김소영', 'F', 52, '총무부', '010-2845-8978', '전라남도 순천시'),
('sub093', '김수정', 'M', 53, '홍보부', '010-3834-1248', '경상북도 상주시'),
('chulsu', ' 김철수', 'M', 23, '홍보부', '010-1235-3788', '경기도 오산시'),
('yckim', '김영철', 'M', 32, '인사부', '010-2222-3334', '경기도 용인시'),
('yerin99', '김예린', 'F', 25, '총무부', '010-7777-9999', '서울시 강서구'),
('sjjung', '정수정', 'F', 35, '경리부', '010-3636-3563', '충청남도 아산시'),
('tuttle7', '이예린', 'F', 21, '연구소', '010-3756-9823', '경기도 성남시');

-- 요구사항 3: 다음의 요청을 수행하는 SQL 명령을 작성하시오. (10점)

-- ① 20대(20~29세) 사원의 아이디, 이름, 집 주소를 검색
SELECT id, name, address from worker WHERE age >=20 and age < 30;

-- ② 경리부에 근무하고 이름에 '정'이 들어간 사원의 이름, 성별, 근무 부서, 휴대전화 번호를 검색
SELECT name, gender, department, phone FROM worker WHERE name like'%정%' and department='경리부';

-- ③ 경기도에 사는 사원을 나이순으로 오름차순 정렬한 뒤 이름, 집 주소, 성별, 휴대전화 번호를 검색
select name, address, gender, phone from worker where address like '경기도%' order by age;

-- ④ 여성 사원을 나이순으로 내림차순 정렬한 뒤 이름, 성별, 아이디, 휴대전화 번호, 집 주소를 검색
SELECT name, gender, id, phone, address from worker WHERE gender ='F' order by age desc;

-- ⑤ 홍보부에 근무하는 남성 사원의 이름과 휴대전화 번호를 검색
SELECT name, phone from worker WHERE department='홍보부' and gender ='M';

-- ⑥ 용인시에 사는 사원의 이름과 휴대전화 번호를 검색
SELECT name, phone from worker WHERE address LIKE '%용인시';

-- ⑦ '김영철'의 휴대전화 번호를 '010-2222-3333'으로 수정
update worker set phone='010-2222-3333' where name='김영철';

-- ⑧ 아이디가 'chulsu'인 사원의 나이를 '33'으로 수정
update worker set age=33 where id='chulsu';

-- ⑨ 아이디가 'jhjang'인 레코드를 삭제
delete from worker where id='jhjang';

-- ⑩ 경리부에서 근무하는 '이세영'의 레코드를 삭제
delete from worker where department='경리부' and name='이세영';
