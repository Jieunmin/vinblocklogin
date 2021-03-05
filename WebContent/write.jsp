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
input{
outline: none;
background-color:none;
color:black;
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
  width: 50%;
  height: 100%
  margin: 0 auto;
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
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}
</style>
<body>
<% 
//세션 체크
	String userId = null;
	if (session.getAttribute("userId") != null){
		userId = (String)session.getAttribute("userId");
	}
%>
<form action="writeaction.jsp" method="post">
<table class="table" border=1>
<thead>
<tr>
<td><input type="text" name="title" placeholder="제목"/></td>
</tr>
<tr>
<td><textarea placeholder="내용" name="content"></textarea></td>
</tr>
</thead>
</table>
<input type="submit" value="등록" />
</form>

</body>
</html>