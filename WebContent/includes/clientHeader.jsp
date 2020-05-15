<%
	String view = request.getParameter("view");
%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Sports Health and Fitness</title>
  
  <!-- Custom styles for this template -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- Bootstrap core CSS -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
  

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: #bdbdbd">
    <div class="container">
      <a class="navbar-brand" href="./index.jsp"><img src="uploads/images/logo.jfif" class="img-thumbnail"/></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <form class="form-inline col-6" style="position: relative; left: 100px">  
	      	<i class="fas fa-search" aria-hidden="true"></i>
			  <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search"
			    aria-label="Search">
	</form>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="./login.jsp">Account
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Cart</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
    <!-- Page Content -->
  <div class="container">
    <ul class="list-group list-group-horizontal-xl my-4" style="float: center; padding-top: 180px">
          <li class="list-group-item headline"><a href="#">Store</a></li>
          <li class="list-group-item headline"><a href="./index.jsp?view=articlelistpop">Articles</a></li>
          <li class="list-group-item headline"><a href="#">Workouts</a></li>
          <li class="list-group-item headline"><a href="#">Forums</a></li>
	</ul>
	
	<div class="row"> 
         <div class="col-lg-24" style="text-align: center"> 
            <a class="navbar-brand logo" href="#">
               <img src="uploads/images/bannerAd2.jpg" alt="Advertisement" style="position: relative; left: 25px; margin-bottom: 40px;'">
            </a> 
         </div>     
      </div>

	      