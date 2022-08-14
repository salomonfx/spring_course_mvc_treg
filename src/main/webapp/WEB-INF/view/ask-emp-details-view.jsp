<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
</html>

</body>

<h2>Dear Employee, Please enter your details</h2>

<br>
<br>
<br>

<form:form action ="showDetails" modelAttribute="employee">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>
    Departament <form:select path="department">
    <form:options items="${employee.departments}"/>

</form:select>
    <br><br>
    Witch car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
<%--   BMV <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--   AUDI <form:radiobutton path="carBrand" value="Audi"/>--%>
<%--    MB<form:radiobutton path="carBrand" value="Mercedes Benz"/>--%>
    <br><br>
    Foreign Language(s)
    EN <form:checkbox path="languages" value="English"/>
    DE <form:checkbox path="languages" value="Deutch"/>
    FR <form:checkbox path="languages" value="French"/>
    <br><br>

        Phone number <form:input path="phoneNumber"/>
        <form:errors path="phoneNumber"/>
    <br><br>
    <br><br>

    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br><br>


    <input type="submit" value="OK">

    <br><br>
</form:form>

</body>

</html>
