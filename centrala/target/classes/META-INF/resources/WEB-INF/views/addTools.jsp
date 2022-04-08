<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" />
<body>
<jsp:include page="nav.jsp" />
    <form action="/addTool" method="post">
        <input type="hidden"name="id" value="${tool.id}">
        <input type="text" name="name" placeholder="Nazwa" value="${tool.name}" required>
        <input type="text" name="quantity" placeholder="Ilosc" value="${tool.quantity}" required>
        <input type="date" name="expirationDate" placeholder="Termin" value="${tool.expirationDate}">
        <input type="submit" value="Zapisz">
    </form>
</body>
</html>