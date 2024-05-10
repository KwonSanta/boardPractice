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
    <div class="row justify-content">
        <div class="col-12">
            <h3 class="mb-4">게시물 목록</h3>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th class="col-1">#</th>
                    <th class="col-3">제목</th>
                    <th class="col-1">작성자</th>
                    <th class="col-2">작성일</th>
                    <th class="col-1">조회수</th>
                    <th class="col-1">좋아요</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${boardList}" var="board">
                    <c:url var="viewLink" value="/board">
                        <c:param name="id" value="${board.id}"/>
                    </c:url>
                    <%--localhost:8080/board?id=${board.id}--%>
                    <tr>
                        <td>${board.id}</td>
                        <td>
                            <a href="${viewLink}">
                                    ${board.title}
                            </a>
                        </td>
                        <td>${board.writer}</td>
                        <td>${board.inserted}</td>
                        <td>${board.views}</td>
                        <td>${board.likes}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%--todo : 페이징 처리--%>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-6">
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">

                    <%-- ⏮️ : 맨앞 버튼--%>
                    <c:if test="${pageInfo.currentPage > 1}">
                        <c:url var="firstPageLink" value="/">
                            <c:param name="page" value="1"/>
                        </c:url>
                        <li class="page-item">
                            <a class="page-link" href="${firstPageLink}">
                                <span aria-hidden="true">⏮️</span>
                            </a>
                        </li>
                    </c:if>

                    <%-- ◀️ : 이전 버튼 --%>
                    <c:if test="${pageInfo.prev > 0}">
                        <c:url var="prevPageLink" value="/">
                            <c:param name="page" value="${pageInfo.prev}"/>
                        </c:url>
                    </c:if>
                    <li class="page-item">
                        <a class="page-link" href="${prevPageLink}">
                            <span aria-hidden="true">◀️</span>
                        </a>
                    </li>

                    <%-- 페이지 번호 링크들 --%>
                    <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" var="pageNumber">
                        <c:url var="pageLink" value="/">
                            <c:param name="page" value="${pageNumber}"></c:param>
                        </c:url>

                        <li class="page-item ${pageInfo.currentPage eq pageNumber ? 'active' : ''}">
                            <a class="page-link" href="${pageLink}">${pageNumber}</a>
                        </li>
                    </c:forEach>

                    <%-- ▶️ : 다음 버튼 --%>
                    <c:if test="${pageInfo.next < pageInfo.endPage}">
                        <c:url var="nextPageLink" value="/">
                            <c:param name="page" value="${pageInfo.next}"/>
                        </c:url>
                    </c:if>
                    <li class="page-item">
                        <a class="page-link" href="${nextPageLink}">
                            <span aria-hidden="true">▶️</span>
                        </a>
                    </li>

                    <%-- ⏭️ : 맨뒤 버튼 --%>
                    <c:if test="${pageInfo.currentPage < pageInfo.totalPages}">
                        <c:url var="lastPageLink" value="/">
                            <c:param name="page" value="${pageInfo.totalPages}"/>
                        </c:url>
                    </c:if>
                    <li class="page-item">
                        <a class="page-link" href="${lastPageLink}">
                            <span aria-hidden="true">⏭️</span>
                        </a>
                    </li>

                </ul>
            </nav>

        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.min.js"
        integrity="sha512-ykZ1QQr0Jy/4ZkvKuqWn4iF3lqPZyij9iRv6sGqLRdTPkY69YX6+7wvVGmsdBbiIfN/8OdsI7HABjvEok6ZopQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
