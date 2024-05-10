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

            <h3 class="mb-4">${board.id}번 게시물</h3>
            <div class="mb-3">
                <label class="form-label" for="inputTitle">제목</label>
                <input class="form-control" value="${board.title}" name="title" id="inputTitle" type="text" readonly>
            </div>
            <div class="mb-3">
                <label class="form-label" for="inputContent">내용</label>
                <textarea class="form-control" name="content" id="inputContent" cols="30" rows="10" readonly>${board.content}
                </textarea>
            </div>
            <div class="mb-3">
                <label class="form-label" for="inputWriter">작성자</label>
                <input class="form-control" value="${board.writer}" name="writer" id="inputWriter" type="text" readonly>
            </div>

            <a class="btn btn-primary" href="/">목록</a>
            <%--삭제--%>

            <form action="/delete" method="post">
                <input type="number" name="id" hidden="" value="${board.id}">
                <button class="btn btn-danger">삭제</button>
            </form>

            <%--수정--%>
            <c:url var="modifyLink" value="/board/modify">
                <c:param name="id" value="${board.id}"/>
            </c:url>
            <a class="btn btn-secondary" href="${modifyLink}">수정</a>

        </div>
    </div>
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
