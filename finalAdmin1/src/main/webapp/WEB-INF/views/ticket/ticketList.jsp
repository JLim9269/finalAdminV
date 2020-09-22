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
  	
<style>
.description {
    display:none;
    position:absolute;
    border:1px solid #000;
    width:400px;
    height:400px;
}
</style>
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
          <h1 class="h3 mb-2 text-gray-800">Tickets</h1>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Ticket List</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Ticket Number</th>
                      <th>Category</th>
                      <th>Title</th>						<!-- hover content later if possible -->
                      <th>ID</th>
                      <th>Registered date</th>
                      <th>Status</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Ticket Number</th>
                      <th>Category</th>
                      <th>Title</th>
                      <th>ID</th>
                      <th>Registered date</th>
                      <th>Status</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  	<c:forEach items="${ticketList}" var="ticket">
                  	<tr>
                      <td>${ticket.tno}</td>
                      <td>${ticket.category}</td>
                      <td><a class="move" href="${ticket.tno}">${ticket.title}
                      	<iframe class="description"src="/ticket/ticketPage?tno=${ticket.tno}"></iframe></a>
                      </td>
                      <td>${ticket.userId}</td>
                      <td>${ticket.regDate}</td>
                      <td>
                      	<c:if test="${ticket.status==1}">
                      		<font color="#e74a3b"><c:out value="Waiting"/></font>
                      	</c:if>
                      	<c:if test="${ticket.status==2}">
                      		<c:out value="Pending..."/>
                      	</c:if>
                      	<c:if test="${ticket.status==3}">	<!-- may not be needed cuz its solved aldy -->
                      		<c:out value="Solved"/>
                      	</c:if>
                      </td>
                    </tr>
                  	</c:forEach>   
                  </tbody>
                </table>
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

<script>
	var f = document.createElement("form");
	
	f.setAttribute("id","tListForm");
	f.setAttribute("method","get");
	f.setAttribute("action","/ticket/ticketPage");
	
	document.getElementsByTagName("body")[0].appendChild(f);
</script>

<script>
	$().ready(function(){
		var tListForm = $("#tListForm");
		
		$(".move").on("click",function(e){
			e.preventDefault();
			tListForm.append("<input type='hidden' name='tno' value='"+$(this).attr("href")+"'>");	
			tListForm.submit();
		});
		
		//preview page
		$(".move").mouseover(function(){
			$(this).children(".description").show();
		}).mouseout(function(){
			$(this).children(".description").hide();
		});
	});
</script>

</body>

</html>