<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
    <table class="board_view">
        <colgroup>
            <col width="15%"/>
            <col width="35%"/>
            <col width="15%"/>
            <col width="35%"/>
        </colgroup>
        <caption>사용자 상세</caption>
        <tbody>
            <tr>
                <th scope="row">이름</th>
                <td>${map.name}</td>
            </tr>
            <tr>
                <th scope="row">이메일</th>
                <td>${map.email}</td>
            </tr>
            <tr>
                <th scope="row">메세지</th>
                <td>${map.message}</td>
            </tr>
            <tr>
                <th scope="row">등록번호</th>
                <td>${map.pid}</td>
            </tr>
        </tbody>
    </table>
     
    <a href="#this" class="btn" id="list">목록</a>
    <a href="#this" class="btn" id="update">수정</a>
     
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openBoardUpdate();
            });
        });
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openSampleBoardList.do' />");
            comSubmit.submit();
        }
         
        function fn_openBoardUpdate(){
            var pid = "${map.pid}";            
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardUpdate.do' />");
            comSubmit.addParam("PID", pid);
            comSubmit.submit();
        }
    </script>
</body>
</html>