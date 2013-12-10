<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<link rel="stylesheet" href="./css/bootstrap.min.css">

	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="./css/bootstrap-theme.min.css">

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="./js/jquery-1.8.2.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="./js/bootstrap.min.js"></script>
	
	<title>Struts2 Showcase - Fileupload sample</title>
</head>

<body>
<div class="page-header">
	<h1>Fileupload sample</h1>
</div>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<ul>
		        <li>ContentType: <s:property value="uploadContentType" /></li>
		        <li>FileName: <s:property value="uploadFileName" /></li>
		        <li>File: <s:property value="upload" /></li>
		        <li>Caption:<s:property value="caption" /></li>
	        </ul>
		</div>
	</div>
</div>

</body>
</html>

