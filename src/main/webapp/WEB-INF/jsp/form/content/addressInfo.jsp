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
			<form class="" name="address" role="form" method="POST" action="/form/address"> <!-- has-success has-feedback -->
				<h3><span class="label label-info">Current Address</span></h3>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="currentAddress1">Address Line 1</label>
							<input name="currentAddressLine1" type="text" class="form-control" id="currentAddress1" placeholder="123 Main Street">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="currentAddress2">Address Line 2</label>
							<input name="currentAddressLine2" type="text" class="form-control" id="currentAddress2" placeholder="Apt 101">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-5">
						<div class="form-group">
							<label for="currentCity">City</label>
							<input name="currentCity" type="text" class="form-control" id="currentCity" placeholder="Los Angeles">
						</div>
					</div>
					<!-- ****************************** -->
					<!-- TODO: FIX STATE TO BE SELECTOR -->
					<!-- ****************************** -->
					<div class="col-md-2">
						<div class="form-group">
							<label for="currentState">State</label>
							<!-- <input type="text" class="form-control" id="currentState" placeholder=""> -->
							<select name="currentState" class="form-control" id="currentState">
								<option value="" selected>---</option>
								<option value="AL">Alabama</option>
								<option value="AK">Alaska</option>
								<option value="AZ">Arizona</option>
								<option value="AR">Arkansas</option>
								<option value="CA">California</option>
								<option value="CO">Colorado</option>
								<option value="CT">Connecticut</option>
								<option value="DE">Delaware</option>
								<option value="DC">District Of Columbia</option>
								<option value="FL">Florida</option>
								<option value="GA">Georgia</option>
								<option value="HI">Hawaii</option>
								<option value="ID">Idaho</option>
								<option value="IL">Illinois</option>
								<option value="IN">Indiana</option>
								<option value="IA">Iowa</option>
								<option value="KS">Kansas</option>
								<option value="KY">Kentucky</option>
								<option value="LA">Louisiana</option>
								<option value="ME">Maine</option>
								<option value="MD">Maryland</option>
								<option value="MA">Massachusetts</option>
								<option value="MI">Michigan</option>
								<option value="MN">Minnesota</option>
								<option value="MS">Mississippi</option>
								<option value="MO">Missouri</option>
								<option value="MT">Montana</option>
								<option value="NE">Nebraska</option>
								<option value="NV">Nevada</option>
								<option value="NH">New Hampshire</option>
								<option value="NJ">New Jersey</option>
								<option value="NM">New Mexico</option>
								<option value="NY">New York</option>
								<option value="NC">North Carolina</option>
								<option value="ND">North Dakota</option>
								<option value="OH">Ohio</option>
								<option value="OK">Oklahoma</option>
								<option value="OR">Oregon</option>
								<option value="PA">Pennsylvania</option>
								<option value="RI">Rhode Island</option>
								<option value="SC">South Carolina</option>
								<option value="SD">South Dakota</option>
								<option value="TN">Tennessee</option>
								<option value="TX">Texas</option>
								<option value="UT">Utah</option>
								<option value="VT">Vermont</option>
								<option value="VA">Virginia</option>
								<option value="WA">Washington</option>
								<option value="WV">West Virginia</option>
								<option value="WI">Wisconsin</option>
								<option value="WY">Wyoming</option>
							</select>
						</div>
					</div>
					<div class="col-md-5">	
						<div class="form-group">
							<label for="currentZipCode">Zip Code</label>
							<input name="currentZipCode" type="text" class="form-control" id="currentZipCode" placeholder="12345">
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
							<input name="permanentAddressLine1" type="text" class="form-control" id="permanentAddress1" placeholder="123 Main Street">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="permanentAddress2">Address Line 2</label>
							<input name="permanentAddressLine2" type="text" class="form-control" id="permanentAddress2" placeholder="Apt 101">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-5">
						<div class="form-group">
							<label for="permanentCity">City</label>
							<input name="permanentCity" type="text" class="form-control" id="permanentCity" placeholder="Los Angeles">
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label for="permanentState">State</label>
							<!-- <input name="permanentState" type="text" class="form-control" id="permanentState" placeholder=""> -->
							<select name="permanentState" class="form-control" id="permanentState">
								<option value="" selected>---</option>
								<option value="AL">Alabama</option>
								<option value="AK">Alaska</option>
								<option value="AZ">Arizona</option>
								<option value="AR">Arkansas</option>
								<option value="CA">California</option>
								<option value="CO">Colorado</option>
								<option value="CT">Connecticut</option>
								<option value="DE">Delaware</option>
								<option value="DC">District Of Columbia</option>
								<option value="FL">Florida</option>
								<option value="GA">Georgia</option>
								<option value="HI">Hawaii</option>
								<option value="ID">Idaho</option>
								<option value="IL">Illinois</option>
								<option value="IN">Indiana</option>
								<option value="IA">Iowa</option>
								<option value="KS">Kansas</option>
								<option value="KY">Kentucky</option>
								<option value="LA">Louisiana</option>
								<option value="ME">Maine</option>
								<option value="MD">Maryland</option>
								<option value="MA">Massachusetts</option>
								<option value="MI">Michigan</option>
								<option value="MN">Minnesota</option>
								<option value="MS">Mississippi</option>
								<option value="MO">Missouri</option>
								<option value="MT">Montana</option>
								<option value="NE">Nebraska</option>
								<option value="NV">Nevada</option>
								<option value="NH">New Hampshire</option>
								<option value="NJ">New Jersey</option>
								<option value="NM">New Mexico</option>
								<option value="NY">New York</option>
								<option value="NC">North Carolina</option>
								<option value="ND">North Dakota</option>
								<option value="OH">Ohio</option>
								<option value="OK">Oklahoma</option>
								<option value="OR">Oregon</option>
								<option value="PA">Pennsylvania</option>
								<option value="RI">Rhode Island</option>
								<option value="SC">South Carolina</option>
								<option value="SD">South Dakota</option>
								<option value="TN">Tennessee</option>
								<option value="TX">Texas</option>
								<option value="UT">Utah</option>
								<option value="VT">Vermont</option>
								<option value="VA">Virginia</option>
								<option value="WA">Washington</option>
								<option value="WV">West Virginia</option>
								<option value="WI">Wisconsin</option>
								<option value="WY">Wyoming</option>
							</select>
						</div>
					</div>
					<div class="col-md-5">	
						<div class="form-group">
							<label for="permanentZipCode">Zip Code</label>
							<input name="permanentZipCode" type="text" class="form-control" id="permanentZipCode" placeholder="12345">
						</div>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="homePhone">Home Phone</label>
							<input name="homePhone" type="tel" class="form-control" id="homePhone" placeholder="555-555-5555">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="cellPhone">Cell Phone</label>
							<input name="cellPhone" type="tel" class="form-control" id="cellPhone" placeholder="555-555-5555">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-offset-4 col-md-1">
						<a href="/form/start" id="backBtn" class="btn btn-warning">Back</a>
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