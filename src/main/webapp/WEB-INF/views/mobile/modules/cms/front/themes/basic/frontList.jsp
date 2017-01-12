<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${category.name}</title>
	<meta name="decorator" content="cms_default_mobile"/>
</head>
<body>
<c:if test="${category.module eq 'article'}">
	<c:forEach items="${page.list}" var="article">
		<div class="weui-cells">
		    <a class="weui-cell weui-cell_access" href="${article.url}">
		        <div class="weui-cell__bd">
		            <p>${fns:abbr(article.title,40)}</p>
		        </div>
		        <div class="weui-cell__ft">
		        </div>
		    </a>
		</div>
	</c:forEach>
</c:if>
</body>
</html>