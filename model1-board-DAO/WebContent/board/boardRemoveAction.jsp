<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD REMOVE ACTION</title>
</head>
<body>
<%
if(request.getParameter("boardNo") == null || request.getParameter("boardPw") == null) {
    response.sendRedirect(request.getContextPath()+"/board/boardList.jsp");
} else {
    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
    System.out.println("boardNo :"+boardNo);
    String boardPw = request.getParameter("boardPw");
    System.out.println("boardPw :"+boardPw);
	Board board = new Board();
	board.setBoardNo(boardNo);
	board.setBoardPw(boardPw);
	
    BoardDao boardDao = new BoardDao();
    
    if(boardDao.deleteBoard(board)==1){
        response.sendRedirect(request.getContextPath()+"/board/boardList.jsp");
	} else {
        response.sendRedirect(request.getContextPath()+"/board/boardRemoveForm.jsp?boardNo="+boardNo);
	}
}
%>
</body>
</html>
