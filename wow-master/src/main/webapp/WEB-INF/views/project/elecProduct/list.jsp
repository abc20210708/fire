<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
 


<head>
    <div class="wrap">

        <div class="btn-group btn-group-lg custom-btn-group" role="group" >

            <button id="list" type="button" class="btn btn-dark">상품목록</button>
           
          


        </div>
    </div>

            <script>
                  //상품 목록 버튼 이벤트
                const $listBtn = document.getElementById('list');

                $listBtn.onclick = e => {
                    var list = '<c:out value="${elec}"/>';
                    console.log(list);
                };


               
            </script>

