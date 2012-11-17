<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ttTags" uri="/WEB-INF/tags/tothought-tags.tld"%>

<ttTags:documentTemplate cssFiles="resume.css,rating.css"
	sidebarFragment="resume_sidebar.jsp">
	<div class="v-bottm-margin-20 clearfix">
		<div class="float-left">
			<div class="font-large bold">Technical Expertise</div>
		</div>
	</div>
	<c:forEach var="skillCategory" items="${categories}">
		<div class="font-medium bold section-title subtle">${skillCategory.name}</div>
		<c:forEach var="skill" items="${skillCategory.skills}">
			<ttTags:rated-resume-item text="${skill.name}"
				imageSrc="../resources/images/resume/tech/uploaded-icons/${skill.image.name}" 
				rating="${skill.rating}" href="${pageContext.request.contextPath}/resume/tech/${skill.skillId}" />
		</c:forEach>
	</c:forEach>

<!--  
	<ttTags:rated-resume-item text="Java"
		imageSrc="../resources/images/resume/tech/java.png" rating="1" />
	<ttTags:rated-resume-item text="Javascript"
		imageSrc="../resources/images/resume/tech/java.png" rating="3" />
	<ttTags:rated-resume-item text="HTML"
		imageSrc="../resources/images/resume/tech/java.png" rating="3" />
-->
</ttTags:documentTemplate>

