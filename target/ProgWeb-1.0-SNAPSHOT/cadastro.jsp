<%-- 
    Document   : cadastro
    Created on : Sep 26, 2023, 7:43:45 PM
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
        <h1>Cadastro de Usuario</h1>
        <form action="validar.jsp" method="post">
            <label for="nome">Nome:</label>
            <input type="text" name="nome" id="nome"> <br>
            <label for="login">Login:</label>
            <input type="text" name="login" id="login"> <br>
            <label for="senha">Senha:</label>
            <input type="password" name="senha" id="senha" ><br>
            <button type="submit">Cadastrar</button>
        </form>
    </body>
</html>
