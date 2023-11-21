<%-- 
    Document   : enchentes
    Created on : 21 de nov. de 2023, 19:43:05
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <title>The Weather News (Enchentes)</title>
        <script
             src="https://kit.fontawesome.com/7f335cf7b9.js"
             crossorigin="anonymous"
        ></script> 
        <script src="https://kit.fontawesome.com/48d0a7227b.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="enchentes.css" />
    </head>
    <body>
          <i class="banner-topo">                   <!--Utilizando a tag I somente para colocar a imagem do banner, nao quis utilizar uma tag P-->
      <img src="topo.png" alt="imagem do topo">
    </i>
    <nav class="navbar">
      <a class="navbar-item active" href="../PaginaPrincipal/index.html">
        <i class="fa fa-home"></i>
        <span>HOME</span> 
      </a>
     <!-- <a class="navbar-item " href="../perfil/perfil.html">
        <i class="fa-solid fa-user"></i>
        <span>Perfil</span>-->
      </a>
      <a class="navbar-item" href="../ENCHENTES/enchentes.jsp">
        <i class="fa-solid fa-house-flood-water"></i>
        <span>Enchentes</span>
      </a>
      <a class="navbar-item" href="../DESMATAMENTO/desmatamento.jsp"> 
        <i class="fa-solid fa-tree"></i>
        <span>Desmatamentos</span>
      </a>
      <a class="navbar-item" href="../queimadas/queimadas.html">
        <i class="fa-solid fa-fire-flame-curved"></i>
        <span>Queimadas</span>
      </a>
      <a class="navbar-item" href="../terremoto/terremoto.html">
        <i class="fa-solid fa-house-crack"></i>
        <span>Terremoto</span>
      </a>
      <a class="navbar-item" href="../secas/secas.html">
        <i class="fa-solid fa-sun-plant-wilt"></i>
        <span>Secas</span>
      </a>
      <a class="navbar-item" href="../loja/loja.html">
        <i class="fa-solid fa-cart-shopping"></i>
        <span>Loja</span>
      </a>
      <!--<a class="navbar-item" href="../suporte/suporte.html">
        <i class="fa-solid fa-headset"></i>
        <span>Suporte</span>
      </a>-->
    </nav>
  
    <!--Começo da parte superior-->
    <section class="img-inicial">
      <div>
        <h1>
          Enchentes
        </h1>

      </div>

    </section>
    <!--Iniciando contextualizando-->

     <section class="container-oquesao">
      <div class="oquesao" >
        <h2>O que são enchentes?</h2>
        <p>É um processo natural ou potencializado pela 
          ação antrópica que acontece por meio do aumento do volume de água 
          nos rios e córregos. Sendo assim, o transbordamento dos cursos de água.  As enchentes são fenômenos naturais recorrentes, 
          principalmente, nos períodos mais chuvosos do ano.
          Portanto, elas têm origem prioritariamente natural, sendo diretamente 
          influenciadas por aspectos ligados à ocupação e transformação do espaço pelo homem.
         
        </p>
        <h2>Causas antrópicas das enchentes.</h2>
        <p>
          A interferência humana sobre os cursos d'água, provocando enchentes e inundações, 
          ocorre das mais diversas formas. Em casos extremos, porém menos comuns, tais situações 
          podem estar relacionadas com rompimentos de diques e barragens, o que pode causar sérios 
          danos à sociedade. Mas, quase sempre, essa questão está ligada ao mau uso do espaço urbano.
          Um problema que parece não ter uma solução rápida é o elevado índice de poluição, causado 
          tanto pela ausência de consciência por parte da população quanto por sistemas ineficientes 
          de coleta de lixo ou de distribuição de lixeiras pela cidade. Além do mais, há problemas causados 
          pela poluição gerada por empresas e outros órgãos. Com isso, ocorre o entupimento dos bueiros, 
          que seriam responsáveis por conter parte da água que eleva o nível dos rios. Além disso, o lixo 
          gerado é levado pelas enxurradas e contribui ainda mais para elevar o volume das águas.
          A ocorrência de enchentes nas cidades também pode estar relacionada com problemas nos sistemas 
          de drenagem. Às vezes, não há bueiros ou outras construções que seriam responsáveis pela contenção 
          ou desvio da água que corre para os rios, provocando a cheia deles. Além disso, somente a construção 
          de bueiros e sistemas de drenagem pode não ser suficiente, isso porque as demais ações antrópicas podem 
          elevar gradualmente a vazão das enxurradas ao longo dos anos, fazendo com que as drenagens existentes não 
          consigam atender toda a demanda."</p>
          <h2 >Notícias:</h2>
      </div>
    </section>
    <section class="container-news">
      <div class="news">
        <ul>
          <li>
            <span class="thumb-news"><img src="news1.png"></span>
            <span class="title-news"><a href="https://g1.globo.com/jornal-nacional/noticia/2022/11/26/chuvas-torrenciais-provocam-deslizamentos-e-enchentes-na-ilha-de-ischia-na-italia.ghtml" target="blanck">Antes e depois: inundações na Nigéria
            </a></span> 
          </li>
          <li>
            <span class="thumb-news"><img src="news2.jpg"></span>
            <span class="title-news"><a href="https://www.cnnbrasil.com.br/internacional/chuvas-provocam-inundacoes-na-nigeria-veja-antes-e-depois-em-imagens-de-satelite/" target="blanck">Chuvas provocam inundações na Nigéria</a></span>
          </li>
          <li>
            <span class="thumb-news"><img src="news3.png"></span>
            <span class="title-news"><a href="https://www.cnnbrasil.com.br/internacional/enchentes-deixam-mortos-na-venezuela-apos-fortes-chuvas/" target="blanck">Enchentes deixam pelo menos 25 mortos</a></span>
          </li>
          <li>
            <span class="thumb-news"><img src="news4.webp"></span>
            <span class="title-news"><a href="https://www.cnnbrasil.com.br/nacional/maior-parte-do-brasil-tem-risco-de-chuva-forte-nesta-terca-feira-29/" target="blanck">Maior parte do Brasil tem risco de chuva</a></span>
          </li>
          
        </ul>
      </div>

    </section>
    </body>
</html>
