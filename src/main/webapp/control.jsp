<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="control">
    <meta name="description" content="">
    <title>Control</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
	<link rel="stylesheet" href="Control.css" media="screen">
	<link rel="stylesheet" href="jquery.dataTables.css" media="screen">
    <!--  <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>-->
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
    <meta property="og:title" content="Control">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><%@ include file="../common/header.jspf"%>
    <section class="u-border-1 u-border-grey-75 u-clearfix u-image u-shading u-section-1" id="sec-bef4" data-image-width="1600" data-image-height="560">
      <div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-default u-text-1">LISTADO DE USUARIOS</h2>
        <div class="u-table u-table-responsive u-table-1">
          <table id="tabla" class="u-table-entity">
            <colgroup>
              <col width="22.78%">
              <col width="22.78%">
              <col width="22.78%">
              <col width="20.78%">
              <col width="10.87%">
            </colgroup>
            <thead class="u-black u-table-header u-table-header-1">
              <tr style="height: 46px;">
                <th class="u-border-1 u-border-black u-table-cell">Nombre</th>
                <th class="u-border-1 u-border-black u-table-cell">Apellidos</th>
                <th class="u-border-1 u-border-black u-table-cell">Correo</th>
                <th class="u-border-1 u-border-black u-table-cell">Rol</th>
                <th class="u-border-1 u-border-black u-table-cell"></th>
              </tr>
            </thead>
            <tbody class="u-grey-70 u-table-body u-table-body-1">
              <c:forEach items="${listaUsuarios}" var="listaUsuarios">
	              <tr style="height: 75px;">
	                <td class="u-border-1 u-border-grey-50 u-table-cell">${listaUsuarios.nombre}</td>
	                <td class="u-border-1 u-border-grey-50 u-table-cell">${listaUsuarios.apellido}</td>
	                <td class="u-border-1 u-border-grey-50 u-table-cell">${listaUsuarios.correo}</td>
	                <td class="u-border-1 u-border-grey-50 u-table-cell">${listaUsuarios.rol}</td>
	                <td class="u-border-1 u-border-grey-50 u-table-cell"><span class="u-icon u-icon-1"><svg class="u-svg-content" viewBox="0 0 52 52" x="0px" y="0px" style="width: 1em; height: 1em;"><g><path d="M26,0C11.664,0,0,11.663,0,26s11.664,26,26,26s26-11.663,26-26S40.336,0,26,0z M26,50C12.767,50,2,39.233,2,26
			S12.767,2,26,2s24,10.767,24,24S39.233,50,26,50z"></path><path d="M35.707,16.293c-0.391-0.391-1.023-0.391-1.414,0L26,24.586l-8.293-8.293c-0.391-0.391-1.023-0.391-1.414,0
			s-0.391,1.023,0,1.414L24.586,26l-8.293,8.293c-0.391,0.391-0.391,1.023,0,1.414C16.488,35.902,16.744,36,17,36
			s0.512-0.098,0.707-0.293L26,27.414l8.293,8.293C34.488,35.902,34.744,36,35,36s0.512-0.098,0.707-0.293
			c0.391-0.391,0.391-1.023,0-1.414L27.414,26l8.293-8.293C36.098,17.316,36.098,16.684,35.707,16.293z"></path>
	</g></svg><img></span> <a href="<%=request.getContextPath()%>/borrado?correo=${listaUsuarios.correo}">Borrar</a>
	                </td>
	              </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
        <a href="<%=request.getContextPath()%>/registro" data-page-id="10074248" class="u-border-1 u-border-black u-btn u-btn-round u-button-style u-palette-3-light-1 u-radius-4 u-text-hover-black u-btn-1"><span class="u-icon u-icon-5"><svg class="u-svg-content" viewBox="0 0 52 52" x="0px" y="0px" style="width: 1em; height: 1em;"><g><path d="M26,0C11.664,0,0,11.663,0,26s11.664,26,26,26s26-11.663,26-26S40.336,0,26,0z M26,50C12.767,50,2,39.233,2,26
		S12.767,2,26,2s24,10.767,24,24S39.233,50,26,50z"></path><path d="M38.5,25H27V14c0-0.553-0.448-1-1-1s-1,0.447-1,1v11H13.5c-0.552,0-1,0.447-1,1s0.448,1,1,1H25v12c0,0.553,0.448,1,1,1
		s1-0.447,1-1V27h11.5c0.552,0,1-0.447,1-1S39.052,25,38.5,25z"></path>
</g></svg><img></span>&nbsp;Registrar nuevo usuario
        </a>
      </div>
    </section>
    
    <%@ include file="../common/footer.jspf"%>
    
    <script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
	<script>
		$(document).ready(function() {
			$('#tabla').DataTable({
				language: {
		            url: 'https://cdn.datatables.net/plug-ins/1.12.1/i18n/es-ES.json',
				},
	    	});
		});
	</script>
  </body>
</html>