<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Welcome here!!!</title>
</head>
<body>
    Hello, ${name}
    <c:if test="${name.equals(\"world!\")}">
        <form>
            Name: <input type="text" name="name" id="name">
            <input type="submit" value="Join">
        </form>
    </c:if>
    <br>
    <a href="people">People</a>
</body>
</html>