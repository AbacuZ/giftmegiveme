<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ include file ="header.jsp" %>
<html>
<head>
	<title>Order list | รับฝากซื้อสินค้าจากต่างประเทศเป็นเรื่องง่ายๆ</title>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
	<link rel="shortcut icon" href="img/title-3.ico" />
	<link rel="stylesheet" href="dist/css/lightbox.min.css">
</head>
<body>
    <div class="container" style="padding-top:9%;">
		<a href="index.jsp">หน้าแรก</a>
		<span>> รายการที่ฝากซื้อ</span><br/></br>
      <div class="table-responsive">
        <table class="table table-hover">
          <thead>
            <tr class="success">
							<th>ประเทศ</th>
              <th>คนที่เราฝากซื้อ</th>
              <th>สินค้า</th>
              <th>ราคา</th>
              <th>จำนวน</th>
              <th>รูปภาพ</th>
              <th>วันที่ทำรายการ</th>
							<th>รายละเอียด</th>
            </tr>
          </thead>
          <tbody>
						<% int count = 0;%>
            <c:forEach items="${order_history}" var="order">
            <tr class="info">
							<td><c:out value="${order.country}"/></td>
              <td><c:out value="${order.nameMember}"/></td>
              <td><c:out value="${order.productName}"/></td>
              <td><fmt:formatNumber type="number" minFractionDigits="2" value="${order.priceProduct}" /></td>
              <td><c:out value="${order.piece}"/></td>
							<td><c:out value="${order.travelId}"/></td>
			  <c:choose>
                <c:when test="${order.picProduct.equals('')}">
					<td>
					<a href="product/no_image_thumb.gif" data-lightbox="example-1">
						<img class="example-image" src="product/no_image_thumb.gif" alt="image-1" />
					</a>
					</td>
				</c:when>
                <c:otherwise>
					<td>
					<a href="product/<c:out value='${order.picProduct}'/>" data-lightbox="example-1">
						<img class="example-image" src="product/<c:out value='${order.picProduct}'/>" alt="image-1" />
					</a>
					</td>
				</c:otherwise>
              </c:choose>
              <td><c:out value="${order.currentDate}"/></!td>

            </tr>
						<% count++;%>
          </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
	<script src="dist/js/lightbox-plus-jquery.min.js"></script>
  </body>
</html>
