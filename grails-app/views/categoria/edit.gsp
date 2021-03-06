<%@ page import="tasks.Categoria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<nav>
				<a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
				<g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			</nav>
		</div>
		<div id="edit-categoria" class="content scaffold-edit" role="main">
			<h1 class="capa"><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${categoriaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${categoriaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:categoriaInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${categoriaInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<nav>
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					</nav>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
