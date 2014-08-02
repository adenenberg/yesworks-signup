<%@ include file="/WEB-INF/jsp/common/include.jsp" %>

<div id="skillsSurvey">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h3>Employment Skills Training Questionnaire</h3>
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
							<td class="questionText">I am just picking up job applications, but don't have an interview. It's ok to dress casually.</td>
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
							<td class="questionText">A cover letter generally should include a physical description of yourself and the hours that best work around 
							your schedule.</td>
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
							<td class="questionText">When leaving a voice message for an employer it is rude to say your name and phone number twice.</td>
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
							<td class="questionText">The first 90 days at a job is known as a "probationary period", after which you may be let go if the manager(s) 
							are unsatisfied with your performance.</td>
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
							<td class="questionText">Following up to an interview with a thank you letter is only appropriate when you are applying for an office job.</td>
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
							<td class="questionText">When calling an employer to follow-up about a job opportunity you should just hang up and not leave a message if 
							they are not available.</td>
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
							<td class="questionText">"Little white lies" don't hurt anyone, so it is fine to tell them on a job application.</td>
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
							<td class="questionText">Participating in company gossip is normal and will help you become popular with your co-workers and boss.</td>
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
							<td class="questionText">When filling out an application and a question does not apply to you, write a big "X" in the space.</td>
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
							<td class="questionText">Volunteer work does not count as work experience and cannot be included on your resume.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse10" id="questionResponse10True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse10" id="questionResponse10False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>11</td>
							<td class="questionText">Generally speaking, an employer will not give you a good recommendation in the future if 
							you do not give them two weeks notice that you are quitting.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse11" id="questionResponse11True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse11" id="questionResponse11False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>12</td>
							<td class="questionText">Making eye contact and having a firm handshake are not important in an interview because the 
							employer really only cares about your job experience.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse12" id="questionResponse12True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse12" id="questionResponse12False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>13</td>
							<td class="questionText">You are expecting a phone call; it is ok to have your cell phone on during the interview.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse13" id="questionResponse13True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse13" id="questionResponse13False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>14</td>
							<td class="questionText">If you're having a problem with a co-worker, you should go directly to the highest person in 
							authority to make a complaint.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse14" id="questionResponse14True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse14" id="questionResponse14False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>15</td>
							<td class="questionText">You are applying for a job that requires customer service skills. You have cashier experience from 
							a volunteer event you did with school. You should mention this on your application.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse15" id="questionResponse15True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse15" id="questionResponse15False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>16</td>
							<td class="questionText">Telling people that you are looking for a job is a waste of time if they don't have openings at their business.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse16" id="questionResponse16True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse16" id="questionResponse16False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>17</td>
							<td class="questionText">Texting on the job is okay as long as no customers are around.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse17" id="questionResponse17True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse17" id="questionResponse17False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>18</td>
							<td class="questionText">Your former boss was really mean and that's why you left your last job. It is perfect fine to speak negatively 
							about that employer when interviewing for a new job.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse18" id="questionResponse18True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse18" id="questionResponse18False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>19</td>
							<td class="questionText">Showing up for work on time and asking for additional responsibilities may help you get a raise.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse19" id="questionResponse19True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse19" id="questionResponse19False" value="false"> False
								</label>
							</td>
						</tr>
						<tr>
							<td>20</td>
							<td class="questionText">After turning in an application, you should wait 2 weeks before following up.</td>
							<td>
								<label class="radio-inline">
									<input type="radio" name="questionResponse20" id="questionResponse20True" value="true"> True
								</label>
								<label class="radio-inline">
									<input type="radio" name="questionResponse20" id="questionResponse20False" value="false"> False
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
		$j('#financeSurvey').submit(function(e) {
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