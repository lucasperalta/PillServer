<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Elastic Login Form</title>


    <asset:stylesheet src="style.css"/>



</head>

<body>

<div class="container">
    <div class="profile">
        <button class="profile__avatar" id="toggleProfile">
            <img src="https://pbs.twimg.com/profile_images/554631714970955776/uzPxPPtr.jpeg" alt="Avatar" />
        </button>
        <div class="profile__form">
<g:form class="simpleform" style="width:50%;" action="login" controller="usuario">

    <div class="profile__fields">
                <div class="field">
                    <input type="text" id="username" name="username" class="input" required pattern=.*\S.* />
                    <label for="fieldUser" class="label">Username</label>
                </div>
                <div class="field">
                    <input type="password" id="password" name="password" class="input" required pattern=.*\S.* />
                    <label for="fieldPassword" class="label">Password</label>
                </div>
                <div class="profile__footer">
                    <button class="btn" type="submit">Login</button>
                </div>
            </div>
</g:form>
        </div>
    </div>
</div>
<asset:javascript src="index.js"/>



</body>
</html>
