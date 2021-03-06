<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="authenticated.companyrecord.name" path="name"/>
	<acme:form-textbox code="authenticated.companyrecord.sector" path="sector"/>
	<acme:form-textbox code="authenticated.companyrecord.ceoName" path="ceoName"/>
	<acme:form-url code="authenticated.companyrecord.webSite" path="webSite"/>
	<acme:form-textbox code="authenticated.companyrecord.phone" path="phone" placeholder="+999 (9999) 999999"/>
	<acme:form-textbox code="authenticated.companyrecord.email" path="email"/>
		<jstl:if test="${command != 'create' }">
	<acme:form-checkbox code="authenticated.companyrecord.incorporated" path="incorporated" readonly="true"/>
	</jstl:if>
	<acme:form-textbox code="authenticated.companyrecord.stars" path="stars"/>
	<acme:form-textarea code="authenticated.companyrecord.description" path="description"/>
	
	<acme:form-submit test="${command == 'show'}" code="administrator.companyrecord.form.button.update" action="/administrator/company-record/update"/>
	<acme:form-submit test="${command == 'show'}" code="administrator.companyrecord.form.button.delete" action="/administrator/company-record/delete"/>
	<acme:form-submit test="${command == 'create'}" code="administrator.companyrecord.form.button.create" action="/administrator/company-record/create"/>
	<acme:form-submit test="${command == 'update'}" code="administrator.companyrecord.form.button.update" action="/administrator/company-record/update"/>
	<acme:form-submit test="${command == 'delete'}" code="administrator.companyrecord.form.button.delete" action="/administrator/company-record/delete"/>
  	<acme:form-return code="authentication.offer.return"/>
</acme:form>
