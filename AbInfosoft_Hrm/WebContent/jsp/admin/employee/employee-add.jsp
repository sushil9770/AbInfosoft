<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
     <%@ taglib uri="/struts-tags" prefix="s" %>

  <!DOCTYPE html>
<!-- Template Name: Clip-One - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.4 Author: ClipTheme -->
<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
	<!--<![endif]-->
	<!-- start: HEAD -->
	
<!-- Mirrored from www.cliptheme.com/preview/admin/clip-one/form_validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 04 Aug 2016 05:19:10 GMT -->
<head>
			<title>AbInfosoft</title>
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
		<link rel="stylesheet" href="assets/plugins/summernote/build/summernote.css">
		<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
		<link rel="shortcut icon" href="favicon.ico" />
	</head>
	<!-- end: HEAD -->
	<!-- start: BODY -->
	<body>
		
		<c:import url="/jsp/admin/directive/header.jsp"></c:import>
		<!-- start: MAIN CONTAINER -->
		<div class="main-container">
        <c:import url="/jsp/admin/directive/sidebar.jsp"></c:import>

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
									 Employee Management
								</li>
								<li class="active">
									  Add Employee
								</li>
								
							</ol>
							<div class="page-header">
								<h1>Add Employee  <small>overview &amp; Details </small></h1>
							</div>
							<!-- end: PAGE TITLE & BREADCRUMB -->
							
							<div class="row">
						<div class="col-md-12">
							<!-- start: FORM VALIDATION 1 PANEL -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<i class="fa fa-external-link-square"></i>
									Form Validation 
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
									<h2><i class="fa fa-pencil-square teal"></i> REGISTER</h2>
									<p>
										Create one account to manage everything you do with ClipOne, from your shopping preferences to your ClipOne activity.
									</p>
									<hr>
									<form action="#" role="form" id="form">
										<div class="row">
											<div class="col-md-12">
												<div class="errorHandler alert alert-danger no-display">
													<i class="fa fa-times-sign"></i> You have some form errors. Please check below.
												</div>
												<div class="successHandler alert alert-success no-display">
													<i class="fa fa-ok"></i> Your form validation is successful!
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label">
														First Name <span class="symbol required"></span>
													</label>
													<input type="text" placeholder="Insert your First Name" class="form-control" id="firstname" name="firstname">
												</div>
												<div class="form-group">
													<label class="control-label">
														Last Name <span class="symbol required"></span>
													</label>
													<input type="text" placeholder="Insert your Last Name" class="form-control" id="lastname" name="lastname">
												</div>
												<div class="form-group">
													<label class="control-label">
														Email Address <span class="symbol required"></span>
													</label>
													<input type="email" placeholder="Text Field" class="form-control" id="email" name="email">
												</div>
												<div class="form-group">
													<label class="control-label">
														Password <span class="symbol required"></span>
													</label>
													<input type="password" class="form-control" name="password" id="password">
												</div>
												<div class="form-group">
													<label class="control-label">
														Confirm Password <span class="symbol required"></span>
													</label>
													<input type="password" class="form-control" id="password_again" name="password_again">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group connected-group">
													<label class="control-label">
														Date of Birth <span class="symbol required"></span>
													</label>
													<div class="row">
														<div class="col-md-3">
															<select name="dd" id="dd" class="form-control" >
																<option value="">DD</option>
																<option value="01">1</option>
																<option value="02">2</option>
																<option value="03">3</option>
																<option value="04">4</option>
																<option value="05">5</option>
																<option value="06">6</option>
																<option value="07">7</option>
																<option value="08">8</option>
																<option value="09">9</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
																<option value="13">13</option>
																<option value="14">14</option>
																<option value="15">15</option>
																<option value="16">16</option>
																<option value="17">17</option>
																<option value="18">18</option>
																<option value="19">19</option>
																<option value="20">20</option>
																<option value="21">21</option>
																<option value="22">22</option>
																<option value="23">23</option>
																<option value="24">24</option>
																<option value="25">25</option>
																<option value="26">26</option>
																<option value="27">27</option>
																<option value="28">28</option>
																<option value="29">29</option>
																<option value="30">30</option>
																<option value="31">31</option>
															</select>
														</div>
														<div class="col-md-3">
															<select name="mm" id="mm" class="form-control" >
																<option value="">MM</option>
																<option value="01">1</option>
																<option value="02">2</option>
																<option value="03">3</option>
																<option value="04">4</option>
																<option value="05">5</option>
																<option value="06">6</option>
																<option value="07">7</option>
																<option value="08">8</option>
																<option value="09">9</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
															</select>
														</div>
														<div class="col-md-3">
															<input type="text" placeholder="YYYY" id="yyyy" name="yyyy" class="form-control">
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label">
														Gender <span class="symbol required"></span>
													</label>
													<div>
														<label class="radio-inline">
															<input type="radio" class="grey" value="" name="gender" id="gender_female">
															Female
														</label>
														<label class="radio-inline">
															<input type="radio" class="grey" value="" name="gender"  id="gender_male">
															Male
														</label>
													</div>
												</div>
												<div class="row">
													<div class="col-md-4">
														<div class="form-group">
															<label class="control-label">
																Zip Code <span class="symbol required"></span>
															</label>
															<input class="form-control" type="text" name="zipcode" id="zipcode">
														</div>
													</div>
													<div class="col-md-8">
														<div class="form-group">
															<label class="control-label">
																City <span class="symbol required"></span>
															</label>
															<input class="form-control tooltips" type="text" data-original-title="We'll display it when you write reviews" data-rel="tooltip"  title="" data-placement="top" name="city" id="city">
														</div>
													</div>
												</div>
												<div class="form-group">
													<hr>
													<label class="control-label">
														<strong>Signup for Clip-One Emails</strong> <span class="symbol required"></span>
													</label>
													<p>
														Would you like to review Clip-One emails?
													</p>
													<div>
														<label class="radio-inline">
															<input type="radio" class="grey" value="" name="newsletter">
															No
														</label>
														<label class="radio-inline">
															<input type="radio" class="grey" value="" name="newsletter">
															Yes
														</label>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div>
													<span class="symbol required"></span>Required Fields
													<hr>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-8">
												<p>
													By clicking REGISTER, you are agreeing to the Policy and Terms &amp; Conditions.
												</p>
											</div>
											<div class="col-md-4">
												<button class="btn btn-yellow btn-block" type="submit">
													Register <i class="fa fa-arrow-circle-right"></i>
												</button>
											</div>
										</div>
									</form>
								</div>
							</div>
							<!-- end: FORM VALIDATION 1 PANEL -->
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
		<script src="assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
		<script src="assets/plugins/summernote/build/summernote.min.js"></script>
		<script src="assets/plugins/ckeditor/ckeditor.js"></script>
		<script src="assets/plugins/ckeditor/adapters/jquery.js"></script>
		<script src="assets/js/form-validation.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormValidator.init();
			});
		</script>
	</body>
	<!-- end: BODY -->

</html>