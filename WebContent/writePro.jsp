<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="web.board.BoardDBBean" %>
    <%@ page import="web.board.BoardDataBean" %>
<%
//request.getParameter(주소줄에 데이터 값을 가져오는 함수 )
request.setCharacterEncoding("utf-8");
	String subject = request.getParameter("subject");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String content = request.getParameter("content");
	String password = request.getParameter("password");
	
	System.out.println("subject = " +subject);
	System.out.println("name = " +name);
	System.out.println("email = " +email);
	System.out.println("content = " +content);
	System.out.println("password = " +password);


// 	out.println("sub = "+sub);
// 	out.println(dataBean.toString());
	
	BoardDBBean dbd = BoardDBBean.getInstance();
// 	dbd.insertArticle(dataBean);
	dbd.insertDetailArticle(name,subject,email,content,password);
	
	BoardDataBean dataBean = new BoardDataBean();
	
	dataBean.setContent(content);
	dataBean.setWriter(name);
	dataBean.setEmail(email);
	dataBean.setPasswd(password);
	dataBean.setSubject(subject);
	
	dbd.insertArticle(dataBean);
	out.println("writePro.jsp");
	
	%>
	
	