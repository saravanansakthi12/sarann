<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/user.css">
</head>
<body class="jumbotron">
<form:form action="createnew" modelAttribute="emp">


            <table align="center">
<tr><h1 align="center">Enter the Details</h1></tr>
                  <tr>
                        <td>NAME :</td>
                  </tr>
                  <tr>
                        <td><form:input path="empName" placeholder="Enter name" /></td>

                  </tr>
                  <tr>
                        <td>PLACE :</td>
                  </tr>
                  <tr>
                        <td><form:input path="empPlace" placeholder="Enter place" /></td>
                        <br>
                  </tr>
                  <tr>
                        <td>PHONE :</td>
                  </tr>
                  <tr>
                        <td><form:input path="phoneNo" placeholder="Enter phone no" /></td>
                        <br>
                  </tr>
                  <tr>
                        <td>E-MAIL :</td>
                  </tr>
                  <tr>
                        <td><form:input path="email" placeholder="Enter e-Mail" /></td>
                        <br>
                  </tr>
                  <tr>
                        <td>PASSWORD :</td>
                  </tr>
                  <tr>
                        <td><form:password path="password" placeholder="Enter password" /></td>
                        <br>
                  </tr>
                  <tr>
                        <td>CONFIRM PASSWORD :</td>
                  </tr>
                  <tr>
                        <td><form:password path="password" placeholder="ReEnterPassword" /></td>
                        <br>
                  </tr>
                  <tr>
                        <td><a href="/">Reset</td>
                        <td colspan="2"><input type="submit" value="save" /></td>
                  </tr>


            </table>

      </form:form>


</body>
</html>