<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"/>
<body>
<jsp:include page="nav.jsp"/>
<div id="logowanie">
    <div id="formularzlogowania">
        <h3>ZALOGUJ SIĘ</h3>
        <form method="post" action="/register">
            <div class="polalogowania">
                <label for="email">Email</label><br/>
                <input id="email" class="fff" type="text" name="email" placeholder="Email" required/>
            </div>
            <div class="polalogowania">
                <label for="email">Imie</label><br/>
                <input id="firstname" class="fff" type="text" name="firstName" placeholder="Imie" required/>
            </div>
            <div class="polalogowania">
                <label for="email">Nazwisko</label><br/>
                <input id="lastname" class="fff" type="text" name="lastName" placeholder="Nazwisko" required/>
            </div>
            <div class="polalogowania">
                <label for="password">Hasło</label><br/>
                <input id="password" class="block mt-1 w-full" type="password" placeholder="Hasło" name="password" required/>
            </div>
            <div id="poleprzyciskwyslij">
                <input type="submit" id="zaloguj" value="Zaloguj się"/>
            </div>
        </form>
    </div>
</div>
</body>
</html>