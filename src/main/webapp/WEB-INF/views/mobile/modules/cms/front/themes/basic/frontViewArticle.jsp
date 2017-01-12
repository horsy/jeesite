<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>${article.title} - ${category.name}</title>
	<meta name="decorator" content="cms_default_mobile"/>
</head>
<body>
	<article class="weui-article">
    	<h1>${article.title }</h1>
	    <section>
	        ${article.articleData.content}
	    </section>
    </article>
</body>
</html>