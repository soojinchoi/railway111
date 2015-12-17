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
<title>회원가입</title>
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
<!-- 페이지 이름 : 회원가입 --> 
<div class="row">
	<div class="col-lg-12">
		<div class="page-header">
			<h2 id="forms">회원가입</h2><br>
			<lable id="forms">&nbsp;은하철도999에 오신 것을 환영합니다.</lable>
		</div>
	</div>
		
	<!-- FORM -->
		<div class="col-lg-6">
			<div class="well bs-component ">
				<form class="form-horizontal">
					<fieldset>
						<div class="form-group"><label for="inputName" class="col-lg-2 control-label">이름</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputName" placeholder="이름">
							</div>
						</div>
						<div class="form-group"><label for="inputEmail" class="col-lg-2 control-label">ID</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputEmail" placeholder="Email">
							</div>
						</div>
						<div class="form-group"><label for="inputPassword" class="col-lg-2 control-label">비밀번호</label>
							<div class="col-lg-10">
								<input type="password" class="form-control" id="inputPassword" placeholder="비밀번호">
							</div>
						</div>
						<div class="form-group"><label for="confirmPassword" class="col-lg-2 control-label">비밀번호 확인</label>
							<div class="col-lg-10">
								<input type="password" class="form-control" id="confirmPassword" placeholder="비밀번호 확인">
							</div>
						</div>
						<div class="form-group"><label class="col-lg-2 control-label">성별</label>
                    	<div class="col-lg-10">
                      		<div class="radio">
                        		<label><input type="radio" name="optionsRadios" id="male" value="male" checked="checked">남자</label>
                      		</div>
                      		<div class="radio">
                        		<label><input type="radio" name="optionsRadios" id="female" value="female">여자</label>
                      		</div>
                    	</div>
                  		</div>
						<div class="form-group">
							<div class="col-lg-10 col-lg-offset-2 control-label">
								<button type="submit" class="btn btn-primary btn-block">은하철도999 가입!</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>

<!-- Footer import -->		
<c:import url="/views/include/footer.jsp"></c:import>

</div>
</body>
</html>