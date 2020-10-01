<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>

<%--
create database rentcarDB04;
USE rentcarDB04;
-- rentcar 테이블 생성
CREATE TABLE rentcar(
	no INT ,
    name VARCHAR(20),
    category INT,
    price INT,
    usepeople INT,
    company VARCHAR(50),
    img VARCHAR(50),
    info VARCHAR(500)
);
-- member 테이블 생성
CREATE TABLE member(
	id VARCHAR(20),
    pw1 VARCHAR(20),
    email VARCHAR(50),
    tel VARCHAR(20),
    hobby VARCHAR(60),
    job VARCHAR(15),
    age VARCHAR(10),
    info VARCHAR(500)
);

CREATE TABLE carreserve(
	reserve_seq INT,
    no INT,
    id VARCHAR(50),
    qty INT,
    dday INT,
    rday VARCHAR(50),
    usein INT,
    usewifi INT,
    usenavi INT,
    useseat INT
);

INSERT INTO member VALUES ('qwer', '1234', 'qwer@naver.com', '010-2343-2444', '스포츠', '개발자', 31, '반갑습니다');
INSERT INTO member VALUES ('asdf', '1234', 'qwer@naver.com', '010-2343-2444', '스포츠', '개발자', 31, '반갑습니다');
select * from member;

-- rentercar 데이터 삽입
INSERT INTO rentcar VALUES (1, '아반테', 1,  2000, 4, '기아', '1.jpg' , '아반테 자동차 입니다.');
INSERT INTO rentcar VALUES (2, 'BMW', 3,  6000, 6, 'BMW', '2.jpg' , 'BMW 자동차 입니다.');
INSERT INTO rentcar VALUES (3, '카니발', 1,  4000, 4, '기아', '3.jpg' , '카니발 자동차 입니다.');
INSERT INTO rentcar VALUES (4, '카렌스', 2,  2500, 4, '기아', '4.jpg' , '카렌스 자동차 입니다.');
INSERT INTO rentcar VALUES (5, '코란도', 1,  3000, 4, '현대', '5.jpg' , '코란도 자동차 입니다.');
INSERT INTO rentcar VALUES (6, '에쿠스', 3,  6000, 6, 'BMW', '6.jpg' , '에쿠스 자동차 입니다.');
INSERT INTO rentcar VALUES (7, '제네시스', 1,  3000, 4, '기아', '7.jpg' , '제네시스 자동차 입니다.');
INSERT INTO rentcar VALUES (8, '그랜져', 1,  2400, 4, '현대', '8.jpg' , '그랜져 자동차 입니다.');
INSERT INTO rentcar VALUES (9, 'k3', 1,  2700, 4, '현대', '9.jpg' , 'k3 자동차 입니다.');
INSERT INTO rentcar VALUES (10, 'k5', 2,  5000, 4, '기아', '10.jpg' , 'k5 자동차 입니다.');
INSERT INTO rentcar VALUES (11, 'k9', 1,  6000, 4, '현대', '11.jpg' , 'k9 자동차 입니다.');
INSERT INTO rentcar VALUES (12, '라세티', 2,  2000, 5, '기아', '12.jpg' , '라세티 자동차 입니다.');
INSERT INTO rentcar VALUES (13, 'lf소나타', 1,  2000, 4, '현대', '13.jpg' , 'lf소나타 자동차 입니다.');
INSERT INTO rentcar VALUES (14, '말리부', 3,  2000, 6, 'BMW', '14.jpg' , '말리부 자동차 입니다.');
INSERT INTO rentcar VALUES (15, '모닝', 1,  23000, 4, '현대', '15.jpg' , '모닝 자동차 입니다.');
INSERT INTO rentcar VALUES (16, '올라도', 3,  5000, 6, 'BMW', '16.jpg' , '올라도 자동차 입니다.');
INSERT INTO rentcar VALUES (17, '레이', 2,  4000, 4, '현대', '17.jpg' , '레이 자동차 입니다.');
INSERT INTO rentcar VALUES (18, 'SM5', 1,  2700, 4, 'BMW', '18.jpg' , 'SM5 자동차 입니다.');

/*DELETE from rentcar where no=2;*/
/*UPDATE rentcar SET no = no -1 WHERE name = 'SM5';*/
-- 최신순으로 3대의 자동차 정보 추출
/*SELECT * FROM rentcar ORDER BY no DESC LIMIT 3;*/
SELECT * FROM rentcar ORDER BY no;



 --%>

<body>
<div align="center">
	<%
		String center = request.getParameter("center");
	
		// 처음 실행시에는 center값이 넘어오지 않기에
		// null처리 해줌
		if(center == null){	
			center = "04_center.jsp";		// defulat center값을 부여
		}
	%>

	<table>
		<%-- top 부분 --%>
		<tr height="120" align="center">
			<td align="center" width="1000">
				<jsp:include page="02_top.jsp" />
			</td>
		</tr>
		<%-- center 부분 --%>
		<tr align="center">
			<td align="center" width="1000">
				<jsp:include page="<%= center %>" />
			</td>
		</tr>
		<%-- bottom 부분 --%>
		<tr height="100" align="center">
			<td align="center" width="1000">
				<jsp:include page="03_bottom.jsp" />
			</td>
		</tr>
	</table>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</body>
</html>