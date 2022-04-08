<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>
    <form method="post" action="/addAction">
        <input type="text" name="title" placeholder="title" required>
        <input type="text" name="description" placeholder="description" required>
        <input type="text" name="place" placeholder="place" required>
        <input type="text" name="type" placeholder="name" required>
        <input type="submit" value="Dodaj">
    </form>
</body>
</html>