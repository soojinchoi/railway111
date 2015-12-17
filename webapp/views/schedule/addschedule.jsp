<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/railway999/assets/css/bootstrap-responsive.css"><link rel="stylesheet" href="/railway999/assets/css/bootstrap.css" media="screen"><link rel="stylesheet" href="/railway999/assets/css/custom.min.css">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script><script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script><script src="../assets/js/custom.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/js/bootstrap-datetimepicker.min.js"></script><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script><script src='//rawgit.com/tuupola/jquery_chained/master/jquery.chained.min.js'></script>
<title>여행 스케줄 검색 및 추가</title>
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
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
	
	//날짜 및 시간 입력
	$('#date').datetimepicker({
		language : 'ko',
		defalutDate : new Date()
	});
	$('#time').datetimepicker({
		language : 'ko',
		defalutDate : new Time()
	});
	
	//카테고리(열차/관광지/숙박/음식점)선택 view
	function change(sel) {
		var IdNum = sel.options[sel.selectedIndex].value;
		if (IdNum == "rail") {
			document.all["rail"].style.display = "";
			document.all["tour"].style.display = "none";
			document.all["inn"].style.display = "none";
			document.all["eat"].style.display = "none";
		}
		if (IdNum == "tour") {
			document.all["rail"].style.display = "none";
			document.all["tour"].style.display = "";
			document.all["inn"].style.display = "none";
			document.all["eat"].style.display = "none";
		}
		if (IdNum == "inn") {
			document.all["rail"].style.display = "none";
			document.all["tour"].style.display = "none";
			document.all["inn"].style.display = "";
			document.all["eat"].style.display = "none";
		}
		if (IdNum == "eat") {
			document.all["rail"].style.display = "none";
			document.all["tour"].style.display = "none";
			document.all["inn"].style.display = "none";
			document.all["eat"].style.display = "";
		}
	}	
</script>
<script type="text/javascript">
$(document).ready(function() {
 $("#series").chainedTo("#mark");
 $("#se").chainedTo("#ma");
});
</script>
<script type="text/javascript">
//OpenAPI 키 값
var serviceKey = "Y/+8QM9fybwGiks8s1VgspVQNert5/G4DhQhS0LvXzCuOmCpubrUUs+R5OoOE4UwSbgAwOUrRxXMzbYnuPP7Jw==";

$(function() {
	// get 방식으로 XML데이터 크로스 도메인 요청
	$.get("http://openapi.tago.go.kr/openapi/service/TrainInfoService/getCtyCodeList",{
				//파라미터 세팅 , 현재는 키 값만 존재
				"serviceKey" : serviceKey
					}, function(data) {
						var xml = data.responseText;
						
						$(xml).find("item").each(function() {
						// 응답결과 XML을 JSON으로 변경
						console.log('------------------시작--------------------');
						console.log(data.responseText);
						// 반복되는 단위인 item을 추출 --> 배열
						var cityname = $(this).find("cityname").text();
						// json배열을 템플릿에 통째로 지정
						
						var option1 = $("<option>").addClass("cityname").html(cityname);
						$("#mark").append(option1);
						
						console.log('------------------끝--------------------');
						
						});
					});
});
</script>

</head>
<body>	
<!-- 상단네비게이션 import -->
<c:import url="/views/include/header.jsp"></c:import>	

<!-- 본문 시작 -->
<div class="container">

<!-- 페이지 이름 : 여행 스케줄 검색 및 추가 -->
<div class="row">
	<div class="col-lg-12">
		<div class="page-header">
			<h2 id="forms">여행 스케줄 검색 및 추가</h2>
		</div>
	</div>
</div>
	<!-- Form-Left : 시간표 검색 -->
	<div class="row">
		<div class="col-lg-6">
			<div class="well bs-component">
				<form class="form-horizontal">
				<fieldset>
					<div class="form-group"><label for="select" class="col-lg-2 control-label">카테고리</label>
						<div class="col-lg-10">
						<select class="form-control" id="select" onchange="change(this)">
							<option value="rail" selected="selected">열차</option>
							<option value="tour">관광지</option>
							<option value="inn">숙박</option>
							<option value="eat">음식점</option>
						</select>
						</div>
					</div>
				</fieldset>
				</form>
				
				<!-- 열차 검색 -->
				<form id="rail" class="form-horizontal">
				<fieldset>
					<div class="form-group"><label for="select" class="col-lg-2 control-label">날짜선택</label>
						<div class="col-lg-10">
							<input id="Date" class="form-control" type="date">
						</div>
					</div>
					<div class="form-group"><label for="select" class="col-lg-2 control-label">출발지</label>
						<div class="col-lg-5">
							<select id="mark" name="mark" class="form-control">
							</select>
						</div>
						<div class="col-lg-5">
							<select id="series" name="series" class="form-control">
								<option value="">지역선택</option>
								<option value="yong" class="seoul">용산</option>
								<option value="wang" class="seoul">왕십리</option>
								<option value="su" class="kk">수원</option>
								<option value="chun" class="kk">천안</option>
							</select>
						</div>
					</div>
					<div class="form-group"><label for="select" class="col-lg-2 control-label">도착지</label>
						<div class="col-lg-5">
							<select id="ma" name="mark" class="form-control">
								<option value="">시/도선택</option>
								<option value="seoul" >서울특별시</option>
								<option value="kk" >경기도</option>
							</select>
						</div>
						<div class="col-lg-5">
							<select id="se" name="series" class="form-control">
								<option value="">지역선택</option>
								<option value="yong" class="seoul">용산</option>
								<option value="wang" class="seoul">왕십리</option>
								<option value="su" class="kk">수원</option>
								<option value="chun" class="kk">천안</option>
							</select>
						</div>
					</div>
					<div class="form-group"><label for="select" class="col-lg-2 control-label"></label>
						<div class="col-lg-10">
							<a href="#" class="btn btn-default btn-block">검색</a><br>
						</div>
					</div>
				</fieldset>
				
				<!-- 열차 검색 결과 Table -->
				<div class="form-group">
					<table class="table table-striped table-hover">
					<thead>
					<tr>
						<th>출발시간</th><th>도착시간</th><th>열차정보</th><th></th>
					</tr>
					</thead>
					<tbody>
					<tr class="active">
						<td>09:00</td><td>10:00</td><td>무궁화호 4546</td><td><a href="#" class="btn btn-primary btn-xs">추가</a></td>
					</tr>
					</tbody>
					</table>
				</div>
				</form>

				<!-- 관광지 검색 -->
				<form id="tour" class="form-horizontal" style="display: none">
				<fieldset>
					<div class="form-group"><label for="select" class="col-lg-2 control-label">지역</label>
						<div class="col-lg-10">
							<select class="form-control">
								<option>용산</option>
								<option>서울</option>
								<option>대구</option>
							</select>
						</div>
					</div>
					<div class="form-group"><label for="select" class="col-lg-2 control-label">키워드</label>
						<div class="col-lg-10">
							<input id="keyword" class="form-control" type="text" placeholder="예) 전주한옥마을">
						</div>
					</div>
					<div class="form-group"><label for="select" class="col-lg-2 control-label"></label>
						<div class="col-lg-10">
							<a href="#" class="btn btn-default btn-block">검색</a><br>
						</div>
					</div>
				</fieldset>
				
				<!-- 관광지 검색 결과 Table -->
				<div class="form-group">
					<table class="table table-striped table-hover">
					<thead>
					<tr>
						<th>관광지명</th><th>주소</th><th></th>
					</tr>
					</thead>
					<tbody>
					<tr class="active">
						<td>전주한옥마을</td><td>전라북도 전주시 완산구 풍남동3가 15-11</td><td><a href="#modal" class="btn btn-primary btn-xs" data-toggle="modal">추가</a></td>
					</tr>
					</tbody>
					</table>
				</div>
				</form>

				<!-- 숙박 검색 -->
				<form id="inn" class="form-horizontal" style="display: none">
				<fieldset>
					<div class="form-group"><label for="select" class="col-lg-2 control-label">지역</label>
						<div class="col-lg-10">
							<select class="form-control">
								<option>용산</option>
								<option>서울</option>
								<option>대구</option>					
							</select>
						</div>
					</div>
					<div class="form-group"><label for="select" class="col-lg-2 control-label">키워드</label>
						<div class="col-lg-10">
							<input id="keyword" class="form-control" type="text" placeholder="예) 쉼표게스트하우스">
						</div>
					</div>
					<div class="form-group"><label for="select" class="col-lg-2 control-label"></label>
						<div class="col-lg-10">
							<a href="#" class="btn btn-default btn-block">검색</a><br>
						</div>
					</div>
				</fieldset>
				
				<!-- 숙박 검색 결과 Table -->
				<div class="form-group">
					<table class="table table-striped table-hover">
					<thead>
					<tr>
						<th>숙박명</th><th>전화번호</th><th>주소</th><th></th>
					</tr>
					</thead>
					<tbody>
					<tr class="active">
						<td>쉼표게스트하우스</td><td>033-483-8456</td><td>전라북도 전주시 완산구 풍남동3가 15-11</td><td>
						<a href="#modal" class="btn btn-primary btn-xs" data-toggle="modal">추가</a></td>
					</tr>				
					</tbody>
					</table>
				</div>
				</form>

				<!-- 음식점 검색 -->
				<form id="eat" class="form-horizontal" style="display: none">
				<fieldset>
					<div class="form-group"><label for="select" class="col-lg-2 control-label">지역</label>
						<div class="col-lg-10">
							<select class="form-control">
								<option>용산</option>
								<option>서울</option>
								<option>대구</option>
							</select>
						</div>
					</div>
					<div class="form-group"><label for="select" class="col-lg-2 control-label">키워드</label>
						<div class="col-lg-10">
							<input id="keyword" class="form-control" type="text" placeholder="예) 쉼표게스트하우스">
						</div>
					</div>
					<div class="form-group"><label for="select" class="col-lg-2 control-label"></label>
						<div class="col-lg-10">
							<a href="#" class="btn btn-default btn-block">검색</a><br>
						</div>
					</div>
				</fieldset>
				
				<!-- 음식점 검색 결과 Table -->
				<div class="form-group">
					<table class="table table-striped table-hover">
					<thead>
					<tr>
						<th>음식점명</th><th>주소</th><th></th>
					</tr>
					</thead>
					<tbody>
					<tr class="active">
						<td>이성당빵집</td><td>전라북도 군산시 완산구 풍남동3가 15-11</td><td><a href="#modal" class="btn btn-primary btn-xs" data-toggle="modal">추가</a></td>
					</tr>
					</tbody>
					</table>
				</div>
				</form>

		<!-- 날짜 시간 팝업 -->
		<div id="modal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title">날짜 및 시간 선택</h4>
				</div>
				<!-- body -->
				<form class="form-horizontal">
					<div class="modal-body">
						<div class="form-group"><label for="select" class="col-lg-2 control-label">날짜</label>
							<div class="col-lg-10">
								<input id="date" class="form-control" type="date">
							</div>
						</div>
						<div class="form-group"><label for="select" class="col-lg-2 control-label">시작시간</label>
							<div class="col-lg-10">
								<input id="startTime" class="form-control" type="time"></input>
							</div>
						</div>
						<div class="form-group"><label for="select" class="col-lg-2 control-label">종료시간</label>
							<div class="col-lg-10">
								<input id="endTime" class="form-control" type="time"></input>
							</div>
						</div>
					</div>
				</form>
				<!-- footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">추가</button>
				</div>
				</div>
			</div>
		</div>
	</div></div></div>
		
	<!-- Footer import -->		
	<c:import url="/views/include/footer.jsp"></c:import>

	</div>

</body>
</html>