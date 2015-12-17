<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

<!-- Ajax Start -->
<script>
	var fetchList = function() {
	$.ajax( {
		url : "/railway999/api/qcomment/list",
		type: "get",
		dataType: "json",
		data: "",
		contentType: 'application/json',
		success: function( response ){
			if( response.result == "fail" ) {				
				console.error( response.message );
				return;
			}
			//rendering
			$.each( response.data, function(index, data){
				insertMessage( data, false);
			});
		},
		error: function( jqXHR, status, e ){
			console.error( status + " : " + e );
		}
	});	
}


var insertMessage = function( data, isHead ) {
	// template EJS Library 로 교체할 것
	var html =		
		"<tbody id='tabledelete" + data.qcommentsno +"'>"+"<tr>" +
        "<td id='commentmember' width='10%'>" + data.name + "</td>" +
      	"<td id='commentdate'>" + data.createdDate + "</td>" +
      	"<td id='commentmember'>" +
      		"<p class='pull-right'>" + 
    		"<input class='delete' class='btn btn-link btn-xs'  type='button' data-no='" + data.qcommentsno + "' value='삭제'>" + 
			"</p> " +
		"</td></tr>" +
 	    "<tr>" +
    	"<td id='comment' colspan=3>" +
    	"<p>"+ data.qcontent + "</p></td></tr></tbody>";	
	////////////////////////////////
	
	var $listDiv = $( "#list" );
	if( isHead ) {
		$listDiv.prepend( html );
	} else {
		$listDiv.append( html );
	}
}

	// 게시물 추가 확인 버튼 이벤트 매핑
$(function() {

	//댓글삭제
 	$(document).on("click", ".delete", function() {
	
 		var $btn = $(this);
 		var qcommentsno = $btn.attr( "data-no" );
 		
 		console.log(qcommentsno);
		
		//ajax
		var r=confirm("삭제하시겠습니까?");
		if (r==true){
		$.ajax( {
			url : "/railway999/api/qcomment/delete",
			type: "post",
			data: "qcommentsno=" + qcommentsno, // " vo에 잇는 이름 " 다음 + name은 윗 var값을 가져와서 var이름에 넣어서 data로 들어옴.
			dataType: "json",
			
			success: function( response ){
				console.log( response );
				
				if( response.result == "fail" ) {				
					console.error( response.message );
					return;
				}
				
				$("#tabledelete" + response.data ).remove();
			},
			error: function( jqXHR, status, e ){
				console.error( status + " : " + e );
			}
			
		});
		
		
		}
	}); 
	
 	$("#btn-add").click( function() {

		var qcontent = $("#comment-message" ).val();
		var qboardno = $("#qboardnoco").val();
		console.log("qcontent:"+qcontent);
		console.log("qboardno:"+qboardno);
		
		
		//ajax
		$.ajax( {
			url : "/railway999/api/qcomment/insert",
			type: "post",
			data: "qcontent=" + qcontent + "&qboardno=" + qboardno + "&name=" + name, // " vo에 잇는 이름 " 다음 + name은 윗 var값을 가져와서 var이름에 넣어서 data로 들어옴.
			dataType: "json",
			
			success: function( response ){
				if( response.result == "fail" ) {				
					console.error( response.message );
					return;
				}			
				insertMessage( response.data, false );
			},
			error: function( jqXHR, status, e ){
				console.error( status + " : " + e );
			}
		});
	}); 
 		
 	fetchList();
 	
	});
	
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
           		<th id="no" width="10%" >${qboard.qboardno }</th>
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
            	<tr>
            	<td></td>
            	<td>
            	<!-- button -->
            	<p class="pull-right"">
           			<a href="/railway999/qboard/updateform?no=${qboard.qboardno}" class="btn btn-link btn-sm">수정</a>
            		<a href="/railway999/qboard/delete?no=${qboard.qboardno}" class="btn btn-link btn-sm">삭제</a>
        		</p>
        		</td>
        	</tr>
            </tbody>
        </table> 
        
        <div class="well bs-component">
		<!-------========댓글view=========-------->
		<!-- 댓글1 -->
		<table class="table" id="list">

		</table>
        <br>
        <!-------========댓글쓰기=========-------->   
        <form class="form-horizontal"> 	
        <input type="hidden" name="list" value="insert">
        <div class="form-group">
        <input type="hidden" name="name" id="memberco" value="${qboard.name}">
        <input type="hidden" name="qboardno" id="qboardnoco" value="${qboard.qboardno}">
        <div>
                <textarea class="form-control" name="qcontent" id="comment-message" rows="4" ></textarea>
            </div>
            <br>
            <p class="pull-right">
            	<input type="button" class="btn btn-default btn-sm" id="btn-add" VALUE="댓글등록 ">
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