<%@ page contentType="text/html; charset=UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mobile Cloud</title>

<meta http-equiv="Cache-Control" content="no-store">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet">

<!-- Add custom CSS here -->
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.min.css">

<!-- JavaScript -->
<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>

<!-- Page Specific Plugins -->
<script
	src="${pageContext.request.contextPath}/js/jquery.tablesorter.js"></script>
<script src="${pageContext.request.contextPath}/js/tables.js"></script>

<!-- Ickeck -->
<link href="${pageContext.request.contextPath}/js/icheck/skins/all.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery.icheck.min.js"></script>

<!-- Date Picker -->
<link
	href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$(".vm").addClass("selected");
	});
</script>
<style id="clearly_highlighting_css" type="text/css">
/* selection */
html.clearly_highlighting_enabled ::-moz-selection {
	background: rgba(246, 238, 150, 0.99);
}

html.clearly_highlighting_enabled ::selection {
	background: rgba(246, 238, 150, 0.99);
} /* cursor */
html.clearly_highlighting_enabled {
	/* cursor and hot-spot position -- requires a default cursor, after the URL one */
	cursor:
		url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--cursor.png")
		14 16, text;
} /* highlight tag */
em.clearly_highlight_element {
	font-style: inherit !important;
	font-weight: inherit !important;
	background-image:
		url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--yellow.png");
	background-repeat: repeat-x;
	background-position: top left;
	background-size: 100% 100%;
} /* the delete-buttons are positioned relative to this */
em.clearly_highlight_element.clearly_highlight_first {
	position: relative;
} /* delete buttons */
em.clearly_highlight_element a.clearly_highlight_delete_element {
	display: none;
	cursor: pointer;
	padding: 0;
	margin: 0;
	line-height: 0;
	position: absolute;
	width: 34px;
	height: 34px;
	left: -17px;
	top: -17px;
	background-image:
		url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--delete-sprite.png");
	background-repeat: no-repeat;
	background-position: 0px 0px;
}

em.clearly_highlight_element a.clearly_highlight_delete_element:hover {
	background-position: -34px 0px;
} /* retina */
@media ( min--moz-device-pixel-ratio : 2) , ( -webkit-min-device-pixel-ratio : 2)
		, ( min-device-pixel-ratio : 2) {
	em.clearly_highlight_element {
		background-image:
			url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--yellow@2x.png");
	}
	em.clearly_highlight_element a.clearly_highlight_delete_element {
		background-image:
			url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--delete-sprite@2x.png");
		background-size: 68px 34px;
	}
}
</style>
<style>
[touch-action="none"] {
	-ms-touch-action: none;
	touch-action: none;
}

[touch-action="pan-x"] {
	-ms-touch-action: pan-x;
	touch-action: pan-x;
}

[touch-action="pan-y"] {
	-ms-touch-action: pan-y;
	touch-action: pan-y;
}

[touch-action="scroll"],[touch-action="pan-x pan-y"],[touch-action="pan-y pan-x"]
	{
	-ms-touch-action: pan-x pan-y;
	touch-action: pan-x pan-y;
}
</style>
</head>

