<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

    
    <!DOCTYPE html>
<!-- Template Name: Clip-One - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.4 Author: ClipTheme -->
<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
	<!--<![endif]-->
	<!-- start: HEAD -->
	
<head>
		<title>AbInfosoft- Dashboard</title>
		<!-- start: META -->
		<meta charset="utf-8" />
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- end: META -->
		<!-- start: MAIN CSS -->
		<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/fonts/style.css">
		<link rel="stylesheet" href="assets/css/main.css">
		<link rel="stylesheet" href="assets/css/main-responsive.css">
		<link rel="stylesheet" href="assets/plugins/iCheck/skins/all.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
		<link rel="stylesheet" href="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.css">
		<link rel="stylesheet" href="assets/css/theme_light.css" type="text/css" id="skin_color">
		<link rel="stylesheet" href="assets/css/print.css" type="text/css" media="print"/>
		<!--[if IE 7]>
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
		<!-- end: MAIN CSS -->
		<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
		<link rel="stylesheet" href="assets/plugins/fullcalendar/fullcalendar/fullcalendar.css">
		<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
		<link rel="shortcut icon" href="favicon.ico" />
	</head>
	<!-- end: HEAD -->
	<!-- start: BODY -->
	<body>
		
		<c:import url="directive/header.jsp"></c:import>
		<!-- start: MAIN CONTAINER -->
		<div class="main-container">
        <c:import url="directive/sidebar.jsp"></c:import>

			<!-- start: PAGE -->
			<div class="main-content">
				
				<div class="container">
					<!-- start: PAGE HEADER -->
					<div class="row">
						 <div class="col-sm-12">
							
						<!--	start: PAGE TITLE & BREADCRUMB -->
							<ol class="breadcrumb">
								<li>
									<i class="clip-home-3"></i>
									<a href="#">
										Home
									</a>
								</li>
								<li class="active">
									 Financial Expenses
								</li>
								<li class="active">
									 Salary
								</li>
								
							</ol>
							<div class="page-header">
								<h1>Employee Salary  <small>overview &amp; Details </small></h1>
							</div>
							<!-- end: PAGE TITLE & BREADCRUMB -->
							
							
							
							
							<!-- start: RESPONSIVE TABLE PANEL -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<i class="fa fa-external-link-square"></i>
									Responsive Table
									<div class="panel-tools">
										<a class="btn btn-xs btn-link panel-collapse collapses" href="#">
										</a>
										<a class="btn btn-xs btn-link panel-config" href="#panel-config" data-toggle="modal">
											<i class="fa fa-wrench"></i>
										</a>
										<a class="btn btn-xs btn-link panel-refresh" href="#">
											<i class="fa fa-refresh"></i>
										</a>
										<a class="btn btn-xs btn-link panel-expand" href="#">
											<i class="fa fa-resize-full"></i>
										</a>
										<a class="btn btn-xs btn-link panel-close" href="#">
											<i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table class="table table-bordered table-hover" id="sample-table-1">
											<thead>
												<tr>
													<th class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></th>
													<th>Domain</th>
													<th>Price</th>
													<th>Clicks</th>
													<th><i class="fa fa-time"></i> Update </th>
													<th>Status</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>
													<a href="#">
														alpha.com
													</a></td>
													<td>$45</td>
													<td>3,330</td>
													<td>Feb 13</td>
													<td><span class="label label-sm label-warning">Expiring</span></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>
													<a href="#">
														beta.com
													</a></td>
													<td>$70</td>
													<td>3,330</td>
													<td>Jen 15</td>
													<td><span class="label label-sm label-success">Registered</span></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>
													<a href="#">
														gamma.com
													</a></td>
													<td>$25</td>
													<td>3,330</td>
													<td>Mar 09</td>
													<td><span class="label label-sm label-danger">Expired</span></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>
													<a href="#">
														delta.com
													</a></td>
													<td>$50</td>
													<td>3,330</td>
													<td>Feb 10</td>
													<td><span class="label label-sm label-inverse">Flagged</span></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>
													<a href="#">
														epsilon.com
													</a></td>
													<td>$35</td>
													<td>3,330</td>
													<td>Feb 18</td>
													<td><span class="label label-sm label-success">Registered</span></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>
													<a href="#">
														zeta.com
													</a></td>
													<td>$45</td>
													<td>3,330</td>
													<td>Feb 13</td>
													<td><span class="label label-sm label-warning">Expiring</span></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>
													<a href="#">
														eta.com
													</a></td>
													<td>$70</td>
													<td>3,330</td>
													<td>Jen 15</td>
													<td><span class="label label-sm label-success">Registered</span></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>
													<a href="#">
														theta.com
													</a></td>
													<td>$25</td>
													<td>3,330</td>
													<td>Mar 09</td>
													<td><span class="label label-sm label-danger">Expired</span></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>
													<a href="#">
														iota.com
													</a></td>
													<td>$50</td>
													<td>3,330</td>
													<td>Feb 10</td>
													<td><span class="label label-sm label-inverse">Flagged</span></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>
													<a href="#">
														kappa.com
													</a></td>
													<td>$35</td>
													<td>3,330</td>
													<td>Feb 18</td>
													<td><span class="label label-sm label-success">Registered</span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							
						</div>
						
						
						
						
						
					</div>
					<!-- end: PAGE HEADER -->
					<!-- start: PAGE CONTENT -->
					
					
					
					
					
					<!-- end: PAGE CONTENT-->
				</div>
			</div>
			<!-- end: PAGE -->
		</div>
		<!-- end: MAIN CONTAINER -->
		<!-- start: FOOTER -->
		<div class="footer clearfix">
			<div class="footer-inner">
				2014 &copy; clip-one by cliptheme.
			</div>
			<div class="footer-items">
				<span class="go-top"><i class="clip-chevron-up"></i></span>
			</div>
		</div>
		<!-- end: FOOTER -->
		<!-- start: RIGHT SIDEBAR -->
		
		<!-- end: RIGHT SIDEBAR -->
		
		<!-- start: MAIN JAVASCRIPTS -->
		<!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="assets/plugins/jQuery-lib/1.10.2/jquery.min.js"></script>
		<![endif]-->
		<!--[if gte IE 9]><!-->
		<script src="assets/plugins/jQuery-lib/2.0.3/jquery.min.js"></script>
		<!--<![endif]-->
		<script src="assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
		<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
		<script src="assets/plugins/blockUI/jquery.blockUI.js"></script>
		<script src="assets/plugins/iCheck/jquery.icheck.min.js"></script>
		<script src="assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
		<script src="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
		<script src="assets/plugins/less/less-1.5.0.min.js"></script>
		<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
		<script src="assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
		<script src="assets/js/main.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="assets/plugins/flot/jquery.flot.js"></script>
		<script src="assets/plugins/flot/jquery.flot.pie.js"></script>
		<script src="assets/plugins/flot/jquery.flot.resize.min.js"></script>
		<script src="assets/plugins/jquery.sparkline/jquery.sparkline.js"></script>
		<script src="assets/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
		<script src="assets/plugins/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
		<script src="assets/js/index.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Index.init();
			});
		</script>
	</body>
	<!-- end: BODY -->

</html>