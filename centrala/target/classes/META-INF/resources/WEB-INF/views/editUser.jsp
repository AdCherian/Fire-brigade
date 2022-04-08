<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"/>
<body>
<jsp:include page="nav.jsp"/>
<form action="/editUser" method="post">
    <input type="hidden" name="id" value="${user.id}">
    <select name="role">
        <option value="USER">user</option>
        <option value="FIREFIGHTER">strazak</option>
        <option value="ADMIN">admin</option>
    </select>
    <input type="submit" value="Zapisz">
</form>
</body>
</html>