<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
</head>
<body>
	<h1>Welcome!</h1>
	<hr>
	<fieldset>
		<form action="welcome.jsp">
		<label for="nome">Nome: </label>
		<input type="text" name="nome" id="nome" required="required">
		<br><br>
		<label for="email">Email: </label>
		<input type="text" name="email" id="email" required="required">
		<br><br>
		<label for="age">Ano de Nascimento: </label>
		<input type="number" name="age" id="age" required="required">
		<br><br>
		<input type="submit" value="Enviar">
		</form>
	</fieldset>
	<br><br>
	<%if(request.getParameter("nome")!=null){%>
	<fieldset>
		<p><%
			String nome = request.getParameter("nome");
			String email = request.getParameter("email");
			int age;
			try{
				age = Integer.parseInt(request.getParameter("age"));
			}catch(NumberFormatException e){
				age = -1;
			}
			out.println("Bem-vindo, "+nome+"! Seu e-mail é "+email+" e você tem "+age+" anos.");
			
		%></p>
	</fieldset>
	<%} %>
</body>
</html>