<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head><title>SpringBoot</title>
<link href="https://unpkg.com/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">...</div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
</div>
<div class="container"> 
<h1 class="display-1">Spring Boot simple CRUD </h1>
<table class="table table-striped table-bordered">
  <tr class="thead-dark" >
    <th>ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Action</th>
  </tr>
   <c:forEach var = "list" items = "${lists}">
  <tr>
    <td>${list.id}</td>
    <td>${list.firstName}</td>
    <td>${list.lastName}</td>
    <td>
        <a href="/view/${list.id}">View</a>
        <a href="/delete/${list.id}">Delete</a>
        <a href="/edit/${list.id}">Edit</a>

    </td>
  </tr>
  </c:forEach>
</table>
<hr/>
<h1 class="display-4">Add new User </h1>
<form method="post" action="/save">
  <div class="row">
  <input type="hidden" name="id" value=""/>
    <div class="col">
      <input type="text"  name="firstname"  class="form-control" placeholder="First name">
    </div>
    <div class="col">
      <input type="text" class="form-control" name="lastname" placeholder="Last name">
    </div>
  </div>
  <hr/>
    <button type="submit" class="btn btn-primary">Ajouter</button>
</form>



</div>
</body>
</html>
