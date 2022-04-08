<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" />
<body>
<jsp:include page="nav.jsp" />
<div id="logowanie">
    <div id="formularzlogowania">
        <h3>ZALOGUJ SIĘ</h3>
        <form method="post" action="/login">
            <div id="polalogowania">
                <label for="username">Login</label><br/>
                <input id="username" class="fff" type="username"
                       name="username" placeholder="Login" required autofocus />
            </div>
            <div class="polalogowania" id="">
                <label for="password">Hasło</label><br/>
                <input id="password" class="block mt-1 w-full"
                       type="password" placeholder="Hasło"
                       name="password"
                       required autocomplete="current-password" />
            </div>
            <div id="poleprzyciskwyslij">
                <input type="submit" id="zaloguj" value="Zaloguj się"/>
            </div>
        </form>
    </div>
</div>
</body>
</html>