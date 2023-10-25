<%-- 
    Document   : login
    Created on : Sep 26, 2023, 6:54:13 PM
    Author     : ficr
--%>
<%@page import="DTO.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%

            String login = request.getParameter("login");
            String senha = request.getParameter("senha");
            
            Usuario usr = new Usuario();
            usr.setNome(login);
            usr.setLogin(login);
            usr.setSenha(senha);
            
            GerenciamentoUsuario ge = GerenciamentoUsuario.getInstance();
                      
            
            if(ge.buscarUsuario(usr)){
                response.sendRedirect("home.jsp");
            }else{
                response.sendRedirect("index.jsp?erro=true");
            }
        %>
    </body>
</html>
