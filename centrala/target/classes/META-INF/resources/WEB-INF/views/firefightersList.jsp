<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"/>
<body>
<jsp:include page="nav.jsp"/>
<div class="center">
    <table>
        <tr class="tr1">
            <td>Imie</td>
            <td>Nazwisko</td>
            <td>Email</td>
        </tr>
<c:forEach items="${users}" var="user">
    <td><p>${user.firstName}</p></td>
    <td><p>${user.lastName}</p></td>
    <td><p>${user.email}</p></td>
</c:forEach>
    </table>
</div>
</body>
</html>