<body style="">
	<div id="container">
		<!-- Sidebar -->
		<div class="navigation">
			<div class="navigation-profile">
				<a class="avatar"
					style="background-image: url(${pageContext.request.contextPath}/image/poweroff.png)"
					href="${pageContext.request.contextPath}/logout" title="Log out"></a>
				<p class="user-name" style="color: white;">
					mdcservice <a href="${pageContext.request.contextPath}/logout"><span
						class="fa fa-power-off" style="color: white;"></span></a>
				</p>
				<p class="user-name">
					<span class="badge">2</span> VM in using <br>
					<br> <span class="badge">4</span> Device in using
				</p>
			</div>

			<div class="navigation-permission">
				<h5>Resources</h5>
				<ul>
					<li class="item vm"><a
						href="${pageContext.request.contextPath}/vm"> <i
							class="fa fa-desktop"></i> VM
					</a></li>
					<li class="item application"><a
						href="${pageContext.request.contextPath}/mobiledevice"> <i
							class="fa fa-bar-chart-o"></i> Mobile Device
					</a></li>
					<li class="item operatelog"><a
						href="${pageContext.request.contextPath}/log"> <i
							class="fa fa-dashboard"></i> Log
					</a></li>
				</ul>



				<h5>Others</h5>
				<ul>

					<li class="item"><a
						href="${pageContext.request.contextPath}/resource.jsp"> <span
							class="fa fa-file-text-o"></span> Guide &amp; Document
					</a></li>
				</ul>
			</div>
		</div>
		<div class="content">
			<div class="row">
				<div class="col-lg-12">
					<h2>
						VM <small>Operate VM</small>
					</h2>
					<ol class="breadcrumb">
						<li class="active"><i class="fa fa-table"></i> VM Management</li>
					</ol>
				</div>
			</div>
			<!-- /.row -->

			<div class="row">
				<div class="col-lg-12">
					<div class="table-responsive">
						<div class="row">
							<div class="col-lg-9">
								<a type="button" class="btn btn-primary btn-sm"
									data-toggle="modal" data-target="#createVM">Create</a>
							</div>
							<div class="col-lg-3">
								<a type="button" class="btn btn-primary btn-sm"
									data-toggle="modal" data-target="#historyUsage">History
									Usage</a>
							</div>
						</div>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Host Name</th>
									<th>VM Name</th>
									<th>IP</th>
									<th>Scenario Name</th>
									<th>Owner</th>
									<th>Status</th>
									<th>Operation</th>
								</tr>
							</thead>
							<tbody>


							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- /.row -->

			<!-- Modal -->
			<div class="modal fade" id="createVM" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">Create A VM</h4>
						</div>
						<form action="${pageContext.request.contextPath}/vm/create"
							method="post" id="createvm-form">
							<div class="modal-body">
								<div class="row">
									<div class="col-md-6">
										<h5>Choose A Image</h5>
										<table>

											<tbody>
												<tr>
													<td><div class="iradio_flat-blue"
															style="position: relative;">
															<input type="radio" id="imageId-1" name="imageId"
																value="a4a788cf3aaf4cc587acca8a932e14e5"
																required="required"
																style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); border: 0px; opacity: 0; background-position: initial initial; background-repeat: initial initial;">
															<ins class="iCheck-helper"
																style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); border: 0px; opacity: 0; background-position: initial initial; background-repeat: initial initial;"></ins>
														</div></td>
													<td><label for="imageId-1" style="padding-left: 5px;">IMG_RHEL5_32_ADBSDK_206</label></td>
												</tr>

												<tr>
													<td><div class="iradio_flat-blue"
															style="position: relative;">
															<input type="radio" id="imageId-2" name="imageId"
																value="bec588b035554812a42ac39adc36de1f"
																required="required"
																style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); border: 0px; opacity: 0; background-position: initial initial; background-repeat: initial initial;">
															<ins class="iCheck-helper"
																style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); border: 0px; opacity: 0; background-position: initial initial; background-repeat: initial initial;"></ins>
														</div></td>
													<td><label for="imageId-2" style="padding-left: 5px;">IMG_RHEL5_32_ADBSDK_203</label></td>
												</tr>

											</tbody>
										</table>
									</div>
									<div class="col-md-6">
										<table>
											<tbody>
												<tr>
													<td><label for="vmName">VM Name </label></td>
													<td style="padding-left: 5px;"><input type="text"
														class="form-control" name="vmName" id="vmName" required=""></td>
												</tr>
												<tr>
													<td><label for="ip">IP </label></td>
													<td style="padding-left: 5px;"><input type="text"
														class="form-control" name="ip" id="ip" required=""></td>
												</tr>
												<tr>
													<td><label for="cpu">CPU</label></td>
													<td style="padding-left: 5px;"><input type="text"
														class="form-control" name="cpu" id="cpu" required=""></td>
												</tr>
												<tr>
													<td><label for="memory">Memory</label></td>
													<td style="padding-left: 5px;"><input type="text"
														class="form-control" name="memory" id="memory" required=""></td>
												</tr>
												<tr>
													<td><label for="extraDisk">Disk</label></td>
													<td style="padding-left: 5px;"><input type="text"
														class="form-control" name="extraDisk" id="extraDisk"
														required=""></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default btn-sm"
									data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary btn-sm">Save</button>
							</div>
						</form>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<script>
				$(document).ready(function() {
					$('#createvm-form input').iCheck({
						checkboxClass : 'icheckbox_flat-blue',
						radioClass : 'iradio_flat-blue',
						increaseArea : '20%' // optional
					});
				});
			</script>

			<!-- Modal -->
			<div class="modal fade" id="historyUsage" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 70%;">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">History Usage</h4>
						</div>
						<form action="${pageContext.request.contextPath}/vm/create"
							method="post" id="createvm-form">
							<div class="modal-body">
								<div class="row">
									<div class="col-lg-3">
										<ul class="pager" style="margin: 0;">
											<li class="previous btn-sm"><a
												href="http://9.110.180.218:8080/agent/vm#">Previous</a></li>
											<li class="next btn-sm"><a
												href="http://9.110.180.218:8080/agent/vm#">Next</a></li>
										</ul>
									</div>
									<div class="col-lg-6"></div>
									<div class="col-lg-3">

										<div class="form-group">
											<div class="input-group">
												<input class="form-control btn-sm" size="" type="text"
													value="" placeholder="Search..."> <span
													class="input-group-addon"> <a
													href="http://9.110.180.218:8080/agent/vm#"><span
														class="fa fa-search"></span></a>
												</span> <span class="input-group-addon"> <a
													href="http://9.110.180.218:8080/agent/vm#"><span
														class="fa fa-download"></span></a>
												</span>
											</div>
										</div>

									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<table class="table table-striped">
											<thead>
												<tr>
													<th>Request VM</th>
													<th>Operate Content</th>
													<th>Operate Time</th>
													<th>Operator</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>9.110.129</td>
													<td>Create VM</td>
													<td>2014/02/14 12:00:00</td>
													<td>yucnb@cn.ibm.com</td>
												</tr>
												<tr>
													<td>9.110.129</td>
													<td>PowerOn VM</td>
													<td>2014/02/14 12:00:00</td>
													<td>yucnb@cn.ibm.com</td>
												</tr>
												<tr>
													<td>9.110.129</td>
													<td>PowerOn VM</td>
													<td>2014/02/14 12:00:00</td>
													<td>yucnb@cn.ibm.com</td>
												</tr>
												<tr>
													<td>9.110.129</td>
													<td>PowerOn VM</td>
													<td>2014/02/14 12:00:00</td>
													<td>yucnb@cn.ibm.com</td>
												</tr>
												<tr>
													<td>9.110.129</td>
													<td>Delete VM</td>
													<td>2014/02/14 12:00:00</td>
													<td>yucnb@cn.ibm.com</td>
												</tr>
												<tr>
													<td>9.110.129</td>
													<td>Delete VM</td>
													<td>2014/02/14 12:00:00</td>
													<td>yucnb@cn.ibm.com</td>
												</tr>
												<tr>
													<td>9.110.129</td>
													<td>PowerOn VM</td>
													<td>2014/02/14 12:00:00</td>
													<td>yucnb@cn.ibm.com</td>
												</tr>
												<tr>
													<td>9.110.129</td>
													<td>PowerOn VM</td>
													<td>2014/02/14 12:00:00</td>
													<td>yucnb@cn.ibm.com</td>
												</tr>
												<tr>
													<td>9.110.129</td>
													<td>Delete VM</td>
													<td>2014/02/14 12:00:00</td>
													<td>yucnb@cn.ibm.com</td>
												</tr>
												<tr>
													<td>9.110.129</td>
													<td>Delete VM</td>
													<td>2014/02/14 12:00:00</td>
													<td>yucnb@cn.ibm.com</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</form>

					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
		</div>
	</div>
</body>
</html>