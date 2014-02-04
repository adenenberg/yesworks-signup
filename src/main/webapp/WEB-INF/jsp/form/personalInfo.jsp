<%@ include file="/WEB-INF/jsp/common/include.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<%@ include file="/WEB-INF/jsp/common/css.jsp"%>
		<%@ include file="/WEB-INF/jsp/common/script.jsp"%>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<script type="text/javascript">
			$j(document).ready(function() {
				$j("#birthDate").datepicker({
					startDate: "-30y",
					startView: 2,
					autoclose: true
				});
			});
		</script>
		
		<style>

		</style>
		
	</head>
	<body>
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Yesworks</a>
				</div>
			</div>
		</nav>
		<div class="container-fluid" id="formTabs">
			<div class="row">
				<div class="col-md-12">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#">Personal Information</a></li>
						<li><a href="#">Address</a></li>
						<li><a href="#">Education</a></li>
						<li><a href="#">Background</a></li>
						<li><a href="#">Employment Information</a></li>
						<li><a href="#">Release and Signature</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="container" id="formInfo">
			<div class="row">
				<div class="col-md-12">
					<form class="" role="form"> <!-- has-success has-feedback -->
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label for="firstName">First Name</label>
									<input type="text" class="form-control" id="firstName" placeholder="First Name">
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label for="middleInitial">Middle Initial</label>
									<input type="text" class="form-control" id="middleInitial" placeholder="M.I.">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="lastName">Last Name</label>
									<input type="text" class="form-control" id="lastName" placeholder="Last Name">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-1">
								<div class="form-group">
									<label for="age">Age</label>
									<input type="text" class="form-control" id="age" placeholder="age">
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="birthDate">Date of Birth</label>
									<input type="text" class="form-control" id="birthDate" placeholder="MM/DD/YYYY">
								</div>
							</div>
							<div class="col-md-4">	
								<div class="form-group">
									<label for="socialNumber">Last 4 Digits of Social Security #</label>
									<input type="text" class="form-control" id="socialNumber" placeholder="XXXX">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="maritalStatus">Marital Status</label>
									<div class="row">
										<div class="col-md-3">
											<div class="radio">
												<label>
													<input type="radio" name="maritalStatus" id="maritalStatus1" value="single" checked>
													Single
												</label>
											</div>
										</div>
										<div class="col-md-3">
											<div class="radio">
												<label>
													<input type="radio" name="maritalStatus" id="maritalStatus2" value="married">
													Married
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="children">Number of Children</label>
									<input type="text" class="form-control" id="children" placeholder="">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>