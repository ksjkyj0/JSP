<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="web.board.BoardDBBean"%>
<%
	/*
	BoardDBBean dbd = new BoardDBBean();
	out.println(dbd);
	
	BoardDBBean dbd1 = new BoardDBBean();
	out.println(dbd1);
	
	BoardDBBean dbd2 = new BoardDBBean();
	out.println(dbd2);
	
	BoardDBBean gdbd1 =  BoardDBBean.getInstance();
	out.println(gdbd1);
	*/
	BoardDBBean gdbd1 = BoardDBBean.getInstance();
	//     	out.println(gdbd1.doA());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/web.css" />
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<form action="writePro.jsp" id="frm" method="post">

		<!-- <div class ="container" style = "background-color:blue;"> -->
		<div class="container ">
			<div class="row">
				<div class="col">
					<h1>link</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 myborder mycenter">이름</div>
				<div class="col-md-10 myborder">
					<input class="form-control" type="text" name="name" />
				</div>

			</div>
			<div class="row">
				<div class="col-md-2 myborder mycenter">제목</div>
				<div class="col-md-10 myborder">
					<input class="form-control" type="text" name="subject" />
				</div>

			</div>
			<div class="row">
				<div class="col-md-2 myborder mycenter">email</div>
				<div class="col-md-10 myborder">
					<input class="form-control" type="text" name="email" />
				</div>

			</div>
			<div class="row">
				<div class="col-md-2 myborder mycenter">내용</div>
				<div class="col-md-10 myborder">
					<textarea class="form-control" name="content" rows="10"></textarea>
				</div>

			</div>
			<div class="row">
				<div class="col-md-2 myborder mycenter">비밀번호</div>
				<div class="col-md-10 myborder">
					<input class="form-control" type="text" name="password" />
				</div>

			</div>
			<div class="row">
				<div class="col-md-12 mycenter">
					<input type="button" value="글쓰기" id="writeBtn" /> <input
						type="button" value="다시작성" /> <input type="button" value="목록보기" />
				</div>
			</div>

	</form>
</body>
</html>
<script type="text/javascript">
	$("#writeBtn").on("click", function() {
		alert("test");
		$("#frm").submit();

	})
</script>