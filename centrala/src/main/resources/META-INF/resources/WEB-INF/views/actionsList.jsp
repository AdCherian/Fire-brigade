<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<jsp:include page="head.jsp" />
<body>
<jsp:include page="nav.jsp" />
<div class="center">
<table>
    <tr class="tr1">
        <td >Nazwa</td>
        <td>Opis zdarzenia</td>
        <td>Miejsce zdarzenia</td>
        <td>Rodzaj zdarzenia</td>
    </tr>
<c:forEach items="${actions}" var="action">
    <tr>
        <td>${action.title}</td>
        <td>${action.description}</td>
        <td>${action.place}</td>
        <td>${action.type}</td>
    </tr>
</c:forEach>
</table>
</div>
</body>
</html>