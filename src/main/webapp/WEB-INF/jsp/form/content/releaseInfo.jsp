<%@ include file="/WEB-INF/jsp/common/include.jsp" %>	

<div id="releaseInfo">	
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h3>Release and Signature Information</h3>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<form class="" role="form" name="release" method="POST" action="/form/release"> <!-- has-success has-feedback -->
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label for="acceptRelease">
								<b>Please answer if over 18, </b>YES at times likes to take pictures of students in the office, taking workshops, and on field trips and uses the pictures in our publications. 
								I give permission for YES to take my picture and use it in YES publications and program materials.
							</label>
							<div class="row">
								<div class="col-md-3">
									<div class="radio">
										<label>
											<input type="radio" name="acceptRelease" id="pictureRelease1" value="true">
											Accept
										</label>
									</div>
								</div>
								<div class="col-md-3">
									<div class="radio">
										<label>
											<input type="radio" name="acceptRelease" id="pictureRelease2" value="false">
											Deny
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label for="isFirstVisit">Is this your first visit to YES?</label>
							<div class="row">
								<div class="col-md-3">
									<div class="radio">
										<label>
											<input type="radio" name="isFirstVisit" id="firstVisit1" value="true">
											Yes
										</label>
									</div>
								</div>
								<div class="col-md-3">
									<div class="radio">
										<label>
											<input type="radio" name="isFirstVisit" id="firstVisit2" value="false">
											No
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label for="referral">If yes, how were you referred?</label>
							<input name="referral" type="text" class="form-control" id="referral" placeholder="">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="signature"><i>I certify that this information is true and correct and agree to provide verifying documentation if it is requested.</i></label>
							<br/>
							<small class="text-warning">Please enter your name in the field below</small>
							<input name="signature" type="text" class="form-control" id="signature" placeholder="">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-offset-4 col-md-1">
						<a href="#" id="backBtn" class="btn btn-warning disabled">Back</a>
					</div>
					<div class="col-md-offset-2 col-md-1">
						<button type="submit" class="btn btn-success" data-loading-text="Loading...">Finish</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
</script>