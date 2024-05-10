<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css"
          integrity="sha512-jnSuA4Ss2PkkikSOLtYs8BlYIeeIK1h99ty4YfvRPAlzr377vr3CXDb7sb7eEEBYjDtcYj+AjBH3FLv5uSJuXg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>

<c:import url="/WEB-INF/fragment/navbar.jsp"/>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-6">
            
            <h3 class="mb-3">회원 가입</h3>
            <form action="/member/signup" method="post">
                <div class="mb-3">
                    <label for="inputEmail" class="form-label">이메일</label>
                    <input name="email" id="inputEmail" type="email" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="inputPassword" class="form-label">암호</label>
                    <input name="pwd" id="inputPassword" type="password" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="inputAddress" class="form-label">주소</label>
                    <input name="address" id="inputAddress" type="text" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="inputName" class="form-label">이름</label>
                    <input name="name" id="inputName" type="text" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="inputBirthDate" class="form-label">생년월일</label>
                    <input name="birthDate" id="inputBirthDate" type="date" class="form-control" required>
                </div>
                <div class="">
                    <button class="btn btn-primary">가입</button>
                </div>
            </form>
            
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>