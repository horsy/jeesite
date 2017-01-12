<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>${article.title} - ${category.name}</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <link rel="stylesheet" href="${ctx }/../static/weui/weui.min.css"/>
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