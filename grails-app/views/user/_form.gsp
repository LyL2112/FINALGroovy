<%@ page import="groovylito.user.User" %>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
	<label for="firstName" class="reg-wrap">
		<span class="required-indicator">*</span>
		<g:field name="firstName" maxlength="50" required="" value="${userInstance?.firstName}" placeholder="${g.message(code:'user.firstName.label', default: 'First Name')}"/>
	</label>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<label for="lastName" class="reg-wrap">
		<span class="required-indicator">*</span>
		<g:field name="lastName" maxlength="50" required="" value="${userInstance?.lastName}" placeholder="${g.message(code:'user.lastName.label', default: 'Last Name')}"/>
	</label>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email" class="reg-wrap">
		<span class="required-indicator">*</span>
		<g:field type="email" name="email" required="" value="${userInstance?.email}" placeholder="${g.message(code:'user.email.label', default: 'Email')}"/>
	</label>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username" class="reg-wrap">
		<span class="required-indicator">*</span>
		<g:field name="username" required="" value="${userInstance?.username}" placeholder="${g.message(code:'user.username.label', default: 'Username')}"/>
	</label>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password" class="reg-wrap">
		<span class="required-indicator">*</span>
		<g:field type="password" name="password" pattern="${userInstance.constraints.password.matches}" required="" value="${userInstance?.password}" placeholder="${g.message(code:'user.password.label', default: 'Password')}"/>
	</label>
</div>
