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
	
<!-- Mirrored from www.cliptheme.com/preview/admin/clip-one/form_elements.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 04 Aug 2016 05:18:55 GMT -->
<head>
		<title>Clip-One - Responsive Admin Template</title>
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
		<link rel="stylesheet" href="assets/plugins/select2/select2.css">
		<link rel="stylesheet" href="assets/plugins/datepicker/css/datepicker.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css">
		<link rel="stylesheet" href="assets/plugins/jQuery-Tags-Input/jquery.tagsinput.css">
		<link rel="stylesheet" href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
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
									 Employee List
								</li>
								
							</ol>
							<div class="page-header">
								<h1>Employee List  <small>overview &amp; Details </small></h1>
							</div>
							<!-- end: PAGE TITLE & BREADCRUMB -->
							
							
							
							
							<div class="panel panel-default">
								<!-- <div class="panel-heading">
									<i class="fa fa-external-link-square"></i>
									Employee Information
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
								</div> -->
								<div class="panel-body">
									
									
									
									   <form action="emp-search" role="form" id="form" novalidate="novalidate" method="post">
									   <div class="row">
									   <div class="col-md-12">
									   <div class="errorHandler alert alert-danger no-display">
									   <i class="fa fa-times-sign"></i> You have some form errors. Please check below.
									   </div>
								       <div class="successHandler alert alert-success no-display">
									   <i class="fa fa-ok"></i> Your form validation is successful!
									   </div>
									   </div>
											
										<div class="col-md-4">
										<div class="form-group">
										<label for="form-field-select-3">
										Employee Name
										</label>
										<s:select id="form-field-select-3" cssClass="form-control search-select"   headerKey="-1"
                                        headerValue="Select"  list="empnamelist" name="empname" value="Select"  />
									    </div>
									
									

													
										<div class="form-group">
										<label class="control-label">
										Supervisor Name 
										</label>
										<s:select id="form-field-select-3" cssClass="form-control search-select"   headerKey="-1"
                                        headerValue="Select"  list="empsupervisorplist" name="empsupervisor" value="Select"  />
									    </div>
										<div class="form-group">
										<input type="submit" value="Search" class="btn btn-teal">
										</div>
										</div>
										
										
										<div class="col-md-4">
										<div class="form-group connected-group">
										<label class="control-label">
										Employee Id 
										</label>
										<s:select id="form-field-select-3" cssClass="form-control search-select"   headerKey="-1"
                                        headerValue="Select"  list="empidlist" name="empid" value="Select"  />
									    </div>
										<div class="form-group">
										<label class="control-label">
										 Designation 
										</label>
										<s:select id="form-field-select-3" cssClass="form-control search-select"   headerKey="-1"
                                        headerValue="Select"  list="empdesignationlist" name="empdesignation" value="Select"  />
									    </div>
												
										</div>
										<div class="col-md-4">
										<div class="form-group">
										<label class="control-label">
										Employment Type 
										</label>
										<select class="form-control" id="lastname" name="employmenttype">
										<option value="" disabled selected>Select </option>
										<option value="Permanent">Permanent </option>
										<option value="Contract">Contract </option>
										</select>
										</div>
										<div class="form-group">
										<label class="control-label">
										Employment Status
										</label>
										<select class="form-control" id="lastname" name="empstatus">
										<option value="" disabled selected>Select </option>
										<option value="Active">Active </option>
										<option value="In-Active">In-Active </option>
										<option value="All">All </option>
										</select>
										</div> 
										</div>
										</div>
										
										
									</form>
								</div>
							</div>
							
							
							
							<!-- start: RESPONSIVE TABLE PANEL -->
							<div class="row">
						<div class="col-md-12">
							
							
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
								<form action="emp-delete">
									<div class="table-responsive">
										<table class="table table-bordered table-hover" id="sample-table-1" >
											<thead>
												<tr>
													<th class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></th>
													<th>Employee Name</th>
													<th>Employee Id </th>
													<th>Supervisor Name </th>
													<th>Employment Type</th>
													<th>Employee Designation  </th>
													<th>Company Name</th>
													<th>Employment Status</th>
												</tr>
											</thead>
											<tbody >
												
												<s:iterator id ="data" value="#request.data">
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey" name="empid" value="<s:property value="#data.userid"/>">
														</label>
													</div></td>
													<td>
													<a href="emp-profile.action">
														<s:property value="#data.firstname"/> <s:property value="#data.lastname"/>
													</a></td>
													<td><s:property value="#data.empid"/></td>
													<td><s:property value="#data.supervisorname"/></td>
													<td><s:property value="#data.jobtype"/></td>
													<td><s:property value="#data.designation"/> </td>
													<td><s:property value="#data.companyname"/> </td>
													<td>
													<s:if test="%{#data.status=='Active'}">
	                                                <span class="label label-sm label-success">Active</span>
                                                    </s:if>
                                                    <s:elseif test="%{#data.status=='In-Active'}">
                                                    <span class="label label-sm label-warning">In-Active</span>
                                                    </s:elseif>
													
													</td>
												</tr>
								                </s:iterator>
											</tbody>
										</table>
										<div class="form-group">
													
										<input type="submit" value="Delete" class="btn btn-danger"></input>
												</div>
									</div>
									</form>
								</div>
							</div>
							<!-- end: RESPONSIVE TABLE PANEL -->
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
		<script src="assets/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="assets/plugins/autosize/jquery.autosize.min.js"></script>
		<script src="assets/plugins/select2/select2.min.js"></script>
		<script src="assets/plugins/jquery.maskedinput/src/jquery.maskedinput.js"></script>
		<script src="assets/plugins/jquery-maskmoney/jquery.maskMoney.js"></script>
		<script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
		<script src="assets/plugins/bootstrap-daterangepicker/moment.min.js"></script>
		<script src="assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
		<script src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
		<script src="assets/plugins/bootstrap-colorpicker/js/commits.js"></script>
		<script src="assets/plugins/jQuery-Tags-Input/jquery.tagsinput.js"></script>
		<script src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
		<script src="assets/plugins/summernote/build/summernote.min.js"></script>
		<script src="assets/plugins/ckeditor/ckeditor.js"></script>
		<script src="assets/plugins/ckeditor/adapters/jquery.js"></script>
		<script src="assets/js/form-elements.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
	</body>