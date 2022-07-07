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
    <title>Registro</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
	<link rel="stylesheet" href="registro.css" media="screen">
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
    <meta property="og:title" content="Registro">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
  <%@ include file="../common/header.jspf"%>
    <section class="u-clearfix u-image u-shading u-section-1" id="sec-976e" data-image-width="1600" data-image-height="560">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-form u-login-control u-form-1">
          <form action="<%=request.getContextPath()%>/registro" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-38 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 30px;">
            <div class="u-form-group u-form-name">
              <label for="username-a30id" class="u-label">Nombre</label>
              <input type="text" placeholder="Ingresa tu nombre" id="nombre" name="nombre" class="u-border-2 u-border-white u-input u-input-rectangle u-input-1" required="required" maxlength="100">
            </div>
            <div class="u-form-group u-form-name">
              <label for="username-a30iid" class="u-label">Apellidos</label>
              <input type="text" placeholder="Ingresa tus apellidos" id="apellido" name="apellido" class="u-border-2 u-border-white u-input u-input-rectangle u-input-1" required="required" maxlength="100">
            </div>
            <div class="u-form-group u-form-name">
              <label for="username-a30d" class="u-label">Correo</label>
              <input type="text" placeholder="Ingresa tu correo" id="correo" name="correo" class="u-border-2 u-border-white u-input u-input-rectangle u-input-1" required="required" maxlength="100">
            </div>
            <div class="u-form-group u-form-password">
              <label for="password-a30d" class="u-label">Contraseña</label>
              <input type="password" placeholder="Ingresa tu contraseña" id="contrasena" name="contrasena" class="u-border-2 u-border-white u-input u-input-rectangle u-input-2" required="required" maxlength="80">
            </div>
            <div class="u-form-group u-form-radiobutton u-form-group-5">
              <div class="u-form-radio-button-wrapper">
                <input type="radio" name="rol" value="Alumno" required="required">
                <label class="u-label" for="radiobutton">Alumno</label>
                <br>
                <input type="radio" name="rol" value="Profesor" required="required">
                <label class="u-label" for="radiobutton">Profesor</label>
                <br>
              </div>
            </div>
            <div class="u-align-left u-form-group u-form-submit">
              <a href="#" class="u-border-none u-btn u-btn-submit u-button-style u-palette-3-base u-btn-1">Registrar<br>
              </a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
        </div>
      </div>
    </section>
    
    <%@ include file="../common/footer.jspf"%>
  </body>
</html>