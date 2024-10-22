<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="mvc.vo.BoardVo"%>
   <%
   BoardVo bv = (BoardVo)request.getAttribute("bv");			// 강제 형변환으로 양쪽의 타입을 맞춰주자
   %> 

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글내용</title>
</head>
<body>
<h3>글내용</h3>

<hr>
<div style="width:800px;height:400px">
	<div>
	글제목 :  <%=bv.getSubject() %> <a style = "float:right;">(조회수 : <%=bv.getViewcnt() %>)</a>
	</div>
	<hr style="width:800px;">
	<div >
	글내용 : <%=bv.getContents() %>
	<br>
	<a style = "float:right;"> 작성자 : <%=bv.getWriter() %></a>
	<br>
	<a style = "float:right;"> 작성일 : <%=bv.getWriteday() %></a>
	<br>
	<a style = "float:right;"> 첨부파일 : <%=bv.getFilename() %></a>
	<br>
	</div>
	<hr style="width:800px;">

	

</div>


<div style="float: right;">
	<input type="button" name="update" value = "수정" onclick = "location.href='<%=request.getContextPath()%>/board/boardModify.aws?bidx=<%=bv.getBidx()%>'">
	<input type="button" name="delete" value = "삭제">
	<input type="button" name="answer" value = "답변">
	<input type="button" name="list" value = "목록">
	<div>
		<input type="text" id="reply">
		<input type="button" value="댓글쓰기">
	</div>

</div>






<table name="reply" style=" width:800px; text-align: center;">	
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>내용</th>
				<th>날짜</th>
				<th>DEL</th>
			</tr>
		</thead>
		</table>

</body>
</html>