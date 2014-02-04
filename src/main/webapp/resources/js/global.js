//Global Javascript functions

function updateFormTabs(currentStep, maxStep) {
	currentStep -= 1;
	maxStep -= 1;
	$j("#formTabs ul li").each(function(index) {
		if(index == currentStep) {
			$j(this).addClass("active");
		}
		else if(index > maxStep) {
			$j(this).addClass("disabled");
		}
	});
}