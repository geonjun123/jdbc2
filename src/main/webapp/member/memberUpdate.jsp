<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>ȸ�� ���� ����(member ���̺�)</h1>
	
	<% String id = request.getParameter("id"); %>
	
	<form action="/20115/member/updateProc.jsp" method="post">
		����� ID : <input type="text" name="id" value="<%=id %>" readonly> <br>
		����� PWD : <input type="password" name="pwd"> <br><br>
		<input type="submit" value="����"> &nbsp;
		<input type="reset" value="�ʱ�ȭ">
	</form>
	
	<br><br>
	<a href="/20115/member/index.jsp">ó��ȭ��</a>
</body>
</html>