<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Operação Aritmetica</title>
</head>
<body>
    <h1>Operação entre dois números</h1>
    <hr>
    <br><br>
    <fieldset>
        <form action="opAritmetica.jsp" method="post">
            <label for="n1">A: </label>
            <input type="number" name="n1" id="n1" required="required">
            <br><br>
            <label for="n2">B: </label>
            <input type="number" name="n2" id="n2" required="required">
            <br><br>
            <label for="operacao">Operação: </label>
            <select name="operacao" id="operacao">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="/">/</option>
                <option value="*">*</option>
            </select>
            <br><br>
            <input type="submit" value="Enviar">
        </form>
    </fieldset>
    <br><br>
    <%if(request.getParameter("n1")!=null){%>
    <fieldset>
        <%
        	int n1, n2;
        	try{
        		n1 = Integer.parseInt(request.getParameter("n1"));
        		n2 = Integer.parseInt(request.getParameter("n2"));
        	}catch(NumberFormatException e){
        		n1 = -1;
        		n2 = -1;
        	}
        	String op = request.getParameter("operacao");
        	int res=0;
        	if(op.equals("+")){
        		res = n1+n2;
        	}
        	if(op.equals("-")){
        		res = n1-n2;
        	}
        	if(op.equals("/")){
        		res = n1/n2;
        	}
        	if(op.equals("*")){
        		res = n1*n2;
        	}
        %>
        <p><%out.println(n1+" "+op+" "+n2+" = "+res); %></p>
    </fieldset>
	<%} %>
</body>
</html>