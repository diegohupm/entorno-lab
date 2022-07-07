<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Our Courses">
    <meta name="description" content="">
    <title>Home</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
	<link rel="stylesheet" href="home.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.5, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="home">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
  <%@ include file="../common/header.jspf"%>
    <section class="u-align-center u-clearfix u-image u-shading u-section-1" src="" data-image-width="1620" data-image-height="1080" id="carousel_af90">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-default u-text-1">Nuestros Cursos</h2>
        <div class="u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-align-center u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-1">
                <h4 class="u-custom-font u-font-montserrat u-text u-text-default u-text-2">RIP</h4>
                <p class="u-custom-font u-font-montserrat u-text u-text-3">Curso con el que aprenderás el funcionamiento de una red que utiliza un protocolo de encamiento IGP del tipo vector distancia.</p>
                <a href="<%=request.getContextPath()%>/rip1" class="u-active-white u-btn u-btn-round u-button-style u-hover-white u-palette-3-base u-radius-50 u-btn-1">COMENZAR</a>
              </div>
            </div>
            <div class="u-align-center u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-2">
                <h4 class="u-custom-font u-font-montserrat u-text u-text-default u-text-4">OSPF</h4>
                <p class="u-custom-font u-font-montserrat u-text u-text-5">Curso con el que aprenderás el funcionamiento de una red que utiliza un protocolo de encamiento IGP del tipo estado - enlace</p>
                <a href="<%=request.getContextPath()%>/ospf1" class="u-active-white u-btn u-btn-round u-button-style u-hover-white u-palette-3-base u-radius-50 u-btn-2">Comenzar</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <%@ include file="../common/footer.jspf"%>
  </body>
</html>