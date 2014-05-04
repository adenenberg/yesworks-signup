<%@ include file="/WEB-INF/jsp/common/include.jsp" %>	

<style>

</style>

<div id="employmentInfo">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h2>Employment Information</h2>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<form class="" role="form" method="POST" action="/form/employment"> <!-- has-success has-feedback -->
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">What are your hours of availability to work?</h4>
							</div>
							<div class="panel-body">
								<div class="row" id="weeklyHours">
									<div class="col-md-1">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="sundayHoursFrom">Sunday</label>
													<br/>
													<span class="label label-info">From</span>
													<input type="text" class="form-control" id="sundayHoursFrom" name="sundayHoursFrom" placeholder="">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<span class="label label-info">To</span>
													<input type="text" class="form-control" id="sundayHoursTo" name="sundayHoursTo" placeholder="">
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="mondayHoursFrom">Monday</label>
													<br/>
													<span class="label label-info">From</span>
													<input type="text" class="form-control" id="mondayHoursFrom" name="mondayHoursFrom" placeholder="">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<span class="label label-info">To</span>
													<input type="text" class="form-control" id="mondayHoursTo" name="mondayHoursTo" placeholder="">
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="tuesdayHoursFrom">Tuesday</label>
													<br/>
													<span class="label label-info">From</span>
													<input type="text" class="form-control" id="tuesdayHoursFrom" name="tuesdayHoursFrom" placeholder="">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<span class="label label-info">To</span>
													<input type="text" class="form-control" id="tuesdayHoursTo" name="tuesdayHoursTo" placeholder="">
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="wednesdayHoursFrom">Wednesday</label>
													<br/>
													<span class="label label-info">From</span>
													<input type="text" class="form-control" id="wednesdayHoursFrom" name="wednesdayHoursFrom" placeholder="">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<span class="label label-info">To</span>
													<input type="text" class="form-control" id="wednesdayHoursTo" name="wednesdayHoursTo" placeholder="">
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="thursdayHoursFrom">Thursday</label>
													<br/>
													<span class="label label-info">From</span>
													<input type="text" class="form-control" id="thursdayHoursFrom" name="thursdayHoursFrom" placeholder="">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<span class="label label-info">To</span>
													<input type="text" class="form-control" id="thursdayHoursTo" name="thursdayHoursTo" placeholder="">
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="fridayHoursFrom">Friday</label>
													<br/>
													<span class="label label-info">From</span>
													<input type="text" class="form-control" id="fridayHoursFrom" name="fridayHoursFrom" placeholder="">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<span class="label label-info">To</span>
													<input type="text" class="form-control" id="fridayHoursTo" name="fridayHoursTo" placeholder="">
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="saturdayHoursFrom">Saturday</label>
													<br/>
													<span class="label label-info">From</span>
													<input type="text" class="form-control" id="saturdayHoursFrom" name="saturdayHoursFrom" placeholder="">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<span class="label label-info">To</span>
													<input type="text" class="form-control" id="saturdayHoursTo" name="saturdayHoursTo" placeholder="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label for="skills">List out any skills you have:</label>
							<br/>
							<small class="text-muted">For example: Additional languages, CPR, First Aid, Guard Card, Driver's License, Car Insurance, Basic Computer Skills</small>
							<textarea name="skills" id="skills" class="form-control" rows="3"></textarea>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="jobType">What type of job are you looking for?</label>
							<br/>
							<small class="text-warning">Check all that apply</small>
							<div class="checkbox">
								<label>
									<input type="checkbox" name="jobType" id="jobType1" value="FULL_TIME">
									Full-time
								</label>
							</div>
							<div class="checkbox">
								<label>
									<input type="checkbox" name=jobType id="jobType2" value="PART_TIME">
									Part-time
								</label>
							</div>
							<div class="checkbox">
								<label>
									<input type="checkbox" name="jobType" id="jobType3" value="SEASONAL_TEMPORARY">
									Seasonal/Temporary
								</label>
							</div>
							<div class="checkbox">
								<label>
									<input type="checkbox" name="jobType" id="jobType4" value="WEEKENDS_ONLY">
									Weekends Only
								</label>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="jobKind">What kinds of jobs are you interested in?</label>
							<br/>
							<small class="text-muted">For example: retail, construction, computers, etc</small>
							<input id="jobKind" name="jobKind" type="text" class="form-control" id="permanentState" placeholder="">
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="dreamCareer">What is your dream career?</label>
							<textarea id="dreamCareer" name="dreamCareer" class="form-control" rows="3"></textarea>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label for="additionalChallenges">Do you think you might have any additional challenges that might make it difficult to find a job? Please explain.</label>
							<textarea id="additionalChallenges" name="additionalChallenges" class="form-control" rows="3"></textarea>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-offset-4 col-md-1">
						<a href="/form/education" id="backBtn" class="btn btn-warning">Back</a>
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
		$j("#weeklyHours input").each(function() {
			setupTimePicker(this);
		});
	});
</script>