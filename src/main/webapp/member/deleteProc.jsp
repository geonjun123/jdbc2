<%@page import="dao.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	MemberDAO dao = new MemberDAO();
	int n = 0;
	String id = request.getParameter("id");
	
	n = dao.deleteMember(id);
	
	if(n > 0)
	{
		response.sendRedirect("/20115/member/memberList.jsp");
	}
	else
	{
		out.print("<script>alert('ȸ������ ������ �����Ͽ����ϴ�');</script>");
	}



%>
</body>
</html>