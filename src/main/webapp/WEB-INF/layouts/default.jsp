<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="e" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html>
<head>
    <meta name="git-commit" content="${cacheBuster}">
    <meta name="environment" content="${env}">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <e:resource url="css/bootstrap.min" type="css" minify="false"/>
    <e:resource url="css/bootstrap-responsive.min" type="css" minify="false"/>
    <e:resource url="css/application" type="css" minify="true"/>
    <title>My Site - <decorator:title default="Welcome!"/></title>
    <decorator:head/>
</head>

<body>
<header>
    <jsp:include page="../views/header.jsp"/>
</header>

<div class="container">
    <div class="row">
        <div class="span12">
            <c:if test="${not empty message}">
                <div class="alert-success alert fade in">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <spring:message code="${message}"/>
                </div>
            </c:if>
            <c:if test="${not empty error}">
                <div class="alert-error alert fade in">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <spring:message code="${error}"/>
                </div>
            </c:if>
        </div>
    </div>
    <div class="row">
        <decorator:body/>
    </div>
    <hr>
    <footer>
        <jsp:include page="../views/footer.jsp"/>
    </footer>
</div>
<!-- /container -->
<e:resource url="js/jquery-1.7.2.min" type="js" minify="false"/>
<e:resource url="js/modernizr-2.0.6.min" type="js" minify="false"/>
<e:resource url="js/application" type="js" minify="true"/>
<e:resource url="js/bootstrap/bootstrap.min" type="js" minify="false"/>
<e:resource url="js/ujs" type="js" minify="true"/>
<e:resource url="js/i18next-1.4.0.min" type="js" minify="false"/>
<!--[if lt IE 7 ]>
<script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
<script>window.attachEvent('onload', function () {
    CFInstall.check({mode:'overlay'})
})</script>
<![endif]-->
<script>
    window.i18nextOptions = {
        useLocalStorage:false,
        resGetPath:'${pageContext.request.contextPath}/translations/__lng__/__ns__-${cacheBuster}.json'
    };
</script>
<decorator:extractProperty property="page.defer"/>
</body>
</html>
