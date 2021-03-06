<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>Acceso</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
	<link rel="stylesheet" href="acceso.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.5, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Acceso">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><header class="u-clearfix u-header u-header" id="sec-422f"><div class="u-clearfix u-sheet u-sheet-1">
        <a target="_blank" href="https://www.upm.es/" class="u-image u-logo u-image-1" data-image-width="150" data-image-height="116" title="logo institucional">
          <img src="images/institucional.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1">
            <li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="<%=request.getContextPath()%>/login" style="padding: 10px 20px;">Acceso</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/login">Acceso</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-clearfix u-image u-shading u-section-1" id="sec-976e" data-image-width="1600" data-image-height="560">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-form u-login-control u-form-1">
          <form action="<%=request.getContextPath()%>/login" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-38 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 30px;">
            <div class="u-form-group u-form-name">
              <label for="username-a30d" class="u-label">Correo</label>
              <input type="text" placeholder="Ingresa tu correo" id="correo" name="correo" class="u-border-2 u-border-white u-input u-input-rectangle u-input-1" required="" maxlength="100">
            </div>
            <div class="u-form-group u-form-password">
              <label for="password-a30d" class="u-label">Contrase??a</label>
              <input type="password" placeholder="Ingresa tu contrase??a" id="contrasena" name="contrasena" class="u-border-2 u-border-white u-input u-input-rectangle u-input-2" required="" maxlength="80">
            </div>
            <!--<div class="u-form-checkbox u-form-group">
              <input type="checkbox" id="checkbox-a30d" name="remember" value="On">
              <label for="checkbox-a30d" class="u-label">Recu??rdame</label>
            </div>-->
            <div class="u-align-left u-form-group u-form-submit">
              <a href="#" class="u-border-none u-btn u-btn-submit u-button-style u-palette-3-base u-btn-1">Acceder<br>
              </a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
        </div>
        <!--<a href="https://nicepage.com/k/birthday-html-templates" class="u-border-active-palette-2-base u-border-hover-palette-1-base u-border-none u-btn u-button-style u-login-control u-login-forgot-password u-none u-text-body-alt-color u-text-hover-palette-3-base u-btn-2">??Quieres recuperar tu contrase??a?</a>
        <a href="https://nicepage.one" class="u-border-active-palette-2-base u-border-hover-palette-1-base u-border-none u-btn u-button-style u-login-control u-login-create-account u-none u-text-hover-white u-text-palette-3-base u-btn-3">Si no tienes cuenta, registrate aqu??</a>-->
      </div>
    </section>
    
    <%@ include file="../common/footer.jspf"%>

  </body>
</html>