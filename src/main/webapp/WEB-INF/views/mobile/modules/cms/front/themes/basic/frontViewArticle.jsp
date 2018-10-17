<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>${article.title} - ${category.name}</title>
	<meta name="decorator" content="cms_default_mobile"/>
	<script type="text/javascript">
		document.title ="${titleName} - ${category.name}";
	</script>
</head>
<body>
	<%-- <article class="weui-article">
	    <section>
	        ${article.articleData.content}
	    </section>
    </article> --%>
    <div class="page-group">
	    <div class="page">
			<header class="bar bar-nav">
		    	<h1 class="title">${article.title}</h1>
		  	</header>
		  	<div class="content">
		  		<div class="content-block">
		  			${article.articleData.content}
		  		</div>
			</div>
		</div>
	</div>
</body>
</html>