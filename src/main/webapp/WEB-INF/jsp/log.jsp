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
		$(".operatelog").addClass("selected");
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
					<span class="badge">2</span> VM in using <br> <br> <span
						class="badge">4</span> Device in using
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
						Log <small>View Log</small>
					</h2>
					<ol class="breadcrumb">
						<li class="active"><i class="fa fa-table"></i> Log Management</li>
					</ol>
				</div>
			</div>
			<!-- /.row -->

			<div class="row">
				<div class="col-md-2">
					<ul class="pager" style="margin: 0;">
						<li class="previous btn-sm"><a
							href="http://9.110.180.218:8080/agent/operatelog#">Previous</a></li>
						<li class="next btn-sm"><a
							href="http://9.110.180.218:8080/agent/operatelog#">Next</a></li>
					</ul>
				</div>
				<div class="col-md-10">
					<form class="form-inline pull-right" role="form">
						<div class="form-group">
							<div class="input-group date form_date" data-date=""
								data-date-format="yyyy/mm/dd" data-link-field="start-time"
								data-link-format="yyyy-mm-dd">
								<input class="form-control btn-sm" size="16" type="text"
									value="" readonly="readonly" placeholder="Start Time...">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-remove"></span></span> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-calendar"></span></span>
							</div>
							<input type="hidden" id="start-time" value="">
						</div>

						<div class="form-group">
							<div class="input-group date form_date" data-date=""
								data-date-format="yyyy/mm/dd" data-link-field="end-time"
								data-link-format="yyyy-mm-dd">
								<input class="form-control btn-sm" size="20" type="text"
									value="" readonly="readonly" placeholder="End Time...">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-remove"></span></span> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-calendar"></span></span>
							</div>
							<input type="hidden" id="end-time" value="">
						</div>

						<div class="form-group">
							<div class="input-group">
								<input class="form-control btn-sm" size="" type="text" value=""
									placeholder="Search..."> <span
									class="input-group-addon"> <a
									href="http://9.110.180.218:8080/agent/operatelog#"><span
										class="fa fa-search"></span></a>
								</span> <span class="input-group-addon"> <a
									href="http://9.110.180.218:8080/agent/operatelog#"><span
										class="fa fa-download"></span></a>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
			<script type="text/javascript">
				$('.form_date').datetimepicker({
					weekStart : 1,
					todayBtn : 1,
					autoclose : 1,
					todayHighlight : 1,
					startView : 2,
					minView : 2,
					forceParse : 0
				});
			</script>

			<div class="row">
				<div class="col-lg-12">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Content</th>
									<th>Operator</th>
									<th>Type</th>
									<th>Operate Time</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
								<tr>
									<td>Power On VM [ID:aerere130218132312]</td>
									<td>yucnb@cn.ibm.com</td>
									<td>VM Operate</td>
									<td>2014/01/14 12:00:00</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- /.row -->

		</div>
	</div>
	<div
		class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu"
		style="left: 1313.65625px; z-index: 1040;">
		<div class="datetimepicker-minutes" style="display: none;">
			<table class=" table-condensed">
				<thead>
					<tr>
						<th class="prev" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-left"></i></th>
						<th colspan="5" class="switch">25 February 2014</th>
						<th class="next" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-right"></i></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7"><span class="minute">14:00</span><span
							class="minute">14:05</span><span class="minute">14:10</span><span
							class="minute">14:15</span><span class="minute">14:20</span><span
							class="minute">14:25</span><span class="minute">14:30</span><span
							class="minute">14:35</span><span class="minute active">14:40</span><span
							class="minute">14:45</span><span class="minute">14:50</span><span
							class="minute">14:55</span></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="7" class="today">Today</th>
					</tr>
				</tfoot>
			</table>
		</div>
		<div class="datetimepicker-hours" style="display: none;">
			<table class=" table-condensed">
				<thead>
					<tr>
						<th class="prev" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-left"></i></th>
						<th colspan="5" class="switch">25 February 2014</th>
						<th class="next" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-right"></i></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7"><span class="hour">0:00</span><span
							class="hour">1:00</span><span class="hour">2:00</span><span
							class="hour">3:00</span><span class="hour">4:00</span><span
							class="hour">5:00</span><span class="hour">6:00</span><span
							class="hour">7:00</span><span class="hour">8:00</span><span
							class="hour">9:00</span><span class="hour">10:00</span><span
							class="hour">11:00</span><span class="hour">12:00</span><span
							class="hour">13:00</span><span class="hour active">14:00</span><span
							class="hour">15:00</span><span class="hour">16:00</span><span
							class="hour">17:00</span><span class="hour">18:00</span><span
							class="hour">19:00</span><span class="hour">20:00</span><span
							class="hour">21:00</span><span class="hour">22:00</span><span
							class="hour">23:00</span></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="7" class="today">Today</th>
					</tr>
				</tfoot>
			</table>
		</div>
		<div class="datetimepicker-days" style="display: block;">
			<table class=" table-condensed">
				<thead>
					<tr>
						<th class="prev" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-left"></i></th>
						<th colspan="5" class="switch">February 2014</th>
						<th class="next" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-right"></i></th>
					</tr>
					<tr>
						<th class="dow">Mo</th>
						<th class="dow">Tu</th>
						<th class="dow">We</th>
						<th class="dow">Th</th>
						<th class="dow">Fr</th>
						<th class="dow">Sa</th>
						<th class="dow">Su</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="day old">27</td>
						<td class="day old">28</td>
						<td class="day old">29</td>
						<td class="day old">30</td>
						<td class="day old">31</td>
						<td class="day">1</td>
						<td class="day">2</td>
					</tr>
					<tr>
						<td class="day">3</td>
						<td class="day">4</td>
						<td class="day">5</td>
						<td class="day">6</td>
						<td class="day">7</td>
						<td class="day">8</td>
						<td class="day">9</td>
					</tr>
					<tr>
						<td class="day">10</td>
						<td class="day">11</td>
						<td class="day">12</td>
						<td class="day">13</td>
						<td class="day">14</td>
						<td class="day">15</td>
						<td class="day">16</td>
					</tr>
					<tr>
						<td class="day">17</td>
						<td class="day">18</td>
						<td class="day">19</td>
						<td class="day">20</td>
						<td class="day">21</td>
						<td class="day">22</td>
						<td class="day">23</td>
					</tr>
					<tr>
						<td class="day">24</td>
						<td class="day today active">25</td>
						<td class="day">26</td>
						<td class="day">27</td>
						<td class="day">28</td>
						<td class="day new">1</td>
						<td class="day new">2</td>
					</tr>
					<tr>
						<td class="day new">3</td>
						<td class="day new">4</td>
						<td class="day new">5</td>
						<td class="day new">6</td>
						<td class="day new">7</td>
						<td class="day new">8</td>
						<td class="day new">9</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="7" class="today">Today</th>
					</tr>
				</tfoot>
			</table>
		</div>
		<div class="datetimepicker-months" style="display: none;">
			<table class="table-condensed">
				<thead>
					<tr>
						<th class="prev" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-left"></i></th>
						<th colspan="5" class="switch">2014</th>
						<th class="next" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-right"></i></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7"><span class="month">Jan</span><span
							class="month active">Feb</span><span class="month">Mar</span><span
							class="month">Apr</span><span class="month">May</span><span
							class="month">Jun</span><span class="month">Jul</span><span
							class="month">Aug</span><span class="month">Sep</span><span
							class="month">Oct</span><span class="month">Nov</span><span
							class="month">Dec</span></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="7" class="today">Today</th>
					</tr>
				</tfoot>
			</table>
		</div>
		<div class="datetimepicker-years" style="display: none;">
			<table class="table-condensed">
				<thead>
					<tr>
						<th class="prev" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-left"></i></th>
						<th colspan="5" class="switch">2010-2019</th>
						<th class="next" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-right"></i></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7"><span class="year old">2009</span><span
							class="year">2010</span><span class="year">2011</span><span
							class="year">2012</span><span class="year">2013</span><span
							class="year active">2014</span><span class="year">2015</span><span
							class="year">2016</span><span class="year">2017</span><span
							class="year">2018</span><span class="year">2019</span><span
							class="year old">2020</span></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="7" class="today">Today</th>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
	<div
		class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu"
		style="left: 1313.65625px; z-index: 1080;">
		<div class="datetimepicker-minutes" style="display: none;">
			<table class=" table-condensed">
				<thead>
					<tr>
						<th class="prev" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-left"></i></th>
						<th colspan="5" class="switch">25 February 2014</th>
						<th class="next" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-right"></i></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7"><span class="minute">14:00</span><span
							class="minute">14:05</span><span class="minute">14:10</span><span
							class="minute">14:15</span><span class="minute">14:20</span><span
							class="minute">14:25</span><span class="minute">14:30</span><span
							class="minute">14:35</span><span class="minute active">14:40</span><span
							class="minute">14:45</span><span class="minute">14:50</span><span
							class="minute">14:55</span></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="7" class="today">Today</th>
					</tr>
				</tfoot>
			</table>
		</div>
		<div class="datetimepicker-hours" style="display: none;">
			<table class=" table-condensed">
				<thead>
					<tr>
						<th class="prev" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-left"></i></th>
						<th colspan="5" class="switch">25 February 2014</th>
						<th class="next" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-right"></i></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7"><span class="hour">0:00</span><span
							class="hour">1:00</span><span class="hour">2:00</span><span
							class="hour">3:00</span><span class="hour">4:00</span><span
							class="hour">5:00</span><span class="hour">6:00</span><span
							class="hour">7:00</span><span class="hour">8:00</span><span
							class="hour">9:00</span><span class="hour">10:00</span><span
							class="hour">11:00</span><span class="hour">12:00</span><span
							class="hour">13:00</span><span class="hour active">14:00</span><span
							class="hour">15:00</span><span class="hour">16:00</span><span
							class="hour">17:00</span><span class="hour">18:00</span><span
							class="hour">19:00</span><span class="hour">20:00</span><span
							class="hour">21:00</span><span class="hour">22:00</span><span
							class="hour">23:00</span></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="7" class="today">Today</th>
					</tr>
				</tfoot>
			</table>
		</div>
		<div class="datetimepicker-days" style="display: block;">
			<table class=" table-condensed">
				<thead>
					<tr>
						<th class="prev" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-left"></i></th>
						<th colspan="5" class="switch">February 2014</th>
						<th class="next" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-right"></i></th>
					</tr>
					<tr>
						<th class="dow">Mo</th>
						<th class="dow">Tu</th>
						<th class="dow">We</th>
						<th class="dow">Th</th>
						<th class="dow">Fr</th>
						<th class="dow">Sa</th>
						<th class="dow">Su</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="day old">27</td>
						<td class="day old">28</td>
						<td class="day old">29</td>
						<td class="day old">30</td>
						<td class="day old">31</td>
						<td class="day">1</td>
						<td class="day">2</td>
					</tr>
					<tr>
						<td class="day">3</td>
						<td class="day">4</td>
						<td class="day">5</td>
						<td class="day">6</td>
						<td class="day">7</td>
						<td class="day">8</td>
						<td class="day">9</td>
					</tr>
					<tr>
						<td class="day">10</td>
						<td class="day">11</td>
						<td class="day">12</td>
						<td class="day">13</td>
						<td class="day">14</td>
						<td class="day">15</td>
						<td class="day">16</td>
					</tr>
					<tr>
						<td class="day">17</td>
						<td class="day">18</td>
						<td class="day">19</td>
						<td class="day">20</td>
						<td class="day">21</td>
						<td class="day">22</td>
						<td class="day">23</td>
					</tr>
					<tr>
						<td class="day">24</td>
						<td class="day today active">25</td>
						<td class="day">26</td>
						<td class="day">27</td>
						<td class="day">28</td>
						<td class="day new">1</td>
						<td class="day new">2</td>
					</tr>
					<tr>
						<td class="day new">3</td>
						<td class="day new">4</td>
						<td class="day new">5</td>
						<td class="day new">6</td>
						<td class="day new">7</td>
						<td class="day new">8</td>
						<td class="day new">9</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="7" class="today">Today</th>
					</tr>
				</tfoot>
			</table>
		</div>
		<div class="datetimepicker-months" style="display: none;">
			<table class="table-condensed">
				<thead>
					<tr>
						<th class="prev" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-left"></i></th>
						<th colspan="5" class="switch">2014</th>
						<th class="next" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-right"></i></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7"><span class="month">Jan</span><span
							class="month active">Feb</span><span class="month">Mar</span><span
							class="month">Apr</span><span class="month">May</span><span
							class="month">Jun</span><span class="month">Jul</span><span
							class="month">Aug</span><span class="month">Sep</span><span
							class="month">Oct</span><span class="month">Nov</span><span
							class="month">Dec</span></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="7" class="today">Today</th>
					</tr>
				</tfoot>
			</table>
		</div>
		<div class="datetimepicker-years" style="display: none;">
			<table class="table-condensed">
				<thead>
					<tr>
						<th class="prev" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-left"></i></th>
						<th colspan="5" class="switch">2010-2019</th>
						<th class="next" style="visibility: visible;"><i
							class="glyphicon glyphicon-arrow-right"></i></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7"><span class="year old">2009</span><span
							class="year">2010</span><span class="year">2011</span><span
							class="year">2012</span><span class="year">2013</span><span
							class="year active">2014</span><span class="year">2015</span><span
							class="year">2016</span><span class="year">2017</span><span
							class="year">2018</span><span class="year">2019</span><span
							class="year old">2020</span></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="7" class="today">Today</th>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>

</body>
</html>