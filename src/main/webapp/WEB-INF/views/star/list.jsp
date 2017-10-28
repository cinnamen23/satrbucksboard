<%@ include file="/WEB-INF/views/star/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">기본게시판</h1>
                    
                </div>
                <!-- /.col-lg-12 -->
            </div>
              <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Table
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>

                                            <th>글번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="list" items="${list}">
                                        <tr>
                                         <td> ${list.tno} </td>
                                      	 <td><a class="goSub" href="${list.tno}"> ${list.tname} </a></td>
                                         <td> ${list.twriter} </td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                
            <nav aria-label="Page navigation">
				<ul class="pagination">
					<c:if test="${pageMaker.prev}">
						<li><a class="prev" href="${pageMaker.start-1}"
							aria-label="Previous"> <span aria-hidden=false>&laquo;</span>
						</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.start}" end="${pageMaker.end}"
						var="idx">
						<li class="${pageMaker.current ==idx?'active':''}">
						<a class="curr" href="${idx}">${idx}</a></li>
					</c:forEach>

					<c:if test="${pageMaker.next}">
						<li><a class="next" href="${pageMaker.end+1}" aria-label="Next">
								<span aria-hidden="${pageMaker.next}">&raquo;</span>
						</a></li>
					</c:if>

				</ul>
			</nav>
                                
                                <form id="create" action="/star/write">
                                <button id="regbtn" class="btn btn-primary">글등록</button>
                                </form>
                                
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
           
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

		<form id="f1">
		<input id="sgbno" type="hidden" name="tno">
		<input id="sgpage" type="hidden" name="page" value="${cri.page}">
		<input type="hidden" name="type" value="${cri.type}">
		<input type="hidden" name="keyword" value="${cri.keyword}">
		</form>


    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../vendor/raphael/raphael.min.js"></script>
    <script src="../vendor/morrisjs/morris.min.js"></script>
    <script src="../data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

<script>
$(document).ready(function() {

	$(".goSub").on("click", function(e) {
		e.preventDefault();
		$("#sgbno").val($(this).attr("href"));
		$("#f1").attr("action", "/star/sub").submit();

	});
	
	$(".prev").on("click", function(e) {
		e.preventDefault();
		$("#sgpage").val($(this).attr("href"));
		$("#f1").attr("action", "/star/list").submit();

	});
	
	$(".curr").on("click", function(e) {
		e.preventDefault();
		$("#sgpage").val($(this).attr("href"));
		$("#f1").attr("action", "/star/list").submit();

	});
	
	$(".next").on("click", function(e) {
		e.preventDefault();
		$("#sgpage").val($(this).attr("href"));
		$("#f1").attr("action", "/star/list").submit();

	});
	
	});

</script>

</body>

</html>
