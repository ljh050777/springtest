<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
    <form id="frm">
        <table class="board_view">
            <colgroup>
                <col width="15%"/>
                <col width="35%"/>
                <col width="15%"/>
                <col width="35%"/>
            </colgroup>
            <caption>게시글 상세</caption>
            <tbody>
            <tr>
                <th scope="row">이름</th>
                <td>
                	<input type="text" id="NAME" name="NAME" class="wdp_90" value="${map.name }"/>
                </td>
            </tr>
            <tr>
                <th scope="row">이메일</th>
                <td>
                	<input type="text" id="EMAIL" name="EMAIL" class="wdp_90" value="${map.email }"/>
                </td>
            </tr>
            <tr>
                <th scope="row">메세지</th>
                <td>
                	<input type="text" id="MESSAGE" name="MESSAGE" class="wdp_90" value="${map.message }"/>
                </td>
            </tr>
            <tr>
                <th scope="row">등록번호</th>
                <td>
                	${map.pid }
                	<input type="hidden" id="PID" name="PID" class="wdp_90" value="${map.pid }"/>
                </td>
            </tr>
        </tbody>
        </table>
    </form>
     
    <a href="#this" class="btn" id="list">목록</a>
    <a href="#this" class="btn" id="update">저장</a>
    <a href="#this" class="btn" id="delete">삭제</a>
     
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){ //저장하기 버튼
                e.preventDefault();
                fn_updateBoard();
            });
             
            $("#delete").on("click", function(e){ //삭제하기 버튼
                e.preventDefault();
                fn_deleteBoard();
            });
        });
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openSampleBoardList.do' />");
            comSubmit.submit();
        }
         
        function fn_updateBoard(){
            var comSubmit = new ComSubmit("frm");
            comSubmit.setUrl("<c:url value='/sample/updateBoard.do' />");
            comSubmit.submit();
        }
         
        function fn_deleteBoard(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/deleteBoard.do' />");
            comSubmit.addParam("PID", $("#PID").val());
            comSubmit.submit();
             
        }
    </script>
</body>
</html>