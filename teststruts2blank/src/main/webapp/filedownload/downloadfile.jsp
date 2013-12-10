<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>

	<link rel="stylesheet" href="../css/bootstrap.min.css">

	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="../css/bootstrap-theme.min.css">

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="../js/jquery-1.8.2.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="../js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="../styles/bootstrap-responsive.min.css">
	
    <title>Struts2 Showcase - File Download</title>
</head>

<body>
	<div class="page-header">
		<h1>File Download Example</h1>
	</div>

    <div class="container-fluid">
	    <div class="row-fluid">
		    
		    <div class="span6" style="text-align: center;">
			    <div class="alert alert-info">
				    The browser should display the Struts logo.
			    </div>

			    <s:url var="url" action="download">
			    	<s:param name="inputPath" value="/filedownload"></s:param>
			    </s:url>
			    <s:a href="%{url}" cssClass="btn btn-large btn-info"><i class="icon-picture"></i> Download image(jpg) file.</s:a>
		    </div>



		    
		    <div class="span6" style="text-align: center;">
			    <div class="alert alert-info">
				    The browser should prompt for a location to save the ZIP file.
			    </div>

			    <s:url var="url" action="download2"/>
			    <s:a href="%{url}" cssClass="btn btn-large btn-info"><i class="icon-download-alt"></i> Download ZIP file.</s:a>
		    </div>
	    </div>
    </div>
</body>
</html>

