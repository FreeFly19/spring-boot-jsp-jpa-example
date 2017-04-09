<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Human</title>
</head>
<body>

<table border="1" style="width: 100%">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Age</th>
    </tr>

    <c:forEach items="${people}" var="human">
    <tr>
        <td>${human.id}</td>
        <td>${human.name}</td>
        <td>${human.age}</td>
    </tr>
    </c:forEach>

</table>

<hr>

<form method="post">
    <table>
        <tr>
            <td style="width: 100px"><label for="name">Name:</label></td>
            <td><input type="text" name="name" id="name"></td>
        </tr>

        <tr>
            <td><label for="age">Age:</label></td>
            <td><input type="number" name="age" id="age"></td>
        </tr>

        <tr>
            <td colspan="2"><input type="submit" style="width: 100%" value="Create"></td>
        </tr>
    </table>
</form>

</body>
</html>