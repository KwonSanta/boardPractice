<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="mb-5 navbar navbar-expand-lg bg-body-tertiary bg-dark border-bottom border-body" data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
            <ul class="navbar-nav">
                <%-- 게시물 목록, 글쓰기, 내정보, 로그인, 회원가입--%>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="add">Write</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Dummy</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/member/list">Member</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">MyPage</a>
                </li>
                <li class="nav-item float-right">
                    <a class="nav-link active" aria-current="page" href="/member/signin">Sign In</a>
                </li>
                <li class="nav-item float-right">
                    <a class="nav-link active" aria-current="page" href="/member/signup">Sign Up</a>
                </li>
            </ul>
        </div>
    </div>
</nav>