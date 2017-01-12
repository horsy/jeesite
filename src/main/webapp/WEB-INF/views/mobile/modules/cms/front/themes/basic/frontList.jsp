<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${category.name}</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <link rel="stylesheet" href="${ctx }/../static/weui/weui.min.css"/>
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
<%-- 
	<div class="row">
	   <div class="span2">
	   	 <h4>栏目列表</h4>
		 <ol>
		 	<cms:frontCategoryList categoryList="${categoryList}"/>
		 </ol>
		 <h4>推荐阅读</h4>
		 <ol>
		 	<cms:frontArticleHitsTop category="${category}"/>
		 </ol>
	   </div>
	   <div class="span10">
		 <ul class="breadcrumb">
		    <cms:frontCurrentPosition category="${category}"/>
		 </ul>
	   </div>
       <div class="span10">
		  <h4>${category.name}</h4>
		  <c:if test="${category.module eq 'article'}">
			<ul><c:forEach items="${page.list}" var="article">
				<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,96)}</a></li>
			</c:forEach></ul>
			<div class="pagination">${page}</div>
			<script type="text/javascript">
				function page(n,s){
					location="${ctx}/list-${category.id}${urlSuffix}?pageNo="+n+"&pageSize="+s;
				}
			</script>
		  </c:if>
		  <c:if test="${category.module eq 'link'}">
			<ul><c:forEach items="${page.list}" var="link">
				<li><a href="${link.href}" target="_blank" style="color:${link.color}"><c:out value="${link.title}" /></a></li>
			</c:forEach></ul>
		  </c:if>
  	  </div>
   </div> --%>
</body>
</html>