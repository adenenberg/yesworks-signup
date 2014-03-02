<%@ include file="/WEB-INF/jsp/common/include.jsp" %>	

<div id="personalInfo">	
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h3>Personal Information</h3>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<form class="" role="form" name="youth" method="POST" action="/form/start"> <!-- has-success has-feedback -->
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="firstName">First Name</label>
							<input name="firstName" type="text" class="form-control" id="firstName" placeholder="First Name">
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label for="middleInitial">Middle Initial</label>
							<input name="middleInitial" type="text" class="form-control" id="middleInitial" placeholder="M.I.">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="lastName">Last Name</label>
							<input name="lastName" type="text" class="form-control" id="lastName" placeholder="Last Name">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-1">
						<div class="form-group">
							<label for="age">Age</label>
							<input name="age" type="text" class="form-control" id="age" placeholder="age">
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label for="birthDate">Date of Birth</label>
							<input name="birthDate" type="text" class="form-control" id="birthDate" placeholder="MM/DD/YYYY">
						</div>
					</div>
					<div class="col-md-4">	
						<div class="form-group">
							<label for="socialNumber">Last 4 Digits of Social Security #</label>
							<input name="lastFourSocial" type="text" class="form-control" id="socialNumber" placeholder="XXXX">
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="gender">Gender</label>
							<div class="row">
								<div class="col-md-3">
									<div class="radio">
										<label>
											<input type="radio" name="gender" id="gender1" value="MALE" checked>
											Male
										</label>
									</div>
								</div>
								<div class="col-md-3">
									<div class="radio">
										<label>
											<input type="radio" name="gender" id="gender2" value="FEMALE">
											Female
										</label>
									</div>
								</div>
							</div>
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
											<input type="radio" name="maritalStatus" id="maritalStatus1" value="SINGLE" checked>
											Single
										</label>
									</div>
								</div>
								<div class="col-md-3">
									<div class="radio">
										<label>
											<input type="radio" name="maritalStatus" id="maritalStatus2" value="MARRIED">
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
							<input name="numberOfChildren" type="text" class="form-control" id="children" placeholder="">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-offset-4 col-md-1">
						<a href="#" id="backBtn" class="btn btn-warning disabled">Back</a>
					</div>
					<div class="col-md-offset-2 col-md-1">
						<button type="submit" class="btn btn-success" data-loading-text="Loading...">Submit</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	$j(document).ready(function() {
		$j("#birthDate").datetimepicker({
			pickTime: false,
			viewMode: 'years'
		});
	});
</script>