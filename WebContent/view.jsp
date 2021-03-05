<%@page import="content.contentDAO"%>
<%@page import="content.contentDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*{
	text-align: center;
}
html{
	background: rgba(187, 124, 178, .7);
}
a { 
	text-decoration:none;
	color: black;
} 
.table {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border: 1px solid #ccc;
  margin: 20px 10px;
}
.table thead {
  border-right: 1px solid #ccc;
  border-left: 1px solid #ccc;
  background: #891e7a;
}
.table thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #fff;
}
.table tbody th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #fcf1f4;
}
.table td {
color:#fff;
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}
</style>
<body>
<script>
function delContent(ID){
	let comment = confirm("삭제 하시겠습니까?");
	if(comment == true){
		location.href="deleteaction.jsp?contentID="+ID;
	}
	else if(comment=false){
	}
}
</script>

	<% 
	int contentID = 0;
	String param = request.getParameter("contentID");
	if(param != null)
		contentID = Integer.parseInt(param);
	
	if(contentID == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href='board.jsp");
		script.println("</script>");
	}
	
	contentDAO cd = new contentDAO();
	
	//들어올 때마다 조횟수 증가
	contentDTO ct = new contentDAO().getContent(contentID);
	
	//쿠키를 이용한 새로고침 조횟수 증가 막기
	Cookie[] cookies = request.getCookies();
	Cookie viewCookie = null;
	if(cookies !=null && cookies.length>0){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("cookie"+contentID)){
				viewCookie=cookies[i];
			}
		}
	}
	
	if(viewCookie==null){
		Cookie newCookie = new Cookie("cookie"+contentID, "|"+contentID+"|");
		response.addCookie(newCookie);
		cd.addHit(ct.getHit(), contentID);
	}
	
	%>
	
<table class="table" border=1>
<thead>
<tr>
<th>제목</th>
<td><%= ct.getTitle() %></td>
</tr>
<tr>
<th>작성자</th>
<td><%= ct.getContentID() %></td>
</tr>
<tr>
<th>작성일자</th>
<td><%= ct.getRegdate() %></td>
</tr>
<tr>
<th>조회수</th>
<td><%= ct.getHit() %></td>
</tr>
<tr>
<th>내용</th>
<td><%= ct.getContent() %></td>
</tr>
</thead>
</table>
<a href="board.jsp?p=${param.p}&f=${param.f}&${param.q}">목록으로</a>
<a href="update.jsp?contentID=<%= contentID%>">수정</a>
<input type="button" onclick="delContent(${param.contentID})" value="삭제" />
</body>
</html>