<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div><jsp:include page="loginView.jsp" /></div>
<div><jsp:include page="forgotPassword.jsp" /></div>
<div><jsp:include page="registerView.jsp" /></div>

<jsp:include page="Include.jsp" />
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/" style="font-size: 25px;">Navbar</a>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" title="mobile">Mobile</a>
      </li>
      <c:choose>
		<c:when test="${loginedUser.getUserName()==null}">
       <li class="nav-item">
      
        <a class="nav-link" href="javascript:" title="login" onclick="document.getElementById('login1').style.display='block'">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="javascript:" title="register" onclick="document.getElementById('register1').style.display='block'">Register</a>
      </li>
     
        </c:when>
	  <c:otherwise>
	  
	 <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/userInfo">${loginedUser.getUserName()}</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/Logout" >Logout</a>
      </li>
	  <c:if test="${loginedUser.getAdmin()!=0 }">
	  <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/Admin">Admin</a>
      </li>
      
	  </c:if>
	 </c:otherwise>
	 
</c:choose>
    </ul>
  </div>
</nav>