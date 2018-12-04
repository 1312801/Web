<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<jsp:include page="Include.jsp" />
</head>
<body>
<div><jsp:include page="Header.jsp" /></div>
<div class="container">
    <div class="row">
         <c:forEach items="${Mobilelist}" var="mobile" varStatus="status" >
                <div class="col-xl-3">
                    <div class="card">
                   <img class="card-img-top" src="..." alt="Card image cap">
                     <div class="card-body">
                         <h5 class="card-title">${mobile.getProductName()}</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-primary">Detail</a>
                          </div>
                    </div>
                </div>
				
				
			</c:forEach>
    
    </div>
</div>

</body>
</html>