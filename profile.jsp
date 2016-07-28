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



      <div class="row" style="background-color:#f2f2f2; padding-top: 5%; border-ra">

        <div class="col-sm-1">

        </div>

        <div class="col-sm-10">
          <ul class="nav nav-tabs">
              <li class="active"><a href="#info">ข้อมูลส่วนตัว</a></li>
              <li><a href="#user">ข้อมูลบัญชีผู้ใช้</a></li>
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

              <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                </br><span style="font-size: 130%;">ชื่อ-นามสกุล :</span>
                </div>
                <div class="col-sm-6">
                </br><span style="font-size: 130%;"><c:out value = "${sessionScope.member.firstName}"/>  <c:out value = "${sessionScope.member.lastName}"/></span>
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
                      <c:out value = "หญิง"/>
                    </c:when>
                    <c:otherwise>
                      <c:out value = "ชาย"/>
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
                </br><span style="font-size: 130%;"><c:out value = "${sessionScope.member.phoneNumber}"/> </span>
                </div>
              </div>

              <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                </br><span style="font-size: 130%;">Line ID : </span>
                </div>
                <div class="col-sm-6">
                </br><span style="font-size: 130%;"><c:out value = "${sessionScope.member.lineId}"/> </span>
                </div>
              </div>

              <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                </br><span style="font-size: 130%;">ที่อยู่ : </span>
                </div>
                <div class="col-sm-6">
                </br><span style="font-size: 130%;"><c:out value = "${sessionScope.member.address}"/> </span>
                </div>
              </div>

              <div class="row">
                <div class="col-sm-10">

                </div>
                <div class="col-sm-2" >
                  <div style="float: right;">
                  </br><div class="col-sm-12"><button type="button" class="btn btn-info glyphicon glyphicon-edit" onclick="location.href='editprofile.jsp'"> Edit</button></div>
                </div>
              </div>
              </div>
            </div>
          </div>
        <div class="tab-pane fade" id="user">
          <div class="col-sm-1">
          </div>
          <div class="col-sm-10" >
          <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-3">
            </br></br><span style="font-size: 130%;">Username : </span>
            </div>
            <div class="col-sm-7" >
            <form class="form-inline" action="change_username" method="post" style="display:inline;">
            <span style="display: inline;">
            </br></br><input  type="text" style="font-size: 120%; display:inline;" name="username" class="form-control input-group" onchange='check_firstName()' value="${sessionScope.user.username}"/>
            <input class="btn btn-primary" style="display:inline;" type="submit" value="Change"/>
            </span>
            </form>
            </div>
          </div>

          <div class="row" >
            <div class="col-sm-2"></div>

            <div class="col-sm-3">
            </br><span style="font-size: 130%;">Password : </span>
            </div>
            <div class="col-sm-6">
            </br><span style="font-size: 130%;"><c:out value = "••••••••"/></span>
            </br></br><button type="button" class="btn btn-info collapsed" data-toggle="collapse" data-target="#change_password">Change password</button>
            <div id="change_password" class="collapse" style="background-color: #e6e6e6; padding:3%">
              <form action="change_password" method="post">
                <div class="row">
                  <div class="col-sm-5">
                    </br><span style="font-size: 130%;">Old Password :</span>
                  </div>
                  <div class="col-sm-7">
                    </br><span style="font-size: 130%;"><input type="password" style="font-size: 100%;" name="old_password" class="form-control" /></span>
                  </div>

                </div>

                <div class="row">
                  <div class="col-sm-5">
                    </br></br><span style="font-size: 130%;">New Password :</span>
                  </div>
                  <div class="col-sm-7">
                    </br></br><span style="font-size: 130%;"><input type="password" style="font-size: 100%;" name="new_password" class="form-control" /></span>
                  </div>

                </div>

                <div class="row">
                  <div class="col-sm-5">
                    <div style="margin-top:10%">
                      </br><span style="font-size: 120%;">Confirm Password :</span>
                    </div>
                  </div>
                  <div class="col-sm-7">
                    <span style="font-size: 130%; margin-top:2%"></br><input type="password" style="font-size: 100%;" name="password_again" class="form-control" /></span>
                  </div>

                </div>



                </br><input class="btn btn-primary" style="display:inline;" type="submit" value="Change"/>
              </form>

            </div>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-2"></div>

            <div class="col-sm-3">
            </br><span style="font-size: 130%;">E-mail :</span>
            </div>
            <div class="col-sm-6">
            </br><span style="font-size: 130%;"><c:out value = "${sessionScope.member.email}"/></span>
          </br></br><button type="button" class="btn btn-info collapsed " data-toggle="collapse" data-target="#change_email">Change e-mail</button>
            <div id="change_email" class="collapse" style="background-color: #e6e6e6; padding:3%">
              <form action="change_email" method="post">
                </br><span style="font-size: 130%;">Enter Password : <input type="password" style="font-size: 120%;" name="password" class="form-control" /></span>
                </br><span style="font-size: 130%;">New e-mail : <input type="text" style="font-size: 120%;" name="new_email" class="form-control" /></span>
                </br><input class="btn btn-primary" style="display:inline;" type="submit" value="Change"/>

              </form>

            </div>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-3"></br><span style="font-size: 130%;">Avatar : </span></div>
            <div class="col-sm-6">
			<br/>
              <form action="change_picture" method="post" enctype="multipart/form-data">
					<input id="input-id" type="file" name="photo" accept="image/*" class="file" data-preview-file-type="text">
              </form>
            </div>
          </div>

        </div>
        </div>
      </div>
    </div>

  </div>

  <script>
    $(document).ready(function(){
        $(".nav-tabs a").click(function(){
            $(this).tab('show');
        });
        $('.nav-tabs a').on('shown.bs.tab', function(event){
            var x = $(event.target).text();         // active tab
            var y = $(event.relatedTarget).text();  // previous tab
            $(".act span").text(x);
            $(".prev span").text(y);
        });
    });
  </script>
 </body>
</html>
