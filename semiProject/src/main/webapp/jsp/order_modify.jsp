<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/order_modify.jsp</title>
<link rel='stylesheet' href='css/order_modify.css'>
<script defer src="js/order_modify.js"></script>
</head>
<body>

<div id='admin_input' class='admin_input'>
<form name="frm_order_modify" action="doJoin" method="POST" class="joinForm">
      <h1 id='csc'>주문정보 수정</h1>                                                                 
      
      <div class="textForm">
      <label>아이디</label>
        <input name="Id" type="text" class="id" value='${vo.id }' readonly/>
      </div>
     
      <div class="textForm">
      <label>카테고리</label>
        <input id="category" type="text" size='35' value='${vo.category }' readonly/>
      </div>
      <div class="textForm">
        <label>상품번호</label>
        <input name="SERIAL" type="text" class="SERIAL" value='${vo.SERIAL }' readonly>
      </div>
        <div class="textForm">
        <label>가   격</label>
        <span class="price">
         <fmt:formatNumber value='${vo.price }' pattern='#,###'>
	     </fmt:formatNumber>
	     </span>
      </div>
      <div class="textForm">
        <label>주문번호</label>
        <input name="orderNumber" type="text" class="orderNumber" value='${vo.orderNumber}' readonly>
      </div>
      <div class="textForm">
      	<label>주문날짜</label>
        <input name="orderDate" type="text" class="orderDate" value='${vo.orderDate }' readonly>
      </div>
      <div class="textForm">
      	<label>주문상태</label>
		<span id='status' class='status'>  
		<c:choose>
			<c:when test="${vo.status eq '1'}">입금완료</c:when>
			<c:when test="${vo.status eq '2'}">배송 중</c:when>
			<c:when test="${vo.status eq '3'}">배송완료</c:when>
			<c:when test="${vo.status eq '4'}">환불대기</c:when>
		 </c:choose>
		 </span>
      </div>
      
      <div class='btnZone'>
      	<span></span>
        <input type='button' value='환불 승인' id='btn_order_Delete' />
        <input type='button' value='취소' id='btn_order_Select' />
      </div>
      
      <input type="hidden" name="findStr" value=""/>
      <input type="hidden" name="nowPage" value="1"/>
    </form>
</div>
</body>
</html>