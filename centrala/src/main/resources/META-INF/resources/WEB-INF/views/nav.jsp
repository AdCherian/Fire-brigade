<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav>
    <a href="/"><img src="/logo_ostateczne.png"></a>
    <ul>

        <sec:authorize url="/">
            <li>
                <a href="/">Startowa</a>
            </li>
        </sec:authorize>
        <sec:authorize url="/actions">
            <li>
                <a href="/actions">Odbyte akcje</a>
            </li>
        </sec:authorize>
        <sec:authorize url="/actionsList">
            <li>
                <a href="/actionsList">Akcje</a>
            </li>
        </sec:authorize>
        <sec:authorize url="/admin">
            <li>
                <a href="/admin">Admin</a>
            </li>
        </sec:authorize>
        <sec:authorize url="/toolsList">
            <li>
                <a href="/toolsList">Spis sprzetu</a>
            </li>
        </sec:authorize>
        <sec:authorize url="/firefightersList">
            <li>
                <a href="/firefightersList">Spis strazakow</a>
            </li>
        </sec:authorize>
        <sec:authorize access="!isAuthenticated()">
            <li>
                <a href="/login">Logowanie</a>
            </li>
        </sec:authorize>
        <sec:authorize access="!isAuthenticated()">
            <li>
                <a href="/register">Rejestracja</a>
            </li>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <li><a href="/logout">Wyloguj</a></li>
        </sec:authorize>
    </ul>
</nav>