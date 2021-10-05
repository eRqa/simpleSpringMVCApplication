<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<body>

Your name is ${employee.name}
<br>
<br>
Your surname ${employee.surname}
<br>
<br>
Your salary is ${employee.salary}
<br>
<br>

Your dep is ${employee.department}

Your car is ${employee.carBrand}

<br><br>

Language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>${lang}</li>
    </c:forEach>
</ul>

</body>
</html>