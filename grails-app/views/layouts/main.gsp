<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="02-tasks.css"/>
		<!-- Bibliotecas JQuery, TMPL -->
		<asset:javascript src="jquery-2.1.4.js"/>
		<asset:javascript src="jquery.tmpl.min.js"/>
		<asset:javascript src="tasks-controller.js"/>
		<asset:javascript src="jquery.validate.js"/>

		<!-- tasks-IndexedDB.js possui as funções para tratar a peristência das tarefas usando H2 como base de dados -->
		<asset:javascript src="tasks-h2.js"/>

		<!-- Biblioteca datejs para auxiliar nas operações com datas -->
		<asset:javascript src="date.js"/>

		<g:layoutHead/>
	</head>
	<body>
		<header>
			<span style="float: left; vertical-align: text-bottom;"><asset:image src="logo-tasks.png" alt="Control Tasks"/></span>
			<span style="float: right">Lista de Tarefas</span>
		</header>

		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>