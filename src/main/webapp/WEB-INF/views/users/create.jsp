<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="e" tagdir="/WEB-INF/tags" %>
<!doctype html>
<html>
<head>
    <title><spring:message code="page.users.create.title"/></title>
</head>
<body>
<div class="span12">
    <form:form action="${pageContext.request.contextPath}/users/save" class="form-horizontal" method="post" commandName="user">
        <fieldset>
            <legend><spring:message code="page.users.create.form.legend"/></legend>
            <jsp:include page="_form.jsp"/>
        </fieldset>
    </form:form>
</div>
</body>
</html>
