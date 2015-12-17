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
			<h2 id="forms">Q&A</h2><br>
			<lable id="forms">&nbsp;&nbsp;999 회원님들께서 궁금하신 사항들을 질문해주세요.</lable>
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
    	<table class="table">
        	<thead>
           	<tr class="qboard" > 
           		<th id="no" width="10%" >${qboard.no }</th>
              	<th id="title">${qboard.title }</th>
            	</tr>
            </thead>
            <tbody>
            <tr>
              	<td id="memberName">관리자 </td>
              	<td id="date">${qboard.createdDate }</td>
              	</tr>
              	  <tr>
            	<td colspan=2>
            	<div class="col-lg-12">
            		<div class="bs-component"><br>
            		<p>${qboard.content }</p>
            		<br>
            		</div>
            	</div>
            	</td>
            </tr>
            	<!-- button -->
            	<p class="pull-right"">
           			<a href="#" class="btn btn-link btn-sm">수정</a>
            		<a href="#" class="btn btn-link btn-sm">삭제</a>
        		</p>
        		</td>
        	</tr>
            </tbody>
        </table> 

	</div>       
	<!-- Footer import -->		
	<c:import url="/views/include/footer.jsp"></c:import>
</div>
</body>
</html>