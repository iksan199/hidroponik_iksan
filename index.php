<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Hydroponic Access Monitoring</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-5 col-lg-7 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-12 d-none d-lg-block"></div>
              <div class="col-lg-12">
                <div class="p-5">
                  <div class="text-center">
                    <img src="img/8587.jpg" alt="Login" style="width:250px;height:180px;">
                    <h1 class="h4 text-gray-900 mb-4">Welcome to H.A.M <sup><span class="badge badge-pill badge-dark">Beta</span></sup></h1>
                    <?php 
                      if(isset($_GET['pesan'])){
                        if($_GET['pesan']=="gagal"){
                          echo "<div class='alert' style='color:white; margin-top:10px;'><strong>Username dan Password tidak sesuai !</strong></div>";
                        }
                      }
                      ?>
                  </div>
                  <form class="user" method="post" action="cek_login.php">
                    <div class="form-group">
                      <input type="text" name="username" class="form-control form-control-user" id="exampleInputEmail"
                        aria-describedby="emailHelp" placeholder="Enter Username...">
                    </div>
                    <div class="form-group">
                      <input type="password" name="password" class="form-control form-control-user"
                        id="exampleInputPassword" placeholder="Password">
                    </div>
                    <input type="submit" name="submit" class="btn btn-primary btn-user btn-block" id="submit"
                      value="SIGN IN">
                    <hr>
                  </form>
                  <div class="text-center">
                    <a class="small" href="register.php">Create an Account!</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>