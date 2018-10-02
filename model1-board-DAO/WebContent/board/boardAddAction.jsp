<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
String boardPw = request.getParameter("boardPw");
System.out.println("param boardPw:"+boardPw);
String boardTitle = request.getParameter("boardTitle");
System.out.println("param boardTitle:"+boardTitle);
String boardContent = request.getParameter("boardContent");
System.out.println("param boardContent:"+boardContent);
String boardEtc= request.getParameter("boardEtc");
System.out.println("param boardEtc:"+boardEtc);
String boardUser = request.getParameter("boardUser");
System.out.println("param boardUser:"+boardUser);

Board board = new Board();
board.setBoardPw(boardPw);
board.setBoardTitle(boardTitle);
board.setBoardContent(boardContent);
board.setBoardEtc(boardEtc);
board.setBoardUser(boardUser);

BoardDao boardDao = new BoardDao();
int rowCount = boardDao.insertBoard(board);

response.sendRedirect(request.getContextPath()+"/board/boardList.jsp");
%>
</body>
</html>
