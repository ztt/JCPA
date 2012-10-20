<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%pageTitle="Help"; %>
<%@ include file="header.jsp" %>

<style>
.clausetitle{background:url(css/images/close.png) no-repeat;border: solid 1px #CCC;padding:5px;border-radius:5px;font-size:16px;cursor:pointer;}
.clausetitle.closed{background:url(css/images/open.png) no-repeat;}
.clausetitle span{margin-left: 36px;}
.deals{margin-left: 40px;}
.dealtitle{background:url(css/images/close_small.png) no-repeat;border: solid 1px #CCC;padding:3px;border-radius:3px;font-size:13px;cursor:pointer;}
.dealtitle.closed{background:url(css/images/open_small.png) no-repeat;}
.dealtitle span{margin-left: 27px;}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$(".clause").each(function(){
		var clause=this;
		$(".clausetitle",clause).click(function(){
			$(this).toggleClass("closed");
			$(".deals",clause).toggle();
		});
	});
	$(".deal").each(function(){
		var deal=this;
		$(".dealtitle",deal).click(function(){
			$(this).toggleClass("closed");
			$(".dealtext",deal).toggle();
		});
	});
});
</script>

<hr class="space">
<h2 class="aCenter cBlue">Jcpa Manual</h2>
<div id="clauses">
	<div class="clause">
		<div class="clausetitle"><span>系统功能和使用简介</span></div>
		<div class="deals">
			<div class="deal">
				<div class="dealtitle"><span>系统简介</span></div>
				<div class="dealtext">Java Code Performance Analysis (JCPA)  is a tool to scan  java source code and provide performance recommendations.</div>
			</div>
		</div>
	</div>
	<div class="clause">
		<div class="clausetitle"><span>Patterns详解</span></div>
		<div class="deals">
		</div>
	</div>
	<div class="clause">
		<div class="clausetitle"><span>常见问题以及解决方案</span></div>
		<div class="deals">
		</div>
	</div>
</div>
<hr class="space">
<%@ include file="footer.jsp" %>
