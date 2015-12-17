<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/galaxyrailway/assets/css/bootstrap-responsive.css"><link rel="stylesheet" href="/galaxyrailway/assets/css/bootstrap.css" media="screen"><link rel="stylesheet" href="/galaxyrailway/assets/css/custom.min.css">
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
 			<a class="list-group-item" href="/galaxyrailway/views/board/qboard.jsp">Q&A</a>
 			<a class="list-group-item" href="/galaxyrailway/views/board/travelboard.jsp">지금은 여행중</a>
 			<a class="list-group-item" href="/galaxyrailway/views/board/freeboard.jsp">자유게시판</a>
        </div>
    </div>
    <!-------========Table=========-------->
    <br>
	<div class="span9">
    	<table class="table">
        	<thead>
           	<tr> 
           		<th id="boardcategory" width="10%">[자유]</th>
              	<th id="boardtitle">오빠차 뽀바따 null 데리러가</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              	<td id="boardmember">한상우 </td>
              	<td id="boarddate">2015.11.19 09:07</td>

            </tr>
            <tr>
            	<td colspan=2>
            	<div class="col-lg-12">
            		<div class="bs-component"><br>
            		<p>
            	
					오빠차 뽀바따 null 데리러가
					
            		</p>
            		<br>
            		</div>
            	</div>
            	</td>
            </tr>
            <tr>
            	<td></td>
            	<td>
            	<!-- button -->
            	<p class="pull-right"">
           			<a href="#" class="btn btn-link btn-sm">수정</a>
            		<a href="#" class="btn btn-link btn-sm">삭제</a>
        		</p>
        		</td>
        	</tr>
            </tbody>
        </table>      		                     			
				
		<div class="well bs-component">
		<!-------========댓글view=========-------->
		<!-- 댓글1 -->
		<table class="table">
            <tbody>
            <tr>
              	<td id="commentmember" width="10%">이연우 </td>
              	<td id="commentdate">2015.11.19 09:07</td>
              	<td id="commentmember">
              		<p class="pull-right"">
           			<a href="#" class="btn btn-link btn-xs">수정</a>
            		<a href="#" class="btn btn-link btn-xs">삭제</a>
        			</p>
        		</td>
            </tr>
            <tr>
            	<td id="comment" colspan=3>
            	<p>           	
				ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
				</p>
            	</td>
            </tr>
            </tbody>
        </table>
        <!-- 댓글2 -->
		<table class="table">
            <tbody>
            <tr>
              	<td id="commentmember" width="10%">조진영</td>
              	<td id="commentdate">2015.11.19 12:30</td>
              	<td id="commentmember">
              		<p class="pull-right"">
           			<a href="#" class="btn btn-link btn-xs">수정</a>
            		<a href="#" class="btn btn-link btn-xs">삭제</a>
        			</p>
        		</td>
            </tr>
            <tr>
            	<td id="comment" colspan=3>
            	<p>           	
				형......<br>
				ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ
				</p>
            	</td>
            </tr>
            </tbody>
        </table>
 
        <br>
        <!-------========댓글쓰기=========-------->   
        <form class="form-horizontal"> 	
        <div class="form-group">
            <div>
                <textarea class="form-control" rows="4" id="textArea" placeholder="댓글은 당신의 얼굴입니다."></textarea>
            </div>
            <br>
            <p class="pull-right"">
            	<a href="#" class="btn btn-default btn-sm">댓글 등록</a>
            </p>
        </div>
        </form>	                     			
		</div> 
		<br> 
		<br>  
	</div>		
	    
	<!-- Footer import -->		
	<c:import url="/views/include/footer.jsp"></c:import>
</div>
</body>
</html>