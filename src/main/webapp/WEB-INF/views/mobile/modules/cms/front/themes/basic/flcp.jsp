<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${category.name}</title>
	<script src="${ctxStatic}/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
	<meta name="decorator" content="cms_default_mobile"/>
	<script type="text/javascript">
	var num=1;
	function addMoreFilter(obj){
		var filterTemplate = $("#filterTemplate").html();
		var replaceStr = "_num_";
		filterTemplate = filterTemplate.replace(new RegExp(replaceStr,'gm'),num);
		num++;
		$(obj).before(filterTemplate);
	}
	function submit(){
		$("#flcpForm").submit();
	}
	</script>
	<script type="text/template" id="filterTemplate">
	<div class="weui-cells__title">规则</div>
		<div class="weui-cells weui-cells_form">
		 	<div class="weui-cell">
		        <div class="weui-cell__hd"><label class="weui-label">数池</label></div>
		        <div class="weui-cell__bd">
		            <input class="weui-input" type="text" name = "splitList[_num_].dataStr" placeholder=""/>
		        </div>
			</div>
			<div class="weui-cell">
		        <div class="weui-cell__hd"><label class="weui-label">数量</label></div>
		        <div class="weui-cell__bd">
		            <input class="weui-input" type="text" name = "splitList[_num_].num" placeholder=""/>
		        </div>
			</div>
			<div class="weui-cell weui-cell_select weui-cell_select-after">
        		<div class="weui-cell__hd">
            		<label for="" class="weui-label">类型</label>
        		</div>
        		<div class="weui-cell__bd">
            		<select class="weui-select" name="splitList[_num_].type">
                		<option value="0">最少</option>
						<option value="1">最多</option>
            		</select>
        		</div>
    		</div>
		</div>
	</script>
</head>
<body>
<form action="${ctx }/flcp" method="post" id="flcpForm">
<div class="weui-cells__title">规则</div>
<div class="weui-cells weui-cells_form">
 	<div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">数池</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" type="text" name = "splitList[0].dataStr" placeholder=""/>
        </div>
	</div>
	<div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">数量</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" type="text" name = "splitList[0].num" placeholder=""/>
        </div>
	</div>
	<div class="weui-cell weui-cell_select weui-cell_select-after">
        <div class="weui-cell__hd">
            <label for="" class="weui-label">类型</label>
        </div>
        <div class="weui-cell__bd">
            <select class="weui-select" name="splitList[0].type">
                <option value="0">最少</option>
                <option value="1">最多</option>
            </select>
        </div>
    </div>
</div>
<a href="javascript:;" onclick = "javascript:addMoreFilter(this);" class="weui-cell weui-cell_link">
        <div class="weui-cell__bd">添加更多</div>
    </a>
<a href="javascript:submit();" class="weui-btn weui-btn_primary">提交</a>
<div class="weui-cells weui-cells_form">
 	<div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">数池</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" type="text" name = "dataStr" pattern="[0-9,]*" placeholder="如果为空，则默认1到12"/>
        </div>
	</div>
</div>
<div class="weui-cells weui-cells_form">
	<div class="weui-cell">
	    <div class="weui-cell__hd"><label class="weui-label">生成数量</label></div>
	    <div class="weui-cell__bd">
	        <input class="weui-input" type="number" name="resultNum" value="5" pattern="[0-9]*" placeholder="需要生成的数量"/>
	    </div>
	</div>
</div>
<div class="weui-cells__title">是否平均大小数量</div>
<div class="weui-cells weui-cells_radio">
    <label class="weui-cell weui-check__label" for="x11">
        <div class="weui-cell__bd">
            <p>是</p>
        </div>
        <div class="weui-cell__ft">
            <input type="radio" class="weui-check" name="isBigSmall" value="1" id="x11"  checked="checked">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x12">

        <div class="weui-cell__bd">
            <p>否</p>
        </div>
        <div class="weui-cell__ft">
            <input type="radio" name="isBigSmall" value="0" class="weui-check" id="x12">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
</div>
<div class="weui-cells__title">是否平均奇偶数量</div>
<div class="weui-cells weui-cells_radio">
    <label class="weui-cell weui-check__label" for="x13">
        <div class="weui-cell__bd">
            <p>是</p>
        </div>
        <div class="weui-cell__ft">
            <input type="radio" class="weui-check" name="isJO" value="1" id="x13">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x14">

        <div class="weui-cell__bd">
            <p>否</p>
        </div>
        <div class="weui-cell__ft">
            <input type="radio" name="isJO" value="0" class="weui-check" id="x14" checked="checked">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
</div>
<div class="weui-cells__title">是否平均质数数量</div>
<div class="weui-cells weui-cells_radio">
    <label class="weui-cell weui-check__label" for="x15">
        <div class="weui-cell__bd">
            <p>是</p>
        </div>
        <div class="weui-cell__ft">
            <input type="radio" class="weui-check" name="isZS" value="1" id="x15">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x16">
        <div class="weui-cell__bd">
            <p>否</p>
        </div>
        <div class="weui-cell__ft">
            <input type="radio" name="isZS" value="0" class="weui-check" id="x16" checked="checked">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
</div>
</form>
<article class="weui-article">
<c:forEach var="r" items="${result }">
<h2 class="title">${r }</h2><br>
</c:forEach>
</article>
</body>
</html>