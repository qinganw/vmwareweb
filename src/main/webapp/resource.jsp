<%@ page contentType="text/html; charset=UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-theme.css"
	rel="stylesheet">

<!-- JavaScript -->
<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<style type="text/css">
.hiden-content {
	display: none;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$(".nav a").click(function() {
			var id = $(this).attr("content");
			$(".row").addClass("hiden-content");
			$("#" + id).removeClass("hiden-content");
			return false;
		});
	});
</script>
<style id="clearly_highlighting_css" type="text/css">/* selection */ html.clearly_highlighting_enabled ::-moz-selection { background: rgba(246, 238, 150, 0.99); } html.clearly_highlighting_enabled ::selection { background: rgba(246, 238, 150, 0.99); } /* cursor */ html.clearly_highlighting_enabled {    /* cursor and hot-spot position -- requires a default cursor, after the URL one */    cursor: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--cursor.png") 14 16, text; } /* highlight tag */ em.clearly_highlight_element {    font-style: inherit !important; font-weight: inherit !important;    background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--yellow.png");    background-repeat: repeat-x; background-position: top left; background-size: 100% 100%; } /* the delete-buttons are positioned relative to this */ em.clearly_highlight_element.clearly_highlight_first { position: relative; } /* delete buttons */ em.clearly_highlight_element a.clearly_highlight_delete_element {    display: none; cursor: pointer;    padding: 0; margin: 0; line-height: 0;    position: absolute; width: 34px; height: 34px; left: -17px; top: -17px;    background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--delete-sprite.png"); background-repeat: no-repeat; background-position: 0px 0px; } em.clearly_highlight_element a.clearly_highlight_delete_element:hover { background-position: -34px 0px; } /* retina */ @media (min--moz-device-pixel-ratio: 2), (-webkit-min-device-pixel-ratio: 2), (min-device-pixel-ratio: 2) {    em.clearly_highlight_element { background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--yellow@2x.png"); }    em.clearly_highlight_element a.clearly_highlight_delete_element { background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--delete-sprite@2x.png"); background-size: 68px 34px; } } </style><style>[touch-action="none"]{ -ms-touch-action: none; touch-action: none; }[touch-action="pan-x"]{ -ms-touch-action: pan-x; touch-action: pan-x; }[touch-action="pan-y"]{ -ms-touch-action: pan-y; touch-action: pan-y; }[touch-action="scroll"],[touch-action="pan-x pan-y"],[touch-action="pan-y pan-x"]{ -ms-touch-action: pan-x pan-y; touch-action: pan-x pan-y; }</style></head>
<body style="">
	<div class="container bs-docs-container">
		<h1>Mobile Cloud REST API</h1>
		<div class="col-md-3">
			<div class="bs-sidebar hidden-print affix-top" role="complementary">
				<ul class="nav bs-sidenav">
					<li>
					  <a content="login" href="#">Login</a>
					</li>
					<li>
					  <a content="listAllVMs" href="#">ListAllVMs</a>
					</li>
					<li>
					  <a content="listBySearchParam" href="#">ListVMBySearchParam</a>
					</li>
					<li>
					  <a content="poweron" href="#">Poweron VM</a>
					</li>
					<li>
					  <a content="poweroff" href="#">Poweroff VM</a>
					</li>
					<li>
					  <a content="rest" href="#">Rest VM</a>
					</li>
					<li>
					  <a content="delete" href="#">Delete VM</a>
					</li>
					<li>
					  <a content="create" href="#">Create VM</a>
					</li>
					<li>
					  <a content="listAllDevices" href="#">ListAllDevices</a>
					</li>
					<li>
					  <a content="listAvailableDevices" href="#">ListAvailableDevices</a>
					</li>
					<li>
					  <a content="listAllOwnedDevices" href="#">ListAllOwnedDevices</a>
					</li>					
					<li>
					  <a content="applyDevice" href="#">ApplyDevice</a>
					</li>
					<li>
					  <a content="releaseDevice" href="#">ReleaseDevice</a>
					</li>
					<li>
					  <a content="listInstallApks" href="#">ListInstallApks</a>
					</li>
					<li>
					  <a content="installApk" href="#">Install Apk</a>
					</li>
					<li>
					  <a content="uninstallApk" href="#">Uninstall Apk</a>
					</li>
					<li>
					  <a content="pushFile" href="#">Push File</a>
					</li>
					<li>
					  <a content="pullFile" href="#">Pull File</a>
					</li>
					<li>
					  <a content="errorCode" href="#">Error Code</a>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="col-md-9" role="main">
			<div class="row" id="login">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/login<br>Method:POST<br>Parameter:accountName accountPassword<br>Example:
POST http://localhost:8080/agent/RingCloudWebService/rest/login<br>accountName=yucnb@cn.ibm.com<br>accountPassword=123456</pre>
			<h4>Result</h4>
			<pre>{ "retCode" : "0000","msg" : "Login Successfully","userId" : "fae87fe16bc64b4daf3051ace374133a"}</pre>
			</div>
			
			<div class="row hiden-content" id="listAllVMs">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/vm/listAllVMs<br>Method:GET<br>Parameter:userId<br>Example:
GET http://localhost:8080/agent/RingCloudWebService/rest/vm/listAllVMs?userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[{"id":"720eeac811a8488b9b64270c62939dc7","vcId":"1274181213104abaa7c502617e62c10a","vc":{"id":"1274181213104abaa7c502617e62c10a","vcName":"MobileCloudCenter","vcIp":"9.110.184.23","vcUser":"cnliliush","vcPassword":"Passw0rd","dataCenter":"Mobile cloud"},"esxHostId":"028488214142432e901759db1f1bfb7c","esxhost":{"id":"028488214142432e901759db1f1bfb7c","vcId":"1274181213104abaa7c502617e62c10a","esxHostName":"9.110.180.203","cpuUsed":1121,"cpuTotal":29988,"cpuUsedRatio":3.7,"memoryUsed":31062,"memoryTotal":262116,"memoryUsedRatio":11.9,"status":"Available"},"dataStoreId":"996ff7b3fe1e4f618ce140ddf99d0598","datastore":{"id":"996ff7b3fe1e4f618ce140ddf99d0598","vcId":"1274181213104abaa7c502617e62c10a","dataStoreName":"datastore1 (6)","capacity":11716,"freespace":10196,"status":"Available"},"osType":"linux","vmName":"Service203","scenarioName":"Service","ip":"9.110.180.218","loginUser":"root","loginPassword":"passw0rd","cpu":2,"memory":2048,"extraDisk":0,"imageId":"941343280441470481a6d2cd4a7d622f","image":{"id":"941343280441470481a6d2cd4a7d622f","vcId":"1274181213104abaa7c502617e62c10a","guestOsId":"rhel5Guest","cloneType":"linux","imageName":"IMG_RHEL5_32_ADBSDK","osFullname":"Red Hat Enterprise Linux 5 (32-bit)","loginUser":"root","loginPassword":"passw0rd","diskSize":70,"status":"Available"},"createTime":1389234011504,"status":"PowerOn"}],"count":1}</pre>
			</div>
			
			<div class="row hiden-content" id="listBySearchParam">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/vm/listBySearchParam<br>Method:POST<br>Parameter:userId queryJson<br>Example:
POST http://localhost:8080/agent/RingCloudWebService/rest/vm/listBySearchParam<br>userId=fae87fe16bc64b4daf3051ace374133a<br>queryJson={"scenaioName":"MDC"}</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[{"id":"720eeac811a8488b9b64270c62939dc7","vcId":"1274181213104abaa7c502617e62c10a","vc":{"id":"1274181213104abaa7c502617e62c10a","vcName":"MobileCloudCenter","vcIp":"9.110.184.23","vcUser":"cnliliush","vcPassword":"Passw0rd","dataCenter":"Mobile cloud"},"esxHostId":"028488214142432e901759db1f1bfb7c","esxhost":{"id":"028488214142432e901759db1f1bfb7c","vcId":"1274181213104abaa7c502617e62c10a","esxHostName":"9.110.180.203","cpuUsed":1121,"cpuTotal":29988,"cpuUsedRatio":3.7,"memoryUsed":31062,"memoryTotal":262116,"memoryUsedRatio":11.9,"status":"Available"},"dataStoreId":"996ff7b3fe1e4f618ce140ddf99d0598","datastore":{"id":"996ff7b3fe1e4f618ce140ddf99d0598","vcId":"1274181213104abaa7c502617e62c10a","dataStoreName":"datastore1 (6)","capacity":11716,"freespace":10196,"status":"Available"},"osType":"linux","vmName":"Service203","scenarioName":"Service","ip":"9.110.180.218","loginUser":"root","loginPassword":"passw0rd","cpu":2,"memory":2048,"extraDisk":0,"imageId":"941343280441470481a6d2cd4a7d622f","image":{"id":"941343280441470481a6d2cd4a7d622f","vcId":"1274181213104abaa7c502617e62c10a","guestOsId":"rhel5Guest","cloneType":"linux","imageName":"IMG_RHEL5_32_ADBSDK","osFullname":"Red Hat Enterprise Linux 5 (32-bit)","loginUser":"root","loginPassword":"passw0rd","diskSize":70,"status":"Available"},"createTime":1389234011504,"status":"PowerOn"}],"count":1}</pre>
			</div>
			
			<div class="row hiden-content" id="poweron">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/vm/poweron/{vmId}<br>Method:GET<br>Parameter:userId<br>Example:
GET http://localhost:8080/agent/RingCloudWebService/rest/vm/poweron/720eeac811a8488b9b64270c62939dc7?userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[],"count":0}</pre>
			</div>
			
			<div class="row hiden-content" id="poweroff">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/vm/poweroff/{vmId}<br>Method:GET<br>Parameter:userId<br>Example:
GET http://localhost:8080/agent/RingCloudWebService/rest/vm/poweroff/720eeac811a8488b9b64270c62939dc7?userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[],"count":0}</pre>
			</div>
			
			<div class="row hiden-content" id="rest">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/vm/rest/{vmId}<br>Method:GET<br>Parameter:userId<br>Example:
GET http://localhost:8080/agent/RingCloudWebService/rest/vm/rest/720eeac811a8488b9b64270c62939dc7?userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[],"count":0}</pre>
			</div>
			
			<div class="row hiden-content" id="delete">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/vm/delete/{vmId}<br>Method:GET<br>Parameter:userId<br>Example:
GET http://localhost:8080/agent/RingCloudWebService/rest/vm/delete/720eeac811a8488b9b64270c62939dc7?userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[],"count":0}</pre>
			</div>
			
			<div class="row hiden-content" id="create">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/vm/create<br>Method:POST<br>Parameter:vm userId<br>Example:
POST http://localhost:8080/agent/RingCloudWebService/rest/vm/create<br>vm={"esxHostId":"7ea257395ab04d8dbd99dea8cbc24855","vmName":"BXV078","scenarioName":"MDC","ip":"9.110.180.207","imageId":7ea257395ab04d8dbd99dea8cbc24855,"cpu":2,"memory":2048,"extraDisk":50,"dataStoreId":"7ea257395ab04d8dbd99dea8cbc24855"}<br>userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[],"count":0}</pre>
			</div>
			
			<div class="row hiden-content" id="listAllDevices">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/device/listAllDevices<br>Method:GET<br>Parameter:userId<br>Example:
GET http://localhost:8080/agent/RingCloudWebService/rest/device/listAllDevices?userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[{"id":"e0c9a87390594190951bd81be16c6b91","esxHostId":"028488214142432e901759db1f1bfb7c","esxhost":{"id":"028488214142432e901759db1f1bfb7c","vcId":"1274181213104abaa7c502617e62c10a","esxHostName":"9.110.180.203","cpuUsed":965,"cpuTotal":29988,"cpuUsedRatio":3.2,"memoryUsed":31061,"memoryTotal":262116,"memoryUsedRatio":11.9,"status":"Available"},"vendorId":"2996","productId":"3207","deviceType":"android","serialNumber":"SH12NPL00679","deviceName":"SH12NPL00679","usbName":"path:1/0/1/0/0 version:2","screenSize":"480*800","resolutionRate":"240","status":"Available","description":"High Android Phone"}],"count":1}</pre>
			</div>
			
			<div class="row hiden-content" id="listAvailableDevices">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/device/listAvailableDevices<br>Method:GET<br>Parameter:userId<br>Example:
GET http://localhost:8080/agent/RingCloudWebService/rest/device/listAvailableDevices?userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[{"id":"e0c9a87390594190951bd81be16c6b91","esxHostId":"028488214142432e901759db1f1bfb7c","esxhost":{"id":"028488214142432e901759db1f1bfb7c","vcId":"1274181213104abaa7c502617e62c10a","esxHostName":"9.110.180.203","cpuUsed":965,"cpuTotal":29988,"cpuUsedRatio":3.2,"memoryUsed":31061,"memoryTotal":262116,"memoryUsedRatio":11.9,"status":"Available"},"vendorId":"2996","productId":"3207","deviceType":"android","serialNumber":"SH12NPL00679","deviceName":"SH12NPL00679","usbName":"path:1/0/1/0/0 version:2","screenSize":"480*800","resolutionRate":"240","status":"Available","description":"High Android Phone"}],"count":1}</pre>
			</div>
			
			<div class="row hiden-content" id="listAllOwnedDevices">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/device/listAllOwnedDevices<br>Method:GET<br>Parameter:userId<br>Example:
GET http://localhost:8080/agent/RingCloudWebService/rest/device/listAllOwnedDevices?userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[{"id":"e0c9a87390594190951bd81be16c6b91","esxHostId":"028488214142432e901759db1f1bfb7c","esxhost":{"id":"028488214142432e901759db1f1bfb7c","vcId":"1274181213104abaa7c502617e62c10a","esxHostName":"9.110.180.203","cpuUsed":965,"cpuTotal":29988,"cpuUsedRatio":3.2,"memoryUsed":31061,"memoryTotal":262116,"memoryUsedRatio":11.9,"status":"Available"},"vendorId":"2996","productId":"3207","deviceType":"android","serialNumber":"SH12NPL00679","deviceName":"SH12NPL00679","usbName":"path:1/0/1/0/0 version:2","screenSize":"480*800","resolutionRate":"240","status":"Available","description":"High Android Phone"}],"count":1}</pre>
			</div>
			
			<div class="row hiden-content" id="applyDevice">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/device/applyDevice<br>Method:POST<br>Parameter:device userId<br>Example:
POST http://localhost:8080/agent/RingCloudWebService/rest/device/applyDevice<br>device={"requestDeviceId":"ea257395ab04d8dbd99dea8cbc24855","requestVmId":"720eeac811a8488b9b64270c62939dc7","rentDuration":15000}<br>userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[],"count":0}</pre>
			</div>
			
			<div class="row hiden-content" id="releaseDevice">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/device/releaseDevice<br>Method:GET<br>Parameter:userId deviceRequestId<br>Example:
GET http://localhost:8080/agent/RingCloudWebService/rest/device/releaseDevice?userId=fae87fe16bc64b4daf3051ace374133a&amp;deviceRequestId=42a5c9a832934ac8a0d8c0936489e4cb</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[],"count":0}</pre>
			</div>
			
			<div class="row hiden-content" id="listInstallApks">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/device/listInstallApks/{deviceRequestId}<br>Method:GET<br>Parameter:userId<br>Example:
GET http://localhost:8080/agent/RingCloudWebService/rest/device/listInstallApks/42a5c9a832934ac8a0d8c0936489e4cb?userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"result":[{"id":"21cba687878247339d2c76a669df8893","vmId":"1763a24751ab44c6bb84a5806a5bde40","vm":{"id":"1763a24751ab44c6bb84a5806a5bde40","vcId":"1274181213104abaa7c502617e62c10a","esxHostId":"ab77e047ad12465aac39f0a134aa2c9c","dataStoreId":"7f77c351ebf3493a83208efaf2ce60e0","osType":"linux","vmName":"9.110.180.215","scenarioName":"MDC","ip":"9.110.180.215","loginUser":"root","loginPassword":"passw0rd","cpu":2,"memory":2048,"extraDisk":0,"imageId":"a4a788cf3aaf4cc587acca8a932e14e5","createTime":1389589314487,"status":"PowerOn"},"deviceId":"42a5c9a832934ac8a0d8c0936489e4cb","device":{"id":"42a5c9a832934ac8a0d8c0936489e4cb","esxHostId":"ab77e047ad12465aac39f0a134aa2c9c","vendorId":"2996","productId":"3243","vmId":"1763a24751ab44c6bb84a5806a5bde40","deviceType":"android","serialNumber":"SH1BCTJ01414","deviceName":"SH1BCTJ01414","usbName":"path:2/5/0 version:2","screenSize":"480*800","resolutionRate":"240","status":"Unavailable","description":"High Android Phone"},"deviceRequestId":"f5b226b7327142e1bc818148b93ff908","deviceRequest":{"id":"f5b226b7327142e1bc818148b93ff908","requestVmId":"1763a24751ab44c6bb84a5806a5bde40","requestDeviceId":"42a5c9a832934ac8a0d8c0936489e4cb","forwardPcPort":9000,"forwardDevicePort":5901,"remoteConnectUrl":"9.110.180.215:9500","startTime":1392085179958,"endTime":1392103179958,"rentDuration":18000,"ownerId":"fae87fe16bc64b4daf3051ace374133a","status":"Running","websockifyPort":9500},"path":"/pub/20140211/20140211103255com.ting.mp3.oemc.android.apk","appName":"com.ting.mp3.oemc.android"}]}</pre>
			</div>
			
			<div class="row hiden-content" id="installApk">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/device/installApk<br>Method:POST<br>Parameter:userId file deviceRequestId appName<br>Example:
POST http://localhost:8080/agent/RingCloudWebService/rest/device/installApk<br>file=FileSystemResource(Binary Stream)&amp;deviceRequestId=f5b226b7327142e1bc818148b93ff908&amp;appName=com.ting.mp3.oemc.android&amp;userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[],"count":0}</pre>
			</div>
			
			<div class="row hiden-content" id="uninstallApk">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/device/uninstallApk<br>Method:GET<br>Parameter:userId fileId<br>Example:
GET http://localhost:8080/agent/RingCloudWebService/rest/device/uninstallApk?userId=fae87fe16bc64b4daf3051ace374133a&amp;fileId=21cba687878247339d2c76a669df8893</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[],"count":0}</pre>
			</div>
			
			<div class="row hiden-content" id="pushFile">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/device/pushFile<br>Method:POST<br>Parameter:userId file deviceRequestId devicePath<br>Example:
POST http://localhost:8080/agent/RingCloudWebService/rest/device/pushFile<br>file=FileSystemResource(Binary Stream)&amp;deviceRequestId=f5b226b7327142e1bc818148b93ff908&amp;devicePath=/data&amp;userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[],"count":0}</pre>
			</div>
			
			<div class="row hiden-content" id="pullFile">
			<h4>Method</h4>
			<pre>URL:/agent/RingCloudWebService/rest/device/pullFile<br>Method:POST<br>Parameter:userId deviceRequestId devicePath<br>Example:
POST http://localhost:8080/agent/RingCloudWebService/rest/device/pushFile<br>deviceRequestId=f5b226b7327142e1bc818148b93ff908&amp;devicePath=/data/temp.txt&amp;userId=fae87fe16bc64b4daf3051ace374133a</pre>
			<h4>Result</h4>
			<pre>{"retCode":"0000","msg":"Request has been successfully processed!","result":[{"id":"21cba687878247339d2c76a669df8893","vmId":"1763a24751ab44c6bb84a5806a5bde40","vm":{"id":"1763a24751ab44c6bb84a5806a5bde40","vcId":"1274181213104abaa7c502617e62c10a","esxHostId":"ab77e047ad12465aac39f0a134aa2c9c","dataStoreId":"7f77c351ebf3493a83208efaf2ce60e0","osType":"linux","vmName":"9.110.180.215","scenarioName":"MDC","ip":"9.110.180.215","loginUser":"root","loginPassword":"passw0rd","cpu":2,"memory":2048,"extraDisk":0,"imageId":"a4a788cf3aaf4cc587acca8a932e14e5","createTime":1389589314487,"status":"PowerOn"},"deviceId":"42a5c9a832934ac8a0d8c0936489e4cb","device":{"id":"42a5c9a832934ac8a0d8c0936489e4cb","esxHostId":"ab77e047ad12465aac39f0a134aa2c9c","vendorId":"2996","productId":"3243","vmId":"1763a24751ab44c6bb84a5806a5bde40","deviceType":"android","serialNumber":"SH1BCTJ01414","deviceName":"SH1BCTJ01414","usbName":"path:2/5/0 version:2","screenSize":"480*800","resolutionRate":"240","status":"Unavailable","description":"High Android Phone"},"deviceRequestId":"f5b226b7327142e1bc818148b93ff908","deviceRequest":{"id":"f5b226b7327142e1bc818148b93ff908","requestVmId":"1763a24751ab44c6bb84a5806a5bde40","requestDeviceId":"42a5c9a832934ac8a0d8c0936489e4cb","forwardPcPort":9000,"forwardDevicePort":5901,"remoteConnectUrl":"9.110.180.215:9500","startTime":1392085179958,"endTime":1392103179958,"rentDuration":18000,"ownerId":"fae87fe16bc64b4daf3051ace374133a","status":"Running","websockifyPort":9500},"path":"/pub/20140211/20140211103255com.ting.mp3.oemc.android.apk","appName":"com.ting.mp3.oemc.android"}],"count":1}</pre>
			</div>
			
			<div class="row hiden-content" id="errorCode">
			<h4>Error Code</h4>
			<pre>0000:SUCCESS
0010:SQL_EXCEPTION
0020:USER_NOT_EXIST
0021:PARAM_NULL
0022:USER_EXPIRE
0023:PERMISSION_DENIED
50000:SERVER_INTERNAL_ERROR</pre>
			</div>
		</div>
	</div>

</body></html>