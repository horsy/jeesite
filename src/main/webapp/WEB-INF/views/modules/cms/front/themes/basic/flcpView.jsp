<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${category.name}</title>
	<meta name="decorator" content="cms_default_mobile"/>
</head>
<body>
<div class="weui-cells weui-cells_form">
 	<div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">总数：</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" type="text" value="${fn:length(result) }" name = "splitList[0].dataStr" placeholder=""/>
        </div>
	</div>
</div>
	
<article class="weui-article">
<c:forEach var="r" items="${result }">
<h2 class="title">${r }</h2><br>
</c:forEach>
</article>
</body>
</html>