<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>

<jsp:include page="head.jsp"/>
<body>
<jsp:include page="nav.jsp"/>

<div class="center">
    <table>
        <tr class="tr1">
            <td>Nazwa</td>
            <td>Ilosc</td>
            <td>Data waznosci</td>
            <td>Edytuj sprzet</td>
            <td>Usun sprzet</td>
        </tr>
        <c:forEach items="${tools}" var="tool">
            <tr>
                <td>${tool.name}</td>
                <td>${tool.quantity}</td>
                <td><fmt:formatDate value="${tool.expirationDate}" pattern="yyyy-MM-dd"/></td>
                <td><a href="/editTool/${tool.id}">Edytuj</a></td>
                <td><a href="/deleteTool/${tool.id}">usun</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>