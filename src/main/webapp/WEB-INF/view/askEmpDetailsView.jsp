<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
<body>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <br><br>

    Surname <form:input path="surname"/>
    <br><br>

    Salary <form:input path="salary"/>
    <br><br>

    <input type="submit" value="OK"/>

    Department
    <form:select path="department">
        <form:options items="${employee.departments}"/>
    </form:select>

    Which car do you want?
    <form:radiobuttons path="carBrand" items="${employee.cars}"/>

    <br><br>

    Foreign Language(s)
    <form:checkboxes path="languages" items="${employee.languageList}"/>

</form:form>

</body>
</html>