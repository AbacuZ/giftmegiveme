<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Gift Me</title>
		<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
		<link rel="shortcut icon" href="img/title-1.ico" />
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body >
	<%@ include file ="header.jsp" %>
		<div id="box" style="padding-top:7%;">
			<div id="passwordform">
				<center>
					<form class="" action="reset" method="post">
						Please enter your new password</br></br>
							<label>password : </label>
							<input type="text" name="password" />
						<input type="submit" value="Confirm" />
					</form>
				</center>
			</div>
		</div>
  </body>
</html>
