<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>O번쨰 글입니다.</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
  
      <div id="wrapper">
   <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Forms</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Form Elements
                        </div>

    
  <table class="table table-condensed">
		<tr>
			<td>넘버</td>
			<td>타이틀</td>
			<td>내용</td>
			<td>글쓴이</td>
			<td>수정</td>
		</tr>
		<tr>
			<td>${vo.tno}</td>
			<td>${vo.tname}</td>
			<td>${vo.tcontent}</td>
			<td>${vo.twriter}</td>
			<td><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">수정</button></td>
		</tr>
	</table>
  
  

</div>

</div></div></div></div>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
			  <form>
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			      <input id="email" type="text" class="form-control" name="tname" placeholder="Email"value=${vo.tname}>
			    </div>
			    <br>
			    <div class="input-group">
			      <span class="input-group-addon">Text</span>
			      <input id="msg" type="text" class="form-control" name="tcontent" placeholder="Additional Info" value=${vo.tcontent}>
			    </div>
			  </form>
        </div>
        <div class="modal-footer">
          <button class="modiconfirm" type="button" class="btn btn-default" data-dismiss="modal">수정완료</button>
        </div>
      </div>
    </div>
  </div>

<script>
$(document).on(function(){
	
	
	$(".modal-footer button").on("click",function(e){	
		e.preventDefault();
		console.log("수정하시겠습니까?");
	});
	
});


</script>
</body>


</html>