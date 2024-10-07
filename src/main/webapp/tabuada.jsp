<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tabuada</title>
</head>
<body>
	<h1>Tabuada</h1>
    <hr>
    <br><br>
    <fieldset>
        <form action="tabuada.jsp" method="post">
            <label for="num">Numero: </label>
            <input type="number" name="num" id="num" required="required">
            <br><br>
            <input type="submit" value="Enviar">
        </form>
    </fieldset>
    <%if(request.getParameter("num")!=null){%>
    <fieldset>
    	<%
	    	int num;	
	    	try{
    			num = Integer.parseInt(request.getParameter("num"));
    		}catch(NumberFormatException e){
    			num = 0;
    		}
    	%>
        <table border="1">
            <tr>
                <th>Multiplicação</th>
                <th>Resultado</th>
            </tr>
            <%
                for(int i=0;i<10;i++){
            %>
            <tr>
                <td><% out.print(num+" x "+(i+1)); %></td>
                <td><%= num*(i+1) %></td>
            </tr>
            <%} %>
        </table>
    </fieldset>
	<%} %>
</body>
</html>