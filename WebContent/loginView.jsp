<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1">
<title>Login</title>

</head>
<body>
	<div id="login1" class="modal">
		<form method="POST" action="${pageContext.request.contextPath}/LoginServlet"
			class="modal-content animate">
			<div class="imgcontainer">
				<span
					onclick="document.getElementById('login1').style.display='none'"
					class="close" title="Close Modal">&times;</span>
				<h2 style="color:blue">Login Account</h2>
			</div>
			<div class="container">
				<div class="form-group">
					<label for="userName">Username</label> <input type="text"
						class="form-control" id="inputUsername" placeholder="Username"
						name="userName" value="${user.Username}" required autofocus>
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						class="form-control" id="inputPassword" placeholder="Password"
						name="password" value="${user.Userpassword}" required autofocus>
				</div>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="checkRemember"
						name="remember"> <label class="form-check-label"
						for="remember">Remember me</label>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
				<span style="color:red;">${errMsg}</span>
			</div>
			<div class="container" style="background-color: #f1f1f1">
				<button type="button"
					onclick="document.getElementById('login1').style.display='none'"
					class="cancelbtn">Cancel</button>
				<span class="psw">Forgot <a href="javascript:"
							onclick="document.getElementById('forgotPass').style.display='block' ;document.getElementById('login1').style.display='none'"
							style="width: auto;" title="password">password?</a></span>
			</div>
		</form>
	</div>
	<script>
		var modal = document.getElementById('login1');
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
</body>
</html>