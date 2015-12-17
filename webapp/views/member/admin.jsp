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
	<!-- 페이지 이름 : 회원관리 --> 
 	<div class="row">        
		<div class="page-header">
			<h2 id="forms">회원관리</h2>
		</div>
	</div>
    <!-------========Table=========-------->
    <br>
	<div class="span11">
    	<table class="table table-striped table-hover ">
        	<thead>
           	<tr>
              	<th>아이디</th>
                <th>이름</th>
                <th>가입일</th>
                <th>등급</th>
                <th>탈퇴</th>
            </tr>
            </thead>
            <tbody>
            <tr class="active">
            	<td>jaffar@gmail.com</td>
                <td id="memberName">최수진</td>
                <td id="registerDate">2015.11.20</td>
                <td id="role">
					<select>
						<option value="admin" selected="selected" >admin</option>
						<option value="user" >user</option>
					</select>
				</td>
                <td id="delete"><a href="#" class="btn btn-default btn-xs">탈퇴</a><br></td>
            </tr>
             <tr class="active">
            	<td>cjy5166@naver.com</td>
                <td id="memberName">조진영</td>
                <td id="registerDate">2015.11.20</td>
                <td id="role">
					<select>
						<option value="admin" >admin</option>
						<option value="user" selected="selected" >user</option>
					</select>
				</td>
                <td id="delete"><a href="#" class="btn btn-default btn-xs">탈퇴</a><br></td>
            </tr>
            </tbody>
        </table>     
 		                     			
		<!-- pagination -->	
		<div class="offset1"> 
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
	</div>       
	<!-- Footer import -->		
	<c:import url="/views/include/footer.jsp"></c:import>
</div>
</body>
</html>