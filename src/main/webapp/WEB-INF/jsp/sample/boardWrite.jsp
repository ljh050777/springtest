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
                <col width="20%">
                <col width="*"/>
            </colgroup>
            <caption>사용자 등록</caption>
            <tbody>
                <tr>
                    <th scope="row">이름</th>
                    <td><input type="text" id="NAME" name="NAME" class="wdp_90"></input></td>
                </tr>
                <tr>
                    <th scope="row">이메일</th>
                    <td><input type="text" id="EMAIL" name="EMAIL" class="wdp_90"></input></td>
                </tr>
                <tr>
                    <th scope="row">메세지</th>
                    <td><input type="text" id="MESSAGE" name="MESSAGE" class="wdp_90"></input></td>
                </tr>
                <tr>
                    <th scope="row">등록번호</th>
                    <td><input type="text" id="PID" name="PID" class="wdp_90"></input></td>
                </tr>                                
            </tbody>
        </table>
         
        <a href="#this" class="btn" id="write" >저장</a>
        <a href="#this" class="btn" id="list" >목록</a>
    </form>
     
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
    $(document).ready(function(){
        $("#list").on("click", function(e){
            e.preventDefault();
            fn_openBoardList();
        });
        
        $("#write").on("click", function(e){ //작성하기 버튼
            e.preventDefault();
            fn_insertBoard();
        });
    });
     
    function fn_openBoardList(){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/sample/openSampleBoardList.do' />");
        comSubmit.submit();
    }
    
    function fn_insertBoard(){
        var comSubmit = new ComSubmit("frm");
        comSubmit.setUrl("<c:url value='/sample/insertBoard.do' />");
        comSubmit.submit();
    }
</script>
</body>
</html>