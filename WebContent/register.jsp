<%@include file="./includes/clientHeader.jsp" %>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Sports Health Fitness Member - Register</div>
      <div class="card-body">
        <form>
        <div class="form-group">
            <label for="username">First Name</label>
            <input type="text" id="firstName" class="form-control" placeholder="Login Account" required  autofocus="autofocus" />
          </div>
          <div class="form-group">
            <label for="username">Last Name</label>
            <input type="text" id="lastName" class="form-control" placeholder="Login Account" required  autofocus="autofocus" />
          </div>
          <div class="form-group">
            <label for="username">Email</label>
            <input type="text" id="lastName" class="form-control" placeholder="Login Account" required  autofocus="autofocus" />
          </div>
          <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" class="form-control" placeholder="Login Account" required  autofocus="autofocus" />
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" class="form-control" placeholder="Password" required  />
          </div>
          <a class="btn btn-primary btn-block" onclick="register()">Register</a>
          <a class="btn btn-primary btn-block"" href="./login.jsp">Login</a>
        </form>
        <div id="message"></div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="./assets/vendor/jquery/jquery.min.js"></script>
  <script src="./assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="./assets/vendor/jquery-easing/jquery.easing.min.js"></script>
  
  
  <!-- JavaScript-->
  <script src="./assets/js/login.js"></script>

</body>

</html>

<%@include file="./includes/clientFooter.jsp" %>
