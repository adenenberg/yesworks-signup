<%@ include file="/WEB-INF/jsp/common/include.jsp" %>	

<div id="educationInfo">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h2>Education</h2>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<form class="" role="form" method="POST" action="/form/education"> <!-- has-success has-feedback -->
				<div class="row">
					<div class="col-md-8">
						<div class="form-group">
							<label for="schoolName">Current or Most Recent School</label>
							<input type="text" class="form-control" id="schoolName" placeholder="University of California, Berkley">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="schoolType">College or High School</label>
							<div class="row">
								<div class="col-md-3">
									<div class="radio">
										<label>
											<input type="radio" name="schoolType" id="schoolType1" value="college" checked>
											College
										</label>
									</div>
								</div>
								<div class="col-md-3">
									<div class="radio">
										<label>
											<input type="radio" name="schoolType" id="schoolType2" value="highSchool">
											High School
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="schoolYearsCompleted">Years Completed</label>
							<select class="form-control" id="schoolYearsCompleted">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4 or more</option>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label for="educationalAttainment">Educational Attainment</label>
							<div class="row">
								<div class="col-md-4">
									<div class="row">
										<div class="col-md-12">
											<div class="radio">
												<label>
													<input type="radio" name="educationalAttainment" id="educationalAttainment1" value="diplomaInProgress" checked>
													HS Diploma In Progress
												</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="radio">
												<label>
													<input type="radio" name="educationalAttainment" id="educationalAttainment2" value="diplomaEarned" checked>
													HS Diploma Earned
												</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="radio">
												<label>
													<input type="radio" name="educationalAttainment" id="educationalAttainment3" value="none" checked>
													None
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="row">
										<div class="col-md-12">
											<div class="radio">
												<label>
													<input type="radio" name="educationalAttainment" id="educationalAttainment4" value="GED">
													GED
												</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="radio">
												<label>
													<input type="radio" name="educationalAttainment" id="educationalAttainment5" value="associatesInProgress" checked>
													Associate's In Progress
												</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="radio">
												<label>
													<input type="radio" name="educationalAttainment" id="educationalAttainment6" value="associatesEarned" checked>
													Associate's Earned
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="row">
										<div class="col-md-12">
											<div class="radio">
												<label>
													<input type="radio" name="educationalAttainment" id="educationalAttainment7" value="bachelorsInProgress">
													Bachelor's Degree In Progress
												</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="radio">
												<label>
													<input type="radio" name="educationalAttainment" id="educationalAttainment8" value="other" checked>
													Other: blah
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
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

<script type="text/javascript">
	$j(document).ready(function() {
		$j("#educationInfo form").on("click", "[name='schoolType']", function(e) {
			if($j(this).val() == "highSchool") {
				$j("#schoolYearsCompleted").prev("label").text("Last Grade Completed");
				$j("#schoolYearsCompleted option:nth-child(1)").text("Freshman");
				$j("#schoolYearsCompleted option:nth-child(2)").text("Sophomore");
				$j("#schoolYearsCompleted option:nth-child(3)").text("Junior");
				$j("#schoolYearsCompleted option:nth-child(4)").text("Senior");
			}
			else {
				$j("#schoolYearsCompleted").prev("label").text("Years Completed");
				$j("#schoolYearsCompleted option:nth-child(1)").text("1");
				$j("#schoolYearsCompleted option:nth-child(2)").text("2");
				$j("#schoolYearsCompleted option:nth-child(3)").text("3");
				$j("#schoolYearsCompleted option:nth-child(4)").text("4 or more");
			}
		});
	});
</script>