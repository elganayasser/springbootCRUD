<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head><title>SpringBoot</title>
<link href="https://unpkg.com/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
<div class="container"> 
<h1 class="display-1">Spring Boot simple CRUD </h1>
<table class="table table-striped table-bordered">
  <tr class="thead-dark" >
    <th>ID</th>
    <td>${lists.id}</td>
  </tr>
  <tr>
      <th>First Name</th>
      <td>${lists.firstName}</td>
    </tr>
    <tr>
        <th>Last Name</th>
        <td>${lists.lastName}</td>
      </tr>
  </table>
  <a href="/">Back</a>
  </div>
</body>
</html>
