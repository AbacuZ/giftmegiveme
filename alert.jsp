<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ include file ="header.jsp" %>

<html>
<head>
<title>Order list | รับฝากซื้อสินค้าจากต่างประเทศเป็นเรื่องง่ายๆ</title>
<meta http-equiv="Content-Language" content="th">
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="img/title-3.ico" />
<script src="bootstrap/3.3.6/js/jquery.min.js"></script>
<script src="bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script>
$(document).ready(function(){
    $("input").click(function(){
        $("p").toggle();
    });
});
</script>
</head>
<body>
    <div class="container" style="padding-top:9%;">
		<a href="index.jsp">หน้าแรก/</a>
		<span>> ประเทศที่ฝากซื้อสินค้า</span><br/></br>
      <div class="table-responsive">
          <input type="button" class="btn btn-info" value="เพิ่มการแจ้งเตือน"><br>
        <form action="alert" method="GET" id="delete"></form>
        <form action="alert" method="GET" id="add">
        <p style="display:none;">
        	<%@include file="countryAlert.html" %>
          <button type="submit" name="country_add" class="btn btn-info" value="add" form="add">เพิ่ม</button>
        </p>
        <table class="table table-hover">
          <thead>
            <tr class="success">
              <th>#</th>
              <th>ประเทศที่อยากได้ของ</th>
              <th>ลบ</th>
            </tr>
          </thead>
          <%int i=1;%>
          <tbody>
            <c:forEach items="${want_buy}" var="buy">
                  <tr>
                    <td><%=i%></td>
                    <td><c:out value="${buy.country}"/></td>
                    <td><button type="submit" name="country_delete" class="btn btn-info" form="delete" value="${buy.country}">ลบ</button></td>
                    <%i++;%>
                  </tr>
            </c:forEach>
          </tbody>
        </table>
        </form>
      </div>
    </div>
  </body>
</html>
