<%@ include file="/WEB-INF/jsp/common/include.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<%@ include file="/WEB-INF/jsp/common/css.jsp"%>
		<%@ include file="/WEB-INF/jsp/common/script.jsp"%>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<script type="text/javascript">
			$j(document).ready(function() {
				
				updateFormTabs(${step}, ${maxStep});
				
				$j("form").on("click", "button[type='submit']", function(e) {
					$j(this).button('loading');
					$j("#backBtn").addClass("disabled");
				});
				
				$j("#formTabs").on("click", "a", function(e) {
					if($j(this).parent("li").hasClass("disabled")) {
						e.preventDefault();
					}
				});
				
			});
		</script>
		
		<style>
			
		</style>
		
	</head>
	<body>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

		<jsp:include page="/WEB-INF/jsp/form/formNav.jsp"/>

		<div class="container" id="formInfo">
			<c:choose>
				<c:when test="${step eq 1}">
					<%@ include file="/WEB-INF/jsp/form/content/personalInfo.jsp"%>
				</c:when>
				<c:when test="${step eq 2}">
					<%@ include file="/WEB-INF/jsp/form/content/addressInfo.jsp"%>
				</c:when>
				<c:when test="${step eq 3}">
					<%@ include file="/WEB-INF/jsp/form/content/educationInfo.jsp"%>
				</c:when>
				<c:when test="${step eq 4}">
					<%@ include file="/WEB-INF/jsp/form/content/backgroundInfo.jsp"%>
				</c:when>
				<c:when test="${step eq 5}">
					<%@ include file="/WEB-INF/jsp/form/content/employmentInfo.jsp"%>
				</c:when>
				<c:when test="${step eq 6}">
					<%@ include file="/WEB-INF/jsp/form/content/releaseInfo.jsp"%>
				</c:when>
			</c:choose>
		</div>
	</body>
</html>