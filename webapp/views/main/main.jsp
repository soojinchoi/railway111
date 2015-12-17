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
<title>은하철도999</title>
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

<!-- 이미지 슬라이드 -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		<li data-target="#carousel-example-generic" data-slide-to="1"></li>
		<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		<li data-target="#carousel-example-generic" data-slide-to="3"></li>
	</ol>
	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
	<div class="item active">
		<img src="/railway999/assets/img/railro01.jpg" alt="...">
		<div class="carousel-caption"></div>
	</div>
	<div class="item">
		<img src="/railway999/assets/img/railro02.jpg" alt="...">
		<div class="carousel-caption"></div>
	</div>
	<div class="item">
		<img src="/railway999/assets/img/railro03.jpg" alt="...">
		<div class="carousel-caption"></div>
	</div>
	<div class="item">
		<img src="/railway999/assets/img/railro04.jpg" alt="...">
		<div class="carousel-caption"></div>
	</div>
	</div>
</div>

<!-- 공지 -->
<div class="form-group">
	<div class="col-lg-11">
		<table class="table table-hover ">
		<thead></thead>
		<tbody>
		<tr class="active">
			<td>공지</td>
			<td id="title">2015하반기 내일로 시즌이 다가옵니다. 올겨울도 멋진 여행하세요~</td>
		</tr>
		<tr class="active">
			<td>이벤트</td>
			<td id="title">베스트 여행스케줄러에게 내일로 7일권 증정 이벤트! </td>
		</tr>
		</tbody>
		</table>
	</div>
	<div class="col-lg-1"><a href="/railway999/views/board/qboard.jsp" class="btn btn-link"><br> 공지사항 더보기</a></div>
</div>
<!-- 999소개 -->
<div class="row">
	<div class="col-lg-12">
		<div id="intro" class="jumbotron">
			<h2>나만의 여행 가이드 은하철도999!</h2>
			<p>여행은 가고싶은데 어디를 가아하지? 여행시간표는 어떻게 짜야하지?
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			</p>
			<p>
				<a href="#" class="btn btn-primary btn-lg">은하철도 999 가입하기</a>
				<a href="#" class="btn btn-info btn-lg">facebook으로 시작하기</a>
			</p>
		</div>
	</div>
</div>
<!-- 999소개 -->
<div class="row">
	<div class="col-lg-12">
		<div id="howtouse" class="jumbotron">
			<h2>나만의 여행 가이드 은하철도999!</h2>
			<p>여행은 가고싶은데 어디를 가아하지? 여행시간표는 어떻게 짜야하지?
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			<br> 여행계획짜기 이제 더이상 고민하지마세요. 은하철도999만 있으면 어디든 편리하게!
			<br> 사용법
			<br> 사용법
			<br> 사용법
			<br> 사용법
			<br> 사용법
			<br> 사용법
			</p>
			<p>
				<a class="btn btn-primary btn-lg">은하철도 999 바로 시작하기</a>
			</p>
		</div>
	</div>
</div>

<div class="container">
	<!-- Footer import -->		
	<c:import url="/views/include/footer.jsp"></c:import>
</div>
</body>
</html>