<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
	<!-- Custom fonts for this template -->
  	<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  	<!-- Custom styles for this template -->
  	<link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

  	<!-- Custom styles for this page -->
  	<link href="/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
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
          <h1 class="h3 mb-2 text-gray-800">Ticket</h1>

		  <!-- 본문 -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-info">
			<div class="panel-heading"> </div>
			<!--  /.panel-heading -->
			<div class="panel-body">
				
				<div class="form-group">
					<label>Ticket Number</label>
					<input class="form-control" name="bno" value='<c:out value="${ticketPage.tno}"/>' readonly>
				</div>
				
				<div class="form-group">
					<label>userId</label>
					<input class="form-control" name="userId" value='<c:out value="${ticketPage.userId}"/>' readonly>
				</div>
				
				<div class="form-group">
					<label>Title</label>
					<input class="form-control" name="title" value='<c:out value="${ticketPage.title}"/>' readonly>
				</div>
				
				<div class="form-group">
					<label>Content</label>
					<textarea class="form-control" rows="3" name="content" readonly>
					       <c:out value="${ticketPage.content}"/>
					 </textarea>
				</div>
				
				
				
				<button data-oper='modify' class="btn btn-primary">수정</button>
				<button data-oper='list' class="btn btn-default">글목록</button>
 				
				<!--  이동할 폼 생성  -->
				<%-- <form id='operForm' action="/board/modify" method="get">
				<input type="hidden" id='bno' name='bno' value='<c:out value="${board.bno}"/>'>
				<input type="hidden" id='pageNum' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
				<input type="hidden" id='amount' name='amount' value='<c:out value="${cri.amount}"/>'>
				<input type="hidden" id='keyword' name='keyword' value='<c:out value="${cri.keyword}"/>'>
				<input type="hidden" id='type' name='type' value='<c:out value="${cri.type}"/>'>
				</form> --%>
				
			</div><!--  end panel-body -->
		</div><!-- end panel-info -->
	</div><!-- end panel -->

</div><!--  /.row -->

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

  <!-- Bootstrap core JavaScript-->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/resources/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="/resources/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="/resources/js/demo/datatables-demo.js"></script>

</body>

</html>