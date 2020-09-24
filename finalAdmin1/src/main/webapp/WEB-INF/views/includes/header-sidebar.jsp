<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>TTCAR ADMIN</title>

	<!-- Custom fonts for this template-->
	<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  	<!-- Custom styles for this template-->
  	<link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">	<!-- core css -->
  	
  	<!-- Custom styles for page, ticket* -->
  	<link href="/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">	<!-- database minor css -->
  	
  	<!-- Bootstrap Core CSS -->	<!-- from ex4 f causes malfunction-->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<style>
.description {
    display:none;
    position:absolute;
    border:1px solid #000;
    width:400px;
    height:400px;
    /* scrolling:no;
    frameborder:0; */
}
</style>

</head>


<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

<!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/ttcar/index">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">TTCar <sup>Admin</sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="/ttcar/index">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span><spring:message code="message.admin.header-sidebar.dashboard"/></span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        <spring:message code="message.admin.header-sidebar.interface"/>
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Components</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
            <a class="collapse-item" href="buttons.jsp">Buttons</a>
            <a class="collapse-item" href="cards.jsp">Cards</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>Utilities</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="utilities-color.jsp">Colors</a>
            <a class="collapse-item" href="utilities-border.jsp">Borders</a>
            <a class="collapse-item" href="utilities-animation.jsp">Animations</a>
            <a class="collapse-item" href="utilities-other.jsp">Other</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        <spring:message code="message.admin.header-sidebar.addons"/>
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.jsp">Login</a>
            <a class="collapse-item" href="/ttcar/register">Register</a>
            <a class="collapse-item" href="forgot-password.jsp">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.jsp">404 Page</a>
            <a class="collapse-item" href="blank.jsp">Blank Page</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="charts.do">
          <i class="fas fa-fw fa-chart-area"></i>
          <span><spring:message code="message.admin.header-sidebar.charts"/></span></a>
      </li>

      <!-- Nav Item - Tickets -->
      <li class="nav-item">
        <a class="nav-link" href="/ticket/ticketList">
          <i class="fas fa-fw fa-table"></i>
          <span><spring:message code="message.admin.header-sidebar.tickets"/></span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>