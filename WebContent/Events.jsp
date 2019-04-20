<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

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

  <title>ALM Project Management</title>

  <!-- Bootstrap core CSS -->
  <link href="btstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="btstrap/css/simple-sidebar.css" rel="stylesheet">


</head>
<body>
	
	
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
    <div id="page-content-wrapper">

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
        
        
        <br>
      <br>
      
      <%
      String drivername = "com.mysql.jdbc.Driver";
      String connectionUrl = "jdbc:mysql://localhost:3306/";
      String dbName = "almproject";
      String userId = "root";
      String password = "8888";
      
      try {
    	  Class.forName(drivername);
    	  } catch (ClassNotFoundException e) {
    	  e.printStackTrace();
    	  }

    	  Connection connection = null;
    	  Statement statement = null;
    	  ResultSet resultSet = null;
    	  
      %>
      <h2 align="center"><font><strong>List of Videos and Tutorials</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Title</b></td>
<td><b>Videos</b></td>
<td><b>Description</b></td>
</tr>


<%
try{ 
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement = connection.createStatement();
String sql ="SELECT * FROM links";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr bgcolor="#DEB887">

<td><%=resultSet.getString("name") %></td>
<td><a href="<%=resultSet.getString("link") %>"><%=resultSet.getString("link") %></a></td>
<td><%=resultSet.getString("description") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
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