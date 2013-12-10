<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>

<link rel="stylesheet" href="../css/bootstrap.min.css">

<link rel="stylesheet" href="../css/bootstrap-theme.min.css">

<script src="../js/jquery-1.8.2.min.js"></script>

<script src="../js/bootstrap.min.js"></script>


<title>Struts2 Showcase - Fileupload sample</title>
</head>

<body>
	<div class="page-header">
		<h1>Fileupload sample</h1>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">

				<s:actionerror cssClass="alert alert-error" />
				<s:fielderror cssClass="alert alert-error" />
				<s:form action="doUpload" method="POST"
					enctype="multipart/form-data">
					<s:file name="upload" label="File" />
					<s:textfield name="caption" label="Caption" />
					<s:submit value="submit" cssClass="btn btn-primary" />
				</s:form>
			</div>
		</div>
	</div>
</body>
</html>