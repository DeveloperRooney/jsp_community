<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Daisy UI -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1/dist/tailwind.min.css" rel="stylesheet" type="text/css" />
<link href="https://cdn.jsdelivr.net/npm/daisyui@1.9.0/dist/full.css" rel="stylesheet" type="text/css" />


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
			<form action="" method="post" name="ariticle_frm">
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
						class="textarea textarea-bordered h-56" placeholder="내용"></textarea>
				</div>
			</form>
		</div>
	</section>

</body>
</html>