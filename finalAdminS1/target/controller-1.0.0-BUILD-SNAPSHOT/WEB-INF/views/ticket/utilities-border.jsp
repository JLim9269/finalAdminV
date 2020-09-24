<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
	<!-- Custom fonts for this template-->
  	<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  	<!-- Custom styles for this template-->
  	<link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
	<%@ include file="../includes/header-sidebar.jsp"%>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->    
        <%@ include file="../includes/header-topbar.jsp"%>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-1 text-gray-800">Border Utilities</h1>
          <p class="mb-4">Bootstrap's default utility classes can be found on the official <a href="https://getbootstrap.com/docs">Bootstrap Documentation</a> page. The custom utilities below were created to extend this theme past the default utility classes built into Bootstrap's framework.</p>

          <!-- Content Row -->
          <div class="row">

            <!-- Border Left Utilities -->
            <div class="col-lg-6">

              <div class="card mb-4 py-3 border-left-primary">
                <div class="card-body">
                  .border-left-primary
                </div>
              </div>

              <div class="card mb-4 py-3 border-left-secondary">
                <div class="card-body">
                  .border-left-secondary
                </div>
              </div>

              <div class="card mb-4 py-3 border-left-success">
                <div class="card-body">
                  .border-left-success
                </div>
              </div>

              <div class="card mb-4 py-3 border-left-info">
                <div class="card-body">
                  .border-left-info
                </div>
              </div>

              <div class="card mb-4 py-3 border-left-warning">
                <div class="card-body">
                  .border-left-warning
                </div>
              </div>

              <div class="card mb-4 py-3 border-left-danger">
                <div class="card-body">
                  .border-left-danger
                </div>
              </div>

              <div class="card mb-4 py-3 border-left-dark">
                <div class="card-body">
                  .border-left-dark
                </div>
              </div>

            </div>

            <!-- Border Bottom Utilities -->
            <div class="col-lg-6">

              <div class="card mb-4 py-3 border-bottom-primary">
                <div class="card-body">
                  .border-bottom-primary
                </div>
              </div>

              <div class="card mb-4 py-3 border-bottom-secondary">
                <div class="card-body">
                  .border-bottom-secondary
                </div>
              </div>

              <div class="card mb-4 py-3 border-bottom-success">
                <div class="card-body">
                  .border-bottom-success
                </div>
              </div>

              <div class="card mb-4 py-3 border-bottom-info">
                <div class="card-body">
                  .border-bottom-info
                </div>
              </div>

              <div class="card mb-4 py-3 border-bottom-warning">
                <div class="card-body">
                  .border-bottom-warning
                </div>
              </div>

              <div class="card mb-4 py-3 border-bottom-danger">
                <div class="card-body">
                  .border-bottom-danger
                </div>
              </div>

              <div class="card mb-4 py-3 border-bottom-dark">
                <div class="card-body">
                  .border-bottom-dark
                </div>
              </div>

            </div>

          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <%@ include file="../includes/footer.jsp"%>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
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