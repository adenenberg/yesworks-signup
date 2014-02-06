<%@ include file="/WEB-INF/jsp/common/include.jsp" %>	

<div id="backgroundInfo">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h2>Background</h2>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<form class="" role="form" method="POST" action="/form/background"> <!-- has-success has-feedback -->
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="ethnicity">Ethnicity</label>
							<div class="radio">
								<label>
									<input type="radio" name="ethnicity" id="ethnicity1" value="true" checked>
									I am Hispanic/Latino
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="ethnicity" id="ethnicity2" value="false">
									I am not Hispanic/Latino
								</label>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="race">Race</label>&nbsp;&nbsp;&nbsp;<small class="text-warning">Check all that apply</small>
							<div class="checkbox">
								<label>
									<input type="checkbox" name="race" id="race1" value="1">
									American Indian or Alaska Native
								</label>
							</div>
							<div class="checkbox">
								<label>
									<input type="checkbox" name="race" id="race2" value="2">
									Asian
								</label>
							</div>
							<div class="checkbox">
								<label>
									<input type="checkbox" name="race" id="race3" value="3">
									Black or African American
								</label>
							</div>
							<div class="checkbox">
								<label>
									<input type="checkbox" name="race" id="race4" value="4">
									Native Hawaiian or Other Pacific Islander
								</label>
							</div>
							<div class="checkbox">
								<label>
									<input type="checkbox" name="race" id="race5" value="5">
									White
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="livingSituation">Who do you live with?</label>
							<div class="radio">
								<label>
									<input type="radio" name="livingSituation" id="livingSituation1" value="parents" checked>
									Both Parents/Step Parents
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="livingSituation" id="livingSituation2" value="mother">
									Mother Only
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="livingSituation" id="livingSituation3" value="father">
									Father Only
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="livingSituation" id="livingSituation4" value="self">
									By Myself
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="livingSituation" id="livingSituation5" value="guardian">
									Guardian: Relationship? ___ <!-- NEED TO INSERT TEXT FIELD -->
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="livingSituation" id="livingSituation6" value="foster">
									In Foster Care/Group Home
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="livingSituation" id="livingSituation7" value="soberLiving">
									Sober Living
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="livingSituation" id="livingSituation8" value="spouse">
									Wife/Husband
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="livingSituation" id="livingSituation9" value="other">
									Other: ___ <!-- NEED TO INSERT TEXT FIELD -->
								</label>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="financialSupporter">Who supports you financially?</label>
							<div class="radio">
								<label>
									<input type="radio" name="financialSupporter" id="financialSupporter1" value="parents" checked>
									Both Parents/Step Parents
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="financialSupporter" id="financialSupporter2" value="mother">
									Mother Only
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="financialSupporter" id="financialSupporter3" value="father">
									Father Only
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="financialSupporter" id="financialSupporter4" value="self">
									Self-Supporting
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="financialSupporter" id="financialSupporter5" value="guardian">
									Guardian: Relationship? ___ <!-- NEED TO INSERT TEXT FIELD -->
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="financialSupporter" id="financialSupporter6" value="emancipated">
									Emancipated
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="financialSupporter" id="financialSupporter7" value="courtWard">
									Ward of the Court
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="financialSupporter" id="financialSupporter8" value="spouse">
									Wife/Husband
								</label>
							</div>
							<div class="radio">
								<label>
									<input type="radio" name="financialSupporter" id="financialSupporter9" value="other">
									Other: ___ <!-- NEED TO INSERT TEXT FIELD -->
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="annualIncome">Annual Family Income</label>
							$<input type="text" class="form-control" id="annualIncome" placeholder="12345">
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="numSupportedByIncome"># of People Supported by Income</label>
							<input type="text" class="form-control" id="numSupportedByIncome" placeholder="">
						</div>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label for="hasCheckingAccount">Do you have a Checking Account?</label>
									<div class="row">
										<div class="col-md-3">
											<div class="radio">
												<label>
													<input type="radio" name="hasCheckingAccount" id="hasCheckingAccount1" value="true">
													Yes
												</label>
											</div>
										</div>
										<div class="col-md-3">
											<div class="radio">
												<label>
													<input type="radio" name="hasCheckingAccount" id="hasCheckingAccount2" value="false">
													No
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label for="hasSavingsAccount">Do you have a Savings Account?</label>
									<div class="row">
										<div class="col-md-3">
											<div class="radio">
												<label>
													<input type="radio" name="hasSavingsAccount" id="hasSavingsAccount1" value="true">
													Yes
												</label>
											</div>
										</div>
										<div class="col-md-3">
											<div class="radio">
												<label>
													<input type="radio" name="hasSavingsAccount" id="hasSavingsAccount2" value="false">
													No
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

	});
</script>