<html>
<head>
    <title>POP - Homepage</title>
    <meta name="layout" content="main" />
</head>
<body>
<g:if test="${session?.user}">
</g:if>
<g:else>
    <g:form class="simpleform" style="width:50%;" action="login" controller="usuario">
        <fieldset>
            <legend>Login</legend>


                <label for="username">Username</label>
                <g:textField name="username" />
            </p>
            <p>
                <label for="password">Password</label>
                <g:passwordField name="password" />
            </p>
            <p class="button">
                <label>&nbsp;</label>
                <g:submitButton class="button" name="submitButton" value="Login" />
            </p>
        </fieldset>
    </g:form>
</g:else>
</body>
</html>