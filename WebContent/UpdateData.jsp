<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALM Project Management</title>



  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Simple Sidebar - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="btstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="btstrap/css/simple-sidebar.css" rel="stylesheet">


</head>
<body background="btstrap/p7.jpg">
	
	
  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
     <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">ALM Project</div>
      <div class="list-group list-group-flush">
        <a href="Dashboard.jsp" class="list-group-item list-group-item-action bg-light">Dashboard</a>
        <a href="Sources.html" class="list-group-item list-group-item-action bg-light">Sources</a>
        <a href="UpdateData.jsp" class="list-group-item list-group-item-action bg-light">Update Data</a>
         <a href="Events.jsp" class="list-group-item list-group-item-action bg-light">Tutorials</a>
        <a href="Users.jsp" class="list-group-item list-group-item-action bg-light">ScoreBoard</a>
      <a href="Aboutus.html" class="list-group-item list-group-item-action bg-light">About</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
   <div id="page-content-wrapper" >

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary" id="menu-toggle">Menu</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="Home.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Tools.html">Tools</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Cybage
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="https://cybintranet.cybage.com/sites/Home/default.aspx">CybIntranet</a>
                <a class="dropdown-item" href="https://cybagemis.cybage.com/Framework/Iframe.aspx">CybageMIS</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="https://cybagemis.cybage.com/Engineering/ALM/FileDownloader.aspx?FileId=139449%20&Filename=ALM_Practice_PPT.pptx">ALM@Cybage</a>
              </div>
            </li>
          </ul>
        </div>
      </nav>
      <div class="container-fluid">
     
      <form action="UpdateController" method="post">
     
     <br>
     <br>
     <br>
     <br>
     <br>
     
     <table bgcolor="#DEB887">
     <tr ><th>Username</th><th><input type="text" name="editname" ></th></tr>
     
     <tr ><th>Password</th><th><input type="password" name="editpassword"></th></tr>
    
	 <tr><td colspan="2" align="center"><input type="submit" value="Update" class="btn btn-warning"></td></tr>
	
	 </table>
     </form>
      
        </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="btstrap/vendor/jquery/jquery.min.js"></script>
  <script src="btstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>

	
</body>
</html>