<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="Usuario Groovylito" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<div id="create-user" class="form-reg" role="main" >
	<h2 class="form-reg-heading"><g:message code="default.create.label" args="[entityName]" /></h2>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<g:hasErrors bean="${userInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
	</g:hasErrors>
	<g:form url="[resource:userInstance, action:'save']" >
		<fieldset class="form">
			<g:render template="form"/>
		</fieldset>
		<fieldset class="buttons">
            <button class="btn btn-theme btn-block" <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />Crea tu Groovylito</button>
            </fieldset>
	</g:form>
</div>        <!-- aca va -->

</body>
</html>
