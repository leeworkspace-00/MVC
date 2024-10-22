<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String msg = "";
if(session.getAttribute("msg")!=null) {
	msg = (String)session.getAttribute("msg");
	
}
session.setAttribute("msg","");

int midx = 0;
String memberId ="";
String memberName="";
String alt = "";
String logMsg = "";
if (session.getAttribute("midx") != null){ // 로그인이 되었으면

	midx = (int)session.getAttribute("midx");
	memberId = (String)session.getAttribute("memberid");
	memberName = (String)session.getAttribute("memberName");

	alt = memberName+ "님 로그인 되었습니다.";
	logMsg = "<a href ='"+request.getContextPath()+"/member/memberLogout.aws'>로그아웃</a>";

}else {
	alt = "로그인 하세요";
	logMsg = "로그인";
}

%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원가입성공 페이지</title>
<link href="./css/style.css" type="text/css" rel="stylesheet">

<script>
<%
	if (!msg.equals("")){
%> 
	alert('<%=msg%>');
<%
	}
%>
</script>
</head>

<body style = "text-align: center;">

<%=alt %>
<%=logMsg %>
<hr>
	<div class="main">환영합니다.메인페이지입니다.</div>
		<div>
			<a href="<%=request.getContextPath() %>/member/memberJoin.aws">
			회원가입 페이지 가기
			</a>
		</div>
		<div>
			<a href="<%=request.getContextPath() %>/member/memberLogin.aws">
			회원로그인 하기
			</a>
		</div>
		<div>
			<a href="<%=request.getContextPath() %>/member/memberlist.aws">
			회원목록보기
			</a>
		</div>
		<div>
			<a href="<%=request.getContextPath() %>/board/boardList.aws">
			게시판목록보기
			</a>
		</div> 
		<div>
			<a href="<%=request.getContextPath() %>/board/boardWrite.aws">
			글쓰기 페이지 가기 
			</a>
		</div> 
	
		

</body>
</html>
