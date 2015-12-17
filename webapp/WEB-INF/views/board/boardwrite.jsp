
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>

<script type="text/javascript" src="/railway999/assets/js/HuskyEZCreator.js" charset="utf-8"></script>

<title>Q&A</title>

</head>
<body>

<!-- 본문 시작 -->
<div class="container">
	<!-- 페이지 이름 : Q&A --> 
 	<div class="row">        
		<div class="page-header">
			<h2 id="forms">자유게시판</h2><br>
			<label id="forms">&nbsp;&nbsp;자유게시판입니다.</label>
		</div>
	</div>
 	<!-- side 네비게이션 -->
    <div class="col-lg-2 col-md-2 col-sm-3">
        <div class="list-group table-of-contents"> 
 			<a class="list-group-item" href="#buttons">Q&A</a>
 			<a class="list-group-item" href="#typography">지금은 여행중</a>
 			<a class="list-group-item" href="#tables">자유게시판</a>
        </div>
    </div>
    <!-- 글쓰기 폼 -->
    <br>
 <div class="col-lg-10">
	<div class="well bs-component ">   
    <form class="form-horizontal">
		<fieldset>
			<div class="form-group">
				<div class="col-lg-12">
					<input type="text" class="form-control" placeholder="제목">
				</div>
			</div>
			<div class="form-group">
			<div class="col-lg-12">
				<textarea name="ir1" id="ir1" rows="10" cols="117"></textarea>
				</div><br>
            <p class="submitcontent pull-left"><br>
            	<a href="#" class="btn btn-default btn-sm">취소</a>
            	<a href="#" class="btn btn-primary btn-sm">등록</a>
            </p>
			</div>
		</fieldset>
	</form>
	</div>
</div>
</div>
<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "ir1",
    sSkinURI: "/railway999/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});
</script>

</body>
</html>