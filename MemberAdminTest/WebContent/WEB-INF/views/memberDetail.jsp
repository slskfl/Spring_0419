<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 정보 보기</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>아이디</th> 
			<th>비밀번호</th> 
			<th>이름</th> 
			<th>성별</th>
			<th>이메일</th> 
			<th>가입일</th>
			<th>수정</th> 
		</tr>
		<tr> 
			<td>${member.memberId}</td> 
			<td>${member.memberPw }</td> 
			<td>${member.memberName }</td>
				<!-- eq : equals()와 같은 역할
					EL태그에서는 eq와 ==연산자 둘 다 사용 가능 -->
			<c:if test="${member.gender eq 'F' }">
				<td>여</td> 
			</c:if>
			<c:if test="${member.gender eq 'M' }">
				<td>남</td> 
			</c:if>
			<td>${member.memberEmail }</td> 
			<td>${member.joinDate }</td>
			<td>
				<!-- onclick>> confirm의 not은 삭제하지 않겠다는 의미. -->
				<input type="button" value="수정"/>
			</td> 
		</tr>
	</table>
</body>
</html>