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

            <h3 class="col-4">회원 정보</h3>
            <hr>
            <div class="mb-3">
                <label class="form-label" for="">USER NAME</label>
                <input class="form-control" type="text">
            </div>
            <div class="mb-3">
                <label class="form-label" for="">이메일</label>
                <input class="form-control" type="email">
            </div>
            <div class="mb-3">
                <label class="form-label" for=""></label>
                <input class="form-control" type="text">
            </div>
            <div class="mb-3">
                <label class="form-label" for=""></label>
                <input class="form-control" type="text">
            </div>
            <div class="mb-3">
                <label class="form-label" for=""></label>
                <input class="form-control" type="text">
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
