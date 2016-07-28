<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Gift Me | รับฝากซื้อสินค้าจากต่างประเทศเป็นเรื่องง่ายๆ</title>
		<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
		<link rel="shortcut icon" href="img/title-3.ico" />
		<link rel="stylesheet" type="text/css" href="bootstrap/3.3.6/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<script src="js/checkHelp.js"></script>
	</head>
	<body>
	<%@ include file ="header.jsp" %>
		<div class="container" style="padding-top:15%;">
			<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div id="box">
					<center>
						<form action="emailsearching" method="POST" name="myForm" onsubmit="return validateForm()">
							<br/>
							<label>ค้นหาบัญชีผู้ใช้</label><br/><br/>
							<div class="form-group">
									<label label class="control-label col-sm-2">อีเมล์</label>
								<div class="col-sm-10">
									<input type="email" name="email" class="form-control"></input>
									<span id="email_text" style="color:red;"></span><br/><br/>
								</div>
							</div>
						  <button type="submit" name="travel" value='travel' class="btn btn-info" >ยืนยัน</button>
						</form>
					</center>
				</div>
			</div>
			<div class="col-md-4"></div>
		</div>
	</body>
</html>
