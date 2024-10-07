<%@page import="java.text.Normalizer"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Palíndromo</title>
</head>
<body>
	<h1>Palíndromo</h1>
	    <hr>
	    <br><br>
	    <fieldset>
	        <form action="palindromo.jsp" method="post">
	            <label for="entrada">Digite uma frase ou palavra:</label>
	            <br>
	            <input type="text" name="entrada" id="entrada" required="required">
	            <br><br>
	            <input type="submit" value="Enviar">
	        </form>
	    </fieldset>
	    <br><br>
	    <%if(request.getParameter("entrada")!=null){%>
	    <fieldset>
	        <%
	        	String entrada = request.getParameter("entrada");
	        	entrada = entrada.replaceAll(" ", "");
	        	//a linha abaixo foi retirada de https://pt.stackoverflow.com/questions/42/como-remover-acentos-e-outros-sinais-gr%C3%A1ficos-de-uma-string-em-java
	        	entrada = Normalizer.normalize(entrada, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "");
	        	String reverse = ""; 
	        	for(int i=entrada.length()-1; i>=0;i--){
	        		reverse+=entrada.charAt(i);
	        	}
	        	String result = "";
	        	if(entrada.equalsIgnoreCase(reverse)){
	        		result="A entrada é palindromo!";
	        	}else{
	        		result="A entrada não é palindrom!";
	        	}
	        %>
	        <p><%out.println(result); %></p>
	    </fieldset>
		<%} %>
</body>
</html>