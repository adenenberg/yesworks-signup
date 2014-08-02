<%@ include file="/WEB-INF/jsp/common/include.jsp" %>

<div id="financeSurvey">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h3>Personal Finance & Money Management Questionnaire</h3>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<form id="financeSurveyForm" class="" role="form"> <!-- has-success has-feedback -->
				<table class="table table-striped table-bordered">
					<tbody>
						<tr>
							<td>1</td>
							<td class="questionText">Deductions from your paycheck are usually between 15-20% of your gross pay.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse1" id="questionResponse1True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse1" id="questionResponse1False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td class="questionText">Fixed expenses include gas and food. A variable expense is rent.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse2" id="questionResponse2True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse2" id="questionResponse2False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td class="questionText">A regular savings account typically gains interest every month.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse3" id="questionResponse3True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse3" id="questionResponse3False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>4</td>
							<td class="questionText">Your debit card is linked to your Savings account, not your Checking account.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse4" id="questionResponse4True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse4" id="questionResponse4False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>5</td>
							<td class="questionText">Instead of saving the money you have left over after paying your bills, you should go on a shopping spree and treat yourself to nice things.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse5" id="questionResponse5True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse5" id="questionResponse5False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>6</td>
							<td class="questionText">Recording everything you purchase for a month will help you track you variable expenses.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse6" id="questionResponse6True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse6" id="questionResponse6False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>7</td>
							<td class="questionText">Most banks are insured by the Federal Deposit Insurance Corporation (FDIC).</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse7" id="questionResponse7True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse7" id="questionResponse7False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>8</td>
							<td class="questionText">If you do not pay the full balance stated on your credit card bill, you will have to pay interest on what you still owe.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse8" id="questionResponse8True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse8" id="questionResponse8False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>9</td>
							<td class="questionText">If you leave a bill unpaid for a long period of time, people who work for a collection agency will begin to contact you to collect
							the unpaid money.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse9" id="questionResponse9True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse9" id="questionResponse9False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>10</td>
							<td class="questionText">Bad marks on your credit record or a low credit score can affect your ability to get a loan, an apartment, or buy a car.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse10" id="questionResponse10True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse10" id="questionResponse10False" value="false"> False
								</label>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="row">
					<div class="col-md-offset-4 col-md-1">
						<a href="#" id="backBtn" class="btn btn-warning disabled">Back</a>
					</div>
					<div class="col-md-offset-2 col-md-1">
						<button type="submit" class="btn btn-success submitButton" data-loading-text="Loading...">Finish</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	$j(document).ready(function() {
		$j('#financeSurveyForm').submit(function(e) {
			e.preventDefault();
			
			var $questions =  $j('#financeSurvey table tr'), 
				survey = {},
				questions = [];
			
			$questions.each(function (index) {
				questions.push({'questionText': $j(this).find('.questionText').text(), 'questionAnswer': $j(this).find('[type="radio"]').val()});
			});
			
			survey.questions = questions;
			
			$j.ajax({
				url: '/survey/finance',
				contentType: 'application/json',
				data: JSON.stringify(survey),
				type: 'POST'
			});
		});
	});
</script>