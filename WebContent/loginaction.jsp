<%@page import="java.io.PrintWriter"%>
<%@page import="login.loginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="User" class="login.loginDTO" scope="page" />
<jsp:setProperty name="User" property="signId" />
<jsp:setProperty name="User" property="signPass" />
<jsp:setProperty name="User" property="userId" />
<jsp:setProperty name="User" property="userPass" />
<jsp:setProperty name="User" property="userName" />
<jsp:setProperty name="User" property="userEmail" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//현재 세션
	String userId = null;
	if(session.getAttribute("userId")!=null){
		userId = (String)session.getAttribute("userId");
	}
	
	if(userId !=null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인 되어있습니다.')");
		script.println("location.href='index.html'");
		script.println("</script>");
	}

	String cmd = request.getParameter("cmd");
	System.out.println("cmd : " + cmd);

	switch (cmd) {
	case "로그인":
		loginDAO ud = new loginDAO();
		int result = ud.login(User.getUserId(), User.getUserPass());
		System.out.println("result : " + result);
		if (result == 1) {
			//로그인 성공
			PrintWriter script = response.getWriter();
			session.setAttribute("userId", User.getUserId());
			script.println("<script>");
			script.println("location.href ='logout.jsp'");
			script.println("</script>");
		} else if (result == 0) {
			//비밀번호 오류
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀렸습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else if (result == -1) {
			//아이디 X
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else if (result == -2) {
			//디비 오류
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB 오류입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		break;

	case "회원가입":
		System.out.println("id : " + User.getSignId());
		System.out.println("pass : " + User.getSignPass());
		System.out.println("email : " + User.getUserEmail());
		System.out.println("name : " + User.getUserName());

		if (User.getSignId() == null || User.getSignPass() == null || User.getUserEmail() == null
		|| User.getUserName() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력되지 않은 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			loginDAO dao = new loginDAO();
			int count = dao.join(User);
			System.out.println(count);
			if (count == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 사용중인 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
			} else {
				PrintWriter script = response.getWriter();
				session.setAttribute("userId", User.getUserId());
				script.println("<script>");
				script.println("alert('회원가입 되었습니다.')");
				script.println("location.href ='login.jsp'");
				script.println("</script>");
			}
		}
		break;
	}
	%>
</body>
</html>