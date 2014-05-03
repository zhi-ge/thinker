<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<html>
<head>
<title>文章列表</title>
<link href="${ctx}/assets/comp/jquery-ztree/zTreeStyle.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="文章列表" pageTitleContent="cms-文章管理-文章列表" titleIcon="icon-home"/>
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="span2">
						<div class="portlet box purple">
							<div class="portlet-title">
								<h4>
									<i class="diy_icon_04_38"></i>栏目列表
								</h4>
							</div>
							<div class="portlet-body ztree" id="cateTree">
								
							</div>
						</div>
					</div>
					<div class="span10">
						<div class="portlet box purple">
							<div class="portlet-title">
								<h4>
									<i class="diy_icon_04_38"></i>列表
								</h4>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a><a
										href="javascript:;" class="remove"></a>
								</div>
							</div>
							<div class="portlet-body">
								<div class="row-fluid">
									<form class="queryForm span8">
										<div class="span2">
		                                    <div class="control-group">
		                                       <div class="controls">
		                                          <input type="text" id="name" class="m-wrap span12" placeholder="标题">
		                                       </div>
		                                    </div>
	                                 	</div>
	                                 	<div class="span5">
		                                    <div class="control-group">
		                                       <div class="controls">
		                                         <a class="btn blue" href="javascript:void(0)" onclick="javascript:doQuery();">
		                                         	<i class="icon-search"></i>
		                                         	查询</a>
		                                         <button type="reset" class="btn">
		                                         	<i class="icon-trash"></i>清空
		                                         </button>
		                                       </div>
		                                    </div>
	                                 	</div>
									</form>
									<div class="span4 pull-right">
										<a class="btn green" href="javascript:void(0)" onclick="Page.addObj();">
											添加 <i class="icon-plus"></i>
										</a>
									</div>
								</div>
								<table class="table table-striped table-bordered table-hover" id="sample_1">
									
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="/WEB-INF/content/common/plugins/page.jsp"%>
<script type="text/javascript" src="${ctx}/assets/js/cms/article.js"></script>
<script src="${ctx}/assets/comp/jquery-ztree/jquery.ztree.all-3.5.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
		App.activeMenu("/cms/article/list")
		Article.init();
	});
</script>
</body>
</html>