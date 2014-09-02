<%@ include file="/WEB-INF/jsp/common/include.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<%@ include file="/WEB-INF/jsp/common/css.jsp"%>
		<%@ include file="/WEB-INF/jsp/common/script.jsp"%>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<script type="text/javascript">
			$j(document).ready(function() {
				
				$j("form").on("click", "#saveAndAdd", function(e) {
					e.preventDefault();
					$j('form').attr('target','');
				    $j('form').attr('action','/experience/save');
				    $j('form').submit();
				});
				
				$j("form").on("click", "button[type='submit']", function(e) {
					$j(this).button('loading');
					$j("#backBtn").addClass("disabled");
				});
				
			});
		</script>
		
		<style>
			
		</style>
		
	</head>
	<body>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>


		<div class="container" id="experienceInfo">
		
			<div class="row">
				<div class="col-md-12">
					<div class="page-header">
						<h3>Work/Volunteer Experience</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<form class="" name="experience" role="form" method="POST" action="/experience/continue"> <!-- has-success has-feedback -->
						<div class="row">
							<div class="col-md-8">
								<div class="form-group">
									<label for="companyName">Company Name</label>
									<input name="companyName" type="text" class="form-control" id="companyName" placeholder="Company Name">
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label for="startDate">Dates of Employment</label>
									<span class="label label-info">From</span>
									<input name="startDate" type="text" class="form-control" id="startDate" placeholder="">
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<br>
									<span class="label label-info">To</span>
									<input name="endDate" type="text" class="form-control" id="endDate" placeholder="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="jobTitle">Job Title</label>
									<input name="jobTitle" type="text" class="form-control" id="jobTitle" placeholder="">
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label for="payRateAmount">Pay Rate</label>
									<div class="input-group">
										<span class="input-group-addon">$</span>
										<input name="payRateAmount" type="text" class="form-control" id="payRateAmount" placeholder="">
									</div>
								</div>
							</div>
							<div class="col-md-2">	
								<div class="form-group">
									<br>
									<div class="input-group">
										<span class="input-group-addon">per</span>
										<input name="payRateInterval" type="text" class="form-control" id="payRateInterval" placeholder="">
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label for="hoursPerWeek">Hours per week</label>
									<input name="hoursPerWeek" type="text" class="form-control" id="hoursPerWeek" placeholder="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">								
									<label for="jobDuties">Job Duties</label>
									<textarea name="jobDuties" id="jobDuties" class="form-control" rows="3"></textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-7">
								<div class="form-group">
									<label for="reasonForLeaving">Reason for leaving</label>
									<input name="reasonForLeaving" type="text" class="form-control" id="reasonForLeaving" placeholder="">
								</div>
							</div>
							<div class="col-md-5">
								<div class="form-group">
									<label for="leavingTerms">Did you leave on good terms?</label>
									<input name="leavingTerms" type="text" class="form-control" id="leavingTerms" placeholder="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-offset-4 col-md-1">
								<a href="#" id="saveAndAdd" class="btn btn-warning">Save and Add Another</a>
							</div>
							<div class="col-md-offset-2 col-md-1">
								<button type="submit" class="btn btn-success" data-loading-text="Loading...">Save and Continue</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			
		</div>
	</body>
</html>