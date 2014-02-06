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

function fillPermanentAddress(address1, address2, city, state, zipCode) {
	$j("#permanentAddress1").val(address1);
	$j("#permanentAddress2").val(address2);
	$j("#permanentCity").val(city);
	$j("#permanentState").val(state);
	$j("#permanentZipCode").val(zipCode);
}

function setupTimePicker(field) {
	$j(field).datetimepicker({
		pickDate: false,
		minuteStepping: 10,
		defaultDate: moment().startOf("day")
	});
}