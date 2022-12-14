<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="VIEWPORT" content="width=device-width, initial-scale=1.0">
<title>jsp/order.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/admin_order.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script defer src="js/admin_order.js"></script>
</head>
<body>

<c:set var="c" value="${ou}" scope="request"/>
<c:if test="${c eq 'ou'}"> 
	<Script>
	 alert("환불이 승인되었습니다.");
	</Script>
</c:if>

<div id='baik_order_view'>
	<h3>주문정보 조회</h3>
	<form name='frm_order_search' id='search' method='post'>
		<input type='search' name='findStr' value="${pageVo.findStr }"/>
	    <input type='hidden' name='nowPage' value="${pageVo.nowPage }"/>
		<input type='button' value='조회' name='btnSelect'/>
	</form>
	<ul>
		<li class='title'> <!-- 타이틀 -->
			<span class='orderNumber'>주문번호</span>
			<span class='id'>아이디</span>
			<span class='category'>카테고리</span>
			<span class='SERIAL'>상품번호</span>
			<span class='price'>가격</span>
			<span class='orderDate'>주문일자</span>
			<span class='status'>주문상태</span>
		</li>
		
		<c:forEach var='v' items="${list }" varStatus='status'>
		<li class='item' onclick="orderView('${v.orderNumber}')">
	        <form name = 'frm_orderView' id='orderNumber' method='post'>
			    <span class='orderNumber'>${v.orderNumber }</span>
               </form>			
				<span class='id'>${v.id }</span>
				<span class='category'>${v.category }</span>
				<span class='SERIAL'>${v.SERIAL }</span>
				<span class='price' >
				  <fmt:formatNumber value='${v.price }' pattern='#,###'>
				  </fmt:formatNumber>
				</span>
				<span class='orderDate'>${v.orderDate }</span>
				<span class='status'>
				    <c:choose>
					 	   <c:when test="${v.status eq '1'}">입금완료</c:when>
					 	   <c:when test="${v.status eq '2'}">배송 중</c:when>
					 	   <c:when test="${v.status eq '3'}">배송완료</c:when>
					 	   <c:when test="${v.status eq '4'}">환불대기</c:when>
				    </c:choose>
 				</span>
		</li>
		</c:forEach>
   	</ul>
		<!-- PageButton -->
		<div class="btn-toolbar" style="justify-content: center;" role="toolbar" aria-label="Toolbar with button groups">
		<c:if test="${pageVo.startPage > 1 }">
		   <div class="btn-group me-2" role="group" aria-label="First group">
		      <button type="button" class="btn btn-outline-light" onclick='movePage(1)'  
		              style="background-color: rgb(183, 154, 113);">Start</button>
		      <button type="button" class="btn btn-outline-light" onclick= 'movePage(${pageVo.startPage - 1})' 
		              style="background-color: rgb(183, 154, 113);"><</button>
		   </div>
		</c:if>
		<c:forEach var='i' begin='${pageVo.startPage }' end='${pageVo.endPage }'>
		   <div class="btn-group me-2" role="group" aria-label="Second group">
		      <button type="button" class="btn btn-outline-light" onclick='movePage(${i })'
		              style="background-color: rgb(183, 154, 113);">${i }</button>
		   </div>
		 </c:forEach>
		 <c:if test="${pageVo.endPage lt pageVo.totPage }">
		   <div class="btn-group" role="group" aria-label="Third group">
		      <button type="button" class="btn btn-outline-light" onclick='movePage(${pageVo.endPage + 1})'
		              style="background-color: rgb(183, 154, 113);">></button>
		      <button type="button" class="btn btn-outline-light" onclick='movePage(${pageVo.totPage })'
		              style="background-color: rgb(183, 154, 113);">End</button>
		   </div>
		  </c:if>
		</div>

</div>

</body>
</html>