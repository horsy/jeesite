<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${category.name}</title>
	<script src="${ctxStatic}/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
	<meta name="decorator" content="cms_default_mobile"/>
	<script type="text/javascript">
	var num=5;
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
	function deleteThisFilter(obj){
		$(obj).parent().next().remove();
		$(obj).parent().remove();
	}
	</script>
	<script type="text/template" id="filterTemplate">
	<div class="weui-cells__title">规则<a href="javascript:;" style="float:right;" onclick = "javascript:deleteThisFilter(this);" class="weui-cell_link">删除 </a></div>
		<div class="weui-cells weui-cells_form">
		 	<div class="weui-cell">
		        <div class="weui-cell__hd"><label class="weui-label">待选数字池</label></div>
		        <div class="weui-cell__bd">
		            <input class="weui-input" type="text" name = "splitList[_num_].dataStr" placeholder=""/>
		        </div>
			</div>
			<div class="weui-cell">
		        <div class="weui-cell__hd"><label class="weui-label">出现的数量</label></div>
		        <div class="weui-cell__bd">
		            <input class="weui-input" type="text" name = "splitList[_num_].numStr" placeholder=""/>
		        </div>
			</div>
		</div>
	</script>
</head>
<body>
<form action="${ctx }/flcp" method="post" id="flcpForm">
<div class="weui-cells__title">规则<a href="javascript:;" style="float:right;" onclick = "javascript:deleteThisFilter(this);" class="weui-cell_link">删除 </a></div>
<div class="weui-cells weui-cells_form">
	<div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">大数数量</label></div>
        <div class="weui-cell__bd">
        	<input class="weui-input" type="hidden" name = "splitList[0].dataStr" value="7,8,9,10,11,12" placeholder=""/>
            <input class="weui-input" type="text" name = "splitList[0].numStr" value="2,3" placeholder=""/>
        </div>
	</div>
</div>
<div class="weui-cells__title">规则<a href="javascript:;" style="float:right;" onclick = "javascript:deleteThisFilter(this);" class="weui-cell_link">删除 </a></div>
<div class="weui-cells weui-cells_form">
	<div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">奇数数量</label></div>
        <div class="weui-cell__bd">
        	<input class="weui-input" type="hidden" name = "splitList[1].dataStr" value="1,3,5,7,9,11" placeholder=""/>
            <input class="weui-input" type="text" name = "splitList[1].numStr" value="2,3" placeholder=""/>
        </div>
	</div>
</div>
<div class="weui-cells__title">规则<a href="javascript:;" style="float:right;" onclick = "javascript:deleteThisFilter(this);" class="weui-cell_link">删除 </a></div>
<div class="weui-cells weui-cells_form">
	<div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">质数数量</label></div>
        <div class="weui-cell__bd">
        	<input class="weui-input" type="hidden" name = "splitList[2].dataStr" value="1,2,3,5,7,11" placeholder=""/>
            <input class="weui-input" type="text" name = "splitList[2].numStr" value="2,3" placeholder=""/>
        </div>
	</div>
</div>
<div class="weui-cells__title">规则<a href="javascript:;" style="float:right;" onclick = "javascript:deleteThisFilter(this);" class="weui-cell_link">删除 </a></div>
<div class="weui-cells weui-cells_form">
	<div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">数据和</label></div>
        <div class="weui-cell__bd">
        	<input class="weui-input" type="hidden" name = "splitList[3].dataStr" value="13" placeholder=""/>
            <input class="weui-input" type="text" name = "splitList[3].numStr" value="30,31,33,34,35,36,37,38,39" placeholder=""/>
        </div>
	</div>
</div>
<div class="weui-cells__title">规则<a href="javascript:;" style="float:right;" onclick = "javascript:deleteThisFilter(this);" class="weui-cell_link">删除 </a></div>
<div class="weui-cells weui-cells_form">
	<div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">跨度</label></div>
        <div class="weui-cell__bd">
        	<input class="weui-input" type="hidden" name = "splitList[4].dataStr" value="14" placeholder=""/>
            <input class="weui-input" type="text" name = "splitList[4].numStr" value="8,9,10,11" placeholder=""/>
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
</form>
</body>
</html>