<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Daisy UI -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1/dist/tailwind.min.css" rel="stylesheet" type="text/css" />
<link href="https://cdn.jsdelivr.net/npm/daisyui@1.9.0/dist/full.css" rel="stylesheet" type="text/css" />


<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/common.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/font.css">


<title>JSP :: BOARD</title>

<style>

.container {

	width : 900px;
	margin : 0 auto;

}

</style>

</head>
<body>
	<section class="section section-article-write">
		<div class="container">
			<script>
			
				let ArticleWrite__submitDone = false;
				function ArticleWrite__submit() {
					if (ArticleWrite__submitDone) {
						return;
					}
					
					if (article_frm.title.value == "") {
						alert("제목을 입력해 주세요.");
						article_frm.title.focus();
						return;
					}else if (article_frm.body.value == "") {
						alert("내용을 입력해 주세요.");
						article_frm.body.focus();
						return;
					}
					
					article_frm.submit();
					ArticleWrite__submitDone = true;
				}
			</script>
			<form action="../article/doWrite" method="post" name="article_frm" onsubmit="return false;">
				<div class="form-control">
					<span class="label-text">제목</span>
					<div>
						<input class="input input-sm input-bordered" name="title" maxlength="100" type="text"
							placeholder="제목을 입력해 주세요.">
					</div>
				</div>
				<div class="form-control">
					<label class="label">
						<span class="label-text">내용</span>
					</label>
					<textarea name="body" maxlength="2000"
						class="textarea textarea-bordered h-56" placeholder="내용을 입력해 주세요."></textarea>
				</div>
				<div class="btns">
					<button type="submit" class="btn btn-link" onclick="ArticleWrite__submit()">작성</button>
					<button type="button" class="btn btn-link">취소</button>
				</div>
			</form>
		</div>
	</section>

</body>
</html>