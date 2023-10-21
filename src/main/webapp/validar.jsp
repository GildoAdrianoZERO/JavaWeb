<%-- 
    Document   : validar
    Created on : Sep 26, 2023, 7:47:43 PM
    Author     : ficr
--%>
<%@page import="usuario.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro!</h1>
        <%
            String nome = request.getParameter("nome");
            String login = request.getParameter("login");
            String senha = request.getParameter("senha");
            
            Usuario usr = new Usuario();
            usr.setNome(nome);
            usr.setLogin(login);
            usr.setSenha(senha);
            
            GerenciamentoUsuario ge = GerenciamentoUsuario.getInstance();
            ge.adicionarUsuario(usr);
        %>
        <h3> Usuario cadastrado!</h3>
        <a href="cadastro.jsp">cadastrar outro usuario</a>
        <a href="index.jsp">login</a>
    </body>
</html>
