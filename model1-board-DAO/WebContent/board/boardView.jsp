<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>boardView</title>
</head>
<body>
<h1>BOARD VIEW<%=request.getParameter("boardNo") %></h1>
<%
if(request.getParameter("boardNo") == null) {
    response.sendRedirect(request.getContextPath()+"/board/boardList.jsp");
} else {
    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
    BoardDao boardDao = new BoardDao();
    Board board = boardDao.selectBoardByKey(boardNo);
%>
	<div>board_no :</div>
	<div><%=board.getBoardNo()%></div>
	<div>board_title :</div>
	<div><%=board.getBoardTitle()%></div>
	<div>board_content :</div>
	<div><%=board.getBoardContent()%></div>
	<div>board_user :</div>
	<div><%=board.getBoardUser()%></div>
	<div>board_date :</div>
	<div><%=board.getBoardUser()%></div>
	<div>
	    <a href="<%=request.getContextPath()%>/board/boardModifyForm.jsp?boardNo=<%=board.getBoardNo()%>">수정</a>
	    <a href="<%=request.getContextPath()%>/board/boardRemoveForm.jsp?boardNo=<%=board.getBoardNo()%>">삭제</a>
	</div>
<%
}
%>
</body>
</html>