<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="VIEWPORT" content="width=device-width, initial-scale=1.0">
<title>jsp/order.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="css/admin_order.css">
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script defer src="js/admin_order.js"></script>
</head>
<body>

<div id='baik_order_view'>
	<h3>주문정보 조회</h3>
	<form name='frm_order_search' id='search' method='post'>
		<input type='search' name='findStr' value="${pageVo.findStr }"/>
		<input type='button' value='입력' name='btnMemberSearch'/>
	</form>
	<ul>
		<li class='title'> <!-- 타이틀 -->
			<span class='id'>아이디</span>
			<span class='category'>카테고리</span>
			<span class='SERIAL'>상품번호</span>
			<span class='price'>가격</span>
			<span class='orderNumber'>주문번호</span>
			<span class='orderDate'>주문일자</span>
			<span class='status'>주문상태</span>
		</li>
		
		<!--<c:forEach var='v' items="${list }" varStatus='status'>-->
		<li class='item' onclick="orderView('${v.id}')">
				<span class='id'>1</span>
				<span class='category'>2</span>
				<span class='SERIAL'>3</span>
				<span class='price'>4</span>
				<span class='orderNumber'>5</span>
				<span class='orderDate'>6</span>
				<span class='status'>7</span>
		</li>
   	</ul>
		<!-- PageButton -->
		<div class="btn-toolbar" style="justify-content: center;" role="toolbar" aria-label="Toolbar with button groups">
		<!-- <c:if test="${pageVo.startPage > 1 }"> -->
		   <div class="btn-group me-2" role="group" aria-label="First group">
		      <button type="button" class="btn btn-outline-light" onclick='movePage(1)'  
		              style="background-color: rgb(183, 154, 113);">Start</button>
		      <button type="button" class="btn btn-outline-light" onclick= 'movePage(${pageVo.startPage - 1})' 
		              style="background-color: rgb(183, 154, 113);"><</button>
		   </div>
		<!--</c:if>-->   
		   <!--<c:forEach var='i' begin='${pageVo.startPage }' end='${pageVo.endPage }'>-->
		   <div class="btn-group me-2" role="group" aria-label="Second group">
		      <button type="button" class="btn btn-outline-light" onclick='movePage(${i })'
		              style="background-color: rgb(183, 154, 113);">${i }</button>
		   </div>
		   <!--</c:forEach>-->
		   <!--<c:if test="${pageVo.endPage lt pageVo.totPage }">-->
		   <div class="btn-group" role="group" aria-label="Third group">
		      <button type="button" class="btn btn-outline-light" onclick='movePage(${pageVo.endPage + 1})'
		              style="background-color: rgb(183, 154, 113);">></button>
		      <button type="button" class="btn btn-outline-light" onclick='movePage(${pageVo.totPage })'
		              style="background-color: rgb(183, 154, 113);">End</button>
		   </div>
		   <!-- </c:if> -->
		</div>
</div>

</body>
</html>