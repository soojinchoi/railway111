<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/railway999/assets/css/bootstrap-responsive.css"><link rel="stylesheet" href="/railway999/assets/css/bootstrap.css" media="screen"><link rel="stylesheet" href="/railway999/assets/css/custom.min.css">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script><script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script><script src="../assets/js/custom.js"></script><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<title>Q&A</title>
<script>
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-23019901-1' ]);
	_gaq.push([ '_setDomainName', "bootswatch.com" ]);
	_gaq.push([ '_setAllowLinker', true ]);
	_gaq.push([ '_trackPageview' ]);
	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>
</head>
<body>
<!-- 상단네비게이션 import -->
<c:import url="/views/include/header.jsp"></c:import>	
<!-- 본문 시작 -->
<div class="container">
	<!-- 페이지 이름 : Q&A --> 
 	<div class="row">        
		<div class="page-header">
			<h2 id="forms">자유게시판</h2><br>
			<lable id="forms">&nbsp;&nbsp;자유게시판입니다.</lable>
		</div>
	</div>
 	<!-- side 네비게이션 -->
    <div class="col-lg-2 col-md-2 col-sm-3">
        <div class="list-group table-of-contents"> 
 			<a class="list-group-item" href="/railway999/views/board/qboard.jsp">Q&A</a>
 			<a class="list-group-item" href="/railway999/views/board/travelboard.jsp">지금은 여행중</a>
 			<a class="list-group-item" href="/railway999/views/board/freeboard.jsp">자유게시판</a>
        </div>
    </div>
    <!-------========Table=========-------->
    <br>
	<div class="span9">
    	<table class="table table-striped table-hover ">
        	<thead>
           	<tr>
              	<th>#</th>
                <th>제목</th>
                <th>글쓴이</th>
                <th>날짜</th>
                <th>조회</th>
            </tr>
            </thead>
            <tbody>
            <tr class="active">
            	<td>4</td>
                <td id="title"><a href="/railway999/views/board/boardviewform.jsp">오빠차 뽀바따 null 데리러가</a></td>
                <td id="memberName">한상우</td>
                <td id="date">2015.11.18</td>
                <td id="cntView">3</td>
            </tr>
            <tr class="active">
            	<td>4</td>
                <td id="title">기차시간표 업데이트는 언제되나요?</td>
                <td id="memberName">이연우</td>
                <td id="date">2015.11.18</td>
                <td id="cntView">3</td>
            </tr>
            <tr class="active">
            	<td>4</td>
                <td id="title">배고픔</td>
                <td id="memberName">표종덕</td>
                <td id="date">2015.11.18</td>
                <td id="cntView">3</td>
            </tr>
            <tr class="active">
            	<td>4</td>
                <td id="title">아이졸려</td>
                <td id="memberName">조진영</td>
                <td id="date">2015.11.18</td>
                <td id="cntView">3</td>
            </tr>
            </tbody>
        </table>     
 		                     			
		<!-- pagination -->	
		<div> 
			<ul class="pagination">
                <li class="disabled"><a href="#">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
            </div>
            <div class="offset8">
            <a href="#" class="btn btn-primary">글쓰기</a><br><br><br><br>
            </div>
	</div>       
	<!-- Footer import -->		
	<c:import url="/views/include/footer.jsp"></c:import>
</div>
</body>
</html>