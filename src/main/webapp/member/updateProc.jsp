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
		String id,pwd;
		int n = 0;
		MemberDAO dao = new MemberDAO();
		
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
		
		n = dao.updateMember(id, pwd);
		
		if(n > 0 )
		{
			response.sendRedirect("/20115/member/memberList.jsp");
		}
		else
		{
			out.print("<script> history.back() </script>");
		}
	
	%>
</body>
</html>