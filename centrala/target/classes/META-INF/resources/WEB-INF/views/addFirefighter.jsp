<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" />
<body>
<jsp:include page="nav.jsp" />

<c:forEach items="${users}" var="user">
    <tr>
        <td>${user.firstName}</td>
        <td>${user.lastName} </td>
        <td>${user.email} </td>
        <td>${user.role}</td>
        <td><a href="/editUser/${user.id}">Edit</a></td>
    </tr>
</c:forEach>
</body>
</html>