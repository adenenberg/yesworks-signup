<%@ include file="/WEB-INF/jsp/common/include.jsp" %>	

<div id="addressInfo">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h2>Address</h2>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<form class="" role="form" method="POST" action="/form/address"> <!-- has-success has-feedback -->
				<h3><span class="label label-info">Current Address</span></h3>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="currentAddress1">Address Line 1</label>
							<input type="text" class="form-control" id="currentAddress1" placeholder="123 Main Street">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="currentAddress2">Address Line 2</label>
							<input type="text" class="form-control" id="currentAddress2" placeholder="Apt 101">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-5">
						<div class="form-group">
							<label for="currentCity">City</label>
							<input type="text" class="form-control" id="currentCity" placeholder="Los Angeles">
						</div>
					</div>
					<!-- ****************************** -->
					<!-- TODO: FIX STATE TO BE SELECTOR -->
					<!-- ****************************** -->
					<div class="col-md-2">
						<div class="form-group">
							<label for="currentState">State</label>
							<input type="text" class="form-control" id="currentState" placeholder="">
						</div>
					</div>
					<div class="col-md-5">	
						<div class="form-group">
							<label for="currentZipCode">Zip Code</label>
							<input type="text" class="form-control" id="currentZipCode" placeholder="12345">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="checkbox">
							<label>
								<input id="currentSameAsPermanent" type="checkbox"> Current Address and Permanent Address are the same
							</label>
						</div>
					</div>
				</div>
				<hr>
				<h3><span class="label label-info">Permanent Address</span></h3>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="permanentAddress1">Address Line 1</label>
							<input type="text" class="form-control" id="permanentAddress1" placeholder="123 Main Street">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="permanentAddress2">Address Line 2</label>
							<input type="text" class="form-control" id="permanentAddress2" placeholder="Apt 101">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-5">
						<div class="form-group">
							<label for="permanentCity">City</label>
							<input type="text" class="form-control" id="permanentCity" placeholder="Los Angeles">
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label for="permanentState">State</label>
							<input type="text" class="form-control" id="permanentState" placeholder="">
						</div>
					</div>
					<div class="col-md-5">	
						<div class="form-group">
							<label for="permanentZipCode">Zip Code</label>
							<input type="text" class="form-control" id="permanentZipCode" placeholder="12345">
						</div>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="homePhone">Home Phone</label>
							<input type="tel" class="form-control" id="homePhone" placeholder="555-555-5555">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="cellPhone">Cell Phone</label>
							<input type="tel" class="form-control" id="cellPhone" placeholder="555-555-5555">
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
		$j("#addressInfo form").on("click", "#currentSameAsPermanent", function(e) {
			if($j(this).is(":checked")) {
				fillPermanentAddress($j("#currentAddress1").val(), $j("#currentAddress2").val(), $j("#currentCity").val(), $j("#currentState").val(), $j("#currentZipCode").val());
			}
			else {
				fillPermanentAddress("", "", "", "", "");
			}
		});
	});
</script>