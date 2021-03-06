<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/static-head.jsp" %>

    <style>
        .modify-container {
            width: 60%;
            margin: 150px auto;
            position: relative;
        }
        .modify-container .main-title {
            font-size: 24px;
            font-weight: 700;
            text-align: center;
            border-bottom: 2px solid rgb(75, 73, 73);
            padding: 0 20px 15px;
            width: fit-content;
            margin: 20px auto 30px;
        }
        .modify-container .main-content {
            border: 2px solid #ccc;
            border-radius: 20px;
            padding: 10px 25px;
            font-size: 1.1em;
            text-align: justify;
            min-height: 400px;
        }
        .modify-container .custom-btn-group {
            position: absolute;
            bottom: -10%;
            left: 50%;
            transform: translateX(-50%);
        }
    </style>
</head>

<body>

    <div class="wrap">
        <%@ include file="../include/header.jsp" %>

        <div class="modify-container">

            <form action="/emp/modify" method="post">
                <h1 class="main-title">${emp.empNo}번 게시물</h1>

                <input type="hidden" name="empNo" value="${emp.empNo}">

                <div class="mb-3">
                    <label for="exampleFormControlInput1" 
                    class="form-label">작성자</label>

                    <input type="text" class="form-control" 
                    id="exampleFormControlInput1" 
                    placeholder="이름"
                    name="writer" value="${emp.writer}" >

                </div> 
                <div class="mb-3">
                    <label for="exampleFormControlInput2"
                    class="form-label">글제목</label>
                    <input type="text" class="form-control" 
                    id="exampleFormControlInput2" placeholder="제목"
                    name="title"  value="${emp.title}">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1"
                     class="form-label">내용</label>
                    <input type="text" class="form-control"
                    name="content" value="${emp.content}">
                    
                </div>

                <div class="btn-group btn-group-lg custom-btn-group"
                    role="group" >
                    <button type="submit" class="btn btn-warning">완료</button>
                    <button id="list" type="button" 
                    class="btn btn-dark">목록</button>
                </div>



            </form>


          

        </div>


        <%@ include file="../include/footer.jsp" %>
    </div>

    <script>
        const $listBtn = document.getElementById('list');
        $listBtn.onclick = e => {
            location.href = '/emp/list';
        }
    </script>


</body>

</html>