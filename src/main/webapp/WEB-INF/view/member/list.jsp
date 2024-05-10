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

            <h3 class="mb-4">회원 목록</h3>
            <table class="table">
                <thead class="table-light">
                <tr>
                    <th>#</th>
                    <th>email</th>
                    <th>password</th>
                    <th>name</th>
                    <th>address</th>
                    <th>birth day</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${memberList}" var="member">
                    <tr>
                        <%-- /member/info?id=xxx--%>
                        <c:url value="/member/info" var="memberInfoLink">
                            <c:param name="id" value="${member.id}"/>
                        </c:url>
                        <td>${member.id}</td>
                        <td>
                            <a class="link-info" href="${memberInfoLink}">
                                ${member.email}
                            </a>
                        </td>
                        <td>${member.pwd}</td>
                        <td>${member.name}</td>
                        <td>${member.address}</td>
                        <td>${member.birthDate}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
