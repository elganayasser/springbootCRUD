<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head><title>SpringBoot</title>
<link href="https://unpkg.com/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<hr/>
<div class="container"> 
<h1 class="display-1">Spring Boot simple CRUD EDIT </h1>
<form method="post" action="/save">
  <div class="row">
  <input type="hidden" name="id"value="${lists.id}"/>
    <div class="col">
      <input type="text"  name="firstname" value="${lists.firstName}"  class="form-control" placeholder="First name">
    </div>
    <div class="col">
      <input type="text" class="form-control" value="${lists.lastName}" name="lastname" placeholder="Last name">
    </div>
  </div>
  <hr/>
    <button type="submit" class="btn btn-primary">Editer</button>
</form>
</div>
</body>
</html>
