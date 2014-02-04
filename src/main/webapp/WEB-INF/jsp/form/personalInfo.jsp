<%@ include file="/WEB-INF/jsp/common/include.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<%@ include file="/WEB-INF/jsp/common/css.jsp"%>
		<%@ include file="/WEB-INF/jsp/common/script.jsp"%>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body>
		<div class="container-fluid">
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
			<div class="row">
				<div class="col-md-12">
					<form role="form" class="form-horizontal"> <!-- has-success has-feedback -->
						<div class="form-group">
							<label for="firstName">First Name</label>
							<input type="text" class="form-control" id="firstName" placeholder="First Name">
						</div>
						<div class="form-group">
							<label for="middleInitial">Middle Initial</label>
							<input type="text" class="form-control" id="middleInitial" placeholder="M.I.">
						</div>
						<div class="form-group">
							<label for="lastName">Last Name</label>
							<input type="text" class="form-control" id="lastName" placeholder="Last Name">
						</div>
						<div class="form-group">
							<label for="socialNumber">Last 4 Digits of Social Security #</label>
							<input type="text" class="form-control" id="socialNumber" placeholder="XXXX">
						</div>
						<div class="form-group">
							<label for="birthDate">Date of Birth</label>
							<input type="text" class="form-control" id="birthDate" placeholder="">
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>