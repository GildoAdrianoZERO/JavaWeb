<%-- 
    Document   : index
    Created on : Sep 26, 2023, 6:52:24 PM
    Author     : ficr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Pagina Inicial</h1>
        <form action="login.jsp" method="post">
            <label for="login">Login:</label>
            <input type="text" name="login" id="login"> <br>
            <label for="senha">Senha:</label>
            <input type="password" name="senha" id="senha" ><br>
            <%
                String erro = request.getParameter("erro");
                if(erro != null){
                    out.print("<p> Login ou senha errados!</p>");
                }
            %>
            <button type="submit">Entrar</button>
        </form>
    </body>
</html>
