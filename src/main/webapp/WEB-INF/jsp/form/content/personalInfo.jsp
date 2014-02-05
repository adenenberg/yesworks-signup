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
			<form class="" role="form" method="POST" action="/form/start"> <!-- has-success has-feedback -->
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
					<div class="col-md-4">
						<div class="form-group">
							<label for="gender">Gender</label>
							<div class="row">
								<div class="col-md-3">
									<div class="radio">
										<label>
											<input type="radio" name="gender" id="gender1" value="male" checked>
											Male
										</label>
									</div>
								</div>
								<div class="col-md-3">
									<div class="radio">
										<label>
											<input type="radio" name="gender" id="gender2" value="female">
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
				<div class="row">
					<div class="col-md-offset-4 col-md-1">
						<button id="backBtn" class="btn btn-warning">Back</button>
					</div>
					<div class="col-md-offset-2 col-md-1">
						<button type="submit" class="btn btn-success" data-loading-text="Loading...">Submit</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>