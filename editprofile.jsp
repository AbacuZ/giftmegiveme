<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
 <head>
   <title>Buy | รับฝากซื้อสินค้าจากต่างประเทศเป็นเรื่องง่ายๆ</title>
   <meta charset="utf-8">
	   <meta http-equiv="Content-Language" content="th">
	   <meta name="viewport" content="width=device-width, initial-scale=1">
	   <link rel="shortcut icon" href="img/title-3.ico" />
	   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	   <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	    <link rel="stylesheet" type="text/css" href="css/style.css">

     <style>
       #content {
         margin-top: 10%;
       }
     </style>
 </head>

 <body style="overflow: scroll">
  <%@ include file ="header.jsp" %>
    <div class="container" id="content">
  	<a href="index.jsp">หน้าแรก</a>
  	<span>> ข้อมูลส่วนตัว</span><br/></br>
      <div class="row">
        <div class="col-sm-12" style="background-color:#f2f2f2">
          <center>
          <div class="w3-light-grey">
              <h4 style="padding-top:3%;">
              <img src= "picture/${sessionScope.member.picturePath}" class="img-circle" alt="Avatar" style="border-style: solid; border-width: 5px; border-color: white; width:175px; height: 175px; object-fit: contain; background-color: #fff;">
              </br><span style="background-color: white; padding-top: 1%; padding-bottom: 1%; padding-right:5% ; padding-left: 5%"><strong><c:out value = "${sessionScope.user.username}"/></strong></span>
          </div>
          </center>
          </div>
        </div>



      <div class="row" style="background-color:#f2f2f2; padding-top: 5%;">

        <div class="col-sm-1">

        </div>

        <div class="col-sm-10">
          <ul class="nav nav-tabs">
              <li class="active"><a href="#info">ข้อมูลส่วนตัว</a></li>
          </ul>
        </div>

        <div class="tab-content">
          <div class="tab-pane fade in active" id="info">
            <div class="col-sm-1">
            </div>
            <div class="col-sm-10" >

              <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                </br></br><span style="font-size: 130%;">เลขประจำตัวประชาชน : </span>
                </div>
                <div class="col-sm-6">
                </br></br><span style="font-size: 130%;"><c:out value = "${sessionScope.member.idCard}"/></span>
                </div>
              </div>
							<form action="change_profile" method="post">

							  <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                </br><span style="font-size: 130%;">ชื่อ-นามสกุล :</span>
                </div>
                <div class="col-sm-3" >

                </br><input  type="text" style="font-size: 120%; display:inline;" name="firstname" class="form-control input-group" value="${sessionScope.member.firstName}"/>

                </div>

								<div class="col-sm-3" >
								</br><input  type="text" style="font-size: 125%; display:inline;" name="lastname" class="form-control input-group" value="${sessionScope.member.lastName}"/>
								</div>
              </div>

              <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                </br><span style="font-size: 130%;">เพศ : </span>
                </div>

                <div class="col-sm-6">
                </br><span style="font-size: 130%;">

                  <c:choose>
                    <c:when test="${sessionScope.member.gender.equals('f')}">
											<input type="radio" name="gender" value="m" > Male
											<input type="radio" name="gender" value="f" checked > Female
                    </c:when>
                    <c:otherwise>
											<input type="radio" name="gender" value="m" checked> Male
											<input type="radio" name="gender" value="f" > Female
                    </c:otherwise>
                  </c:choose>
                </span>
                </div>
              </div>

              <div class="row" >
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                </br><span style="font-size: 130%;">เบอร์โทรศัพท์ : </span>
                </div>
                <div class="col-sm-6">
                </br><input type="number" name="telephone" class="form-control" id="telephone" onchange='check_telephone()' value="${sessionScope.member.phoneNumber}">
                </div>
              </div>

              <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                </br><span style="font-size: 130%;">Line ID : </span>
                </div>
                <div class="col-sm-6">
                </br><input type="text" name="lineID" class="form-control" id="lineID" onchange='check_lineId()' autocomplete="off" value="${sessionScope.member.lineId}">
                </div>
              </div>

              <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                </br><span style="font-size: 130%;">ที่อยู่ : </span>
                </div>
                <div class="col-sm-6">
                </br><input type="textarea" name="address" id="address" class="form-control" onchange='check_address()' value="${sessionScope.member.address}">
                </div>
              </div>

              <div class="row">
								<div class="col-sm-10">

								</div>
                <div class="col-sm-2" >
									<div style="float: right;">
											</br></br><button type="button" class="btn btn-info" onclick="location.href='profile.jsp'"> Back</button>
										<input type="submit" class="btn btn-info" value=" Save"></input>

									</div>


              </div>

            </div>
          </div>
            </form>


            </div>
          </div>


 </body>
</html>
