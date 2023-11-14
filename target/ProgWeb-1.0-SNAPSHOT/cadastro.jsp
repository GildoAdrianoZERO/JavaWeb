<%-- 
    Document   : cadastro
    Created on : Sep 26, 2023, 7:43:45 PM
    Author     : ficr
--%>
<%@page import="DTO.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body id="body">

    <main id="container">
      <form id="login_form">
          <!-- FORM HEADER -->
          <div id="form_header">
              <h1>Cadastro</h1>
              <i id="mode_icon" class="fa-solid fa-moon"></i>
          </div>

          <!-- SOCIAL MEDIA LINKS -->
          <div id="social_media">
              <!-- FACEBOOK -->
              <a href="#">
                  <img src="facebook.png" alt="">
              </a>

              <!-- GOOGLE -->
              <a href="#">
                  <img src="google.png" alt="Google logo">
              </a>
              
              <!-- GITHUB -->
              <a href="#">
                  <img src="github.png" alt="">
              </a>
          </div>

          <!-- INPUTS -->
          
          <div id="inputs">
              <!-- NAME -->
              <div class="input-box">
                  <label for="name">
                      Nome Completo
                      <div class="input-field">
                          <i class="fa-solid fa-user"></i>
                          <input type="text" id="name" name="name">
                          
                      </div>
                  </label>
              </div>

              <div class="input-box">
                <label for="name">
                    CPF
                    <div class="input-field">
                        <i class="fa-solid fa-user"></i>
                        <input type="number" id="cpf" name="cpf">
                    </div>
                </label>
            </div>
              
              <!-- EMAIL -->
              <div class="input-box">
                  <label for="email">
                      E-mail
                      <div class="input-field">
                          <i class="fa-solid fa-envelope"></i>
                          <input type="email" id="email" name="email">
                      </div>
                  </label>
              </div>
              
              <!-- PASSWORD -->
              <div class="input-box">
                  <label for="password">
                      Senha
                      <div class="input-field">
                          <i class="fa-solid fa-key"></i>
                          <input type="password" id="password" name="password">
                      </div>
                  </label>
                  
                  <!-- FORGOT PASSWORD -->
                  <div id="forgot_password">
                      <a href="#">
                          Possui login? <a href="../login/login.html"> Entrar.</a>
                      </a>
                  </div>
              </div>
          </div>

          <!-- LOGIN BUTTON -->
          <button type="submit" id="login_button">
              Cadastrar
          </button>
          
          <% 
              
            Usuario objUser = new Usuario();
           
            String nome = request.getParameter("name");
            String cpf = request.getParameter("cpf");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
           
            
            
          %>
      </form>
      <h1>
          <% 
            
            objUser.setNome(nome);
            objUser.setCpf(cpf);
            objUser.setEmail(email);
            objUser.setSenha(password);
        
            out.println(cpf);
            //out.println(email);
            //out.println(senha);
            
          %>
      </h1>
  </main>
       

  <!-- JAVASCRIPT -->
  <script type="text/javascript" src="cadastro.js"></script>
        
   
</div>
    

  </body>
</html>
