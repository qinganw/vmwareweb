<%@ page contentType="text/html; charset=UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Mobile Cloud</title>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-theme.css"
	rel="stylesheet">

<!-- JavaScript -->
<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>


<style type="text/css">
body {
	padding-top: 70px;
	padding-bottom: 30px;
}
</style>
<style id="clearly_highlighting_css" type="text/css">/* selection */ html.clearly_highlighting_enabled ::-moz-selection { background: rgba(246, 238, 150, 0.99); } html.clearly_highlighting_enabled ::selection { background: rgba(246, 238, 150, 0.99); } /* cursor */ html.clearly_highlighting_enabled {    /* cursor and hot-spot position -- requires a default cursor, after the URL one */    cursor: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--cursor.png") 14 16, text; } /* highlight tag */ em.clearly_highlight_element {    font-style: inherit !important; font-weight: inherit !important;    background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--yellow.png");    background-repeat: repeat-x; background-position: top left; background-size: 100% 100%; } /* the delete-buttons are positioned relative to this */ em.clearly_highlight_element.clearly_highlight_first { position: relative; } /* delete buttons */ em.clearly_highlight_element a.clearly_highlight_delete_element {    display: none; cursor: pointer;    padding: 0; margin: 0; line-height: 0;    position: absolute; width: 34px; height: 34px; left: -17px; top: -17px;    background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--delete-sprite.png"); background-repeat: no-repeat; background-position: 0px 0px; } em.clearly_highlight_element a.clearly_highlight_delete_element:hover { background-position: -34px 0px; } /* retina */ @media (min--moz-device-pixel-ratio: 2), (-webkit-min-device-pixel-ratio: 2), (min-device-pixel-ratio: 2) {    em.clearly_highlight_element { background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--yellow@2x.png"); }    em.clearly_highlight_element a.clearly_highlight_delete_element { background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--delete-sprite@2x.png"); background-size: 68px 34px; } } </style><style>[touch-action="none"]{ -ms-touch-action: none; touch-action: none; }[touch-action="pan-x"]{ -ms-touch-action: pan-x; touch-action: pan-x; }[touch-action="pan-y"]{ -ms-touch-action: pan-y; touch-action: pan-y; }[touch-action="scroll"],[touch-action="pan-x pan-y"],[touch-action="pan-y pan-x"]{ -ms-touch-action: pan-x pan-y; touch-action: pan-x pan-y; }</style></head>
<body style="">
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container" style="width: 90%">
			<div class="navbar-header">
				<a href="${pageContext.request.contextPath}/login" class="navbar-brand">CDL Mobile Cloud</a>
				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#navbar-main">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse" id="navbar-main">
				<form role="form" action="loginProcess" class="navbar-form navbar-right" method="post">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Email" name="userName" required="" autofocus="">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Password" name="password" required="">
					</div>
					<button class="btn btn-primary" type="submit">Sign in</button>
				</form>
			</div>
		</div>
	</div>

	<div class="container" style="width: 90%">
		<div class="row">
			<div class="col-lg-12">
				<div class="bs-example">
					<div class="jumbotron">
						<div class="row">
							<div class="col-lg-8">
								<h1>CDL Mobile Cloud™</h1>
								<p>Open Source Cloud Computing™</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-6">
				<div class="panel panel-default">
					<div class="panel-heading">
						Scenario <span class="badge">1</span>: VM+Mobile
					</div>
					<div class="panel-body">
						<p>This scenario allows user to request a virtual machine and
							apply a mobile device attached to this virtual machine,so that
							user can control both virtual machine and mobile device.</p>
						<a href="http://www.baidu.com/"><button type="button" class="btn btn-primary">Launch Scenario 1</button></a>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						Scenario <span class="badge">2</span>: MDC
					</div>
					<div class="panel-body">
						<p>This scenario allows user to request a virtual machine and
							apply a mobile device attached to this virtual machine,so that
							user can control both virtual machine and mobile device.</p>
						<a href="http://www.baidu.com/"><button type="button" class="btn btn-primary">Launch Scenario 2</button></a>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="panel panel-default">
					<div class="panel-heading">
						Scenario <span class="badge">3</span>: Web Access
					</div>
					<div class="panel-body">
						<p>This scenario allows user to control mobile devices through
							web page,which is based on VNC protocol.After applying a mobile
							device,user will receive a URL and password to login this device.
						</p>
						<a href="http://www.baidu.com/"><button type="button" class="btn btn-primary">Launch Scenario 3</button></a>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						Scenario <span class="badge">4</span>: TestMate
					</div>
					<div class="panel-body">
						<p>This scenario allows user to request a virtual machine and
							apply a mobile device attached to this virtual machine,so that
							user can control both virtual machine and mobile device.</p>
						<a href="http://www.baidu.com/"><button type="button" class="btn btn-primary">Launch Scenario 4</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body></html>