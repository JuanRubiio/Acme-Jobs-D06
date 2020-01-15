<%--
- menu.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java" import="acme.framework.helpers.PrincipalHelper"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:menu-bar code="master.menu.home">
	<acme:menu-left>
		<acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.favourite-link" action="https://stackoverflow.com/"/>
            <acme:menu-suboption code="master.menu.anonymous.favourite-link-2" action="http://www.marca.com/"/>
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-3" action="http://www.as.com/"/>
			<acme:menu-suboption code="master.menu.anonymous.jimenezbulletin.list" action="/anonymous/jimenez-bulletin/list"/>
			<acme:menu-suboption code="master.menu.anonymous.jimenezbulletin.create" action="/anonymous/jimenez-bulletin/create"/>
			<acme:menu-suboption code="master.menu.anonymous.list2" action="/anonymous/garcia-bulletin/list"/>
			<acme:menu-suboption code="master.menu.anonymous.create2" action="/anonymous/garcia-bulletin/create"/>
			<acme:menu-suboption code="master.menu.anonymous.rivero-bulletin.list" action="/anonymous/rivero-bulletin/list"/>
			<acme:menu-suboption code="master.menu.anonymous.rivero-bulletin.create" action="/anonymous/rivero-bulletin/create"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.anonymous.announcement.list" action="/anonymous/announcement/list"/>
			<acme:menu-suboption code="master.menu.anonymous.companyrecord.list" action="/anonymous/company-record/list"/>
			<acme:menu-suboption code="master.menu.anonymous.companyrecord.list.top" action="/anonymous/company-record/list-top"/>
			<acme:menu-suboption code="master.menu.anonymous.investorrecord.list" action="/anonymous/investor-record/list"/>
			<acme:menu-suboption code="master.menu.anonymous.investorrecord.list.top" action="/anonymous/investor-record/list-top"/>
			
		</acme:menu-option>

	
		<acme:menu-option code="master.menu.administrator" access="hasRole('Administrator')">
			<acme:menu-suboption code="master.menu.administrator.user-accounts" action="/administrator/user-account/list"/>
			
   			<acme:menu-suboption code="master.menu.administrator.request.auditor" action="/administrator/request-auditor/list"/>
			
			<acme:menu-suboption code="master.menu.administrator.dashboard" action="/administrator/dashboard/show"/>
			<acme:menu-suboption code="master.menu.administrator.chart" action="/administrator/chart/show"/>
			<acme:menu-suboption code="master.menu.administrator.customisationparameters" action="/administrator/customisation-parameters/show"/>
			<acme:menu-suboption code="master.menu.administrator.announcement.list" action="/administrator/announcement/list"/>
			<acme:menu-suboption code="master.menu.administrator.announcement.create" action="/administrator/announcement/create"/>
			<acme:menu-suboption code="master.menu.administrator.companyrecord.create" action="/administrator/company-record/create"/>
			<acme:menu-suboption code="master.menu.administrator.companyrecord.list" action="/administrator/company-record/list"/>
			<acme:menu-suboption code="master.menu.administrator.investorrecord.create" action="/administrator/investor-record/create"/>
			<acme:menu-suboption code="master.menu.administrator.investorrecord.list" action="/administrator/investor-record/list"/>
			<acme:menu-suboption code="master.menu.administrator.challenge.list" action="/administrator/challenge/list"/>
			<acme:menu-suboption code="master.menu.administrator.challenge.create" action="/administrator/challenge/create"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.shutdown" action="/master/shutdown"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.worker" access="hasRole('Worker')"> 
			<acme:menu-suboption code="master.menu.worker.application.list" action="/worker/application/list" />
			<acme:menu-suboption code="master.menu.worker.job.list" action="/worker/job/list-active" />
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.employer" access="hasRole('Employer')"> 
			<acme:menu-suboption code="master.menu.employer.provider.list" action="/employer/job/list-mine"/>
			<acme:menu-suboption code="master.menu.employer.create" action="/employer/job/create"/>
			<acme:menu-suboption code="master.menu.employer.application.list" action="/employer/application/list-mine"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.sponsor" access="hasRole('Sponsor')"> 
			<acme:menu-suboption code="master.menu.sponsor.noncommercialBanner.list" action="/sponsor/non-commercial-banner/list"/>
			<acme:menu-suboption code="master.menu.sponsor.noncommercialBanner.create" action="/sponsor/non-commercial-banner/create"/>
			<acme:menu-suboption code="master.menu.sponsor.commercialBanner.list" action="/sponsor/commercial-banner/list"/>
			<acme:menu-suboption code="master.menu.sponsor.commercialBanner.create" action="/sponsor/commercial-banner/create"/>	
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.authenticated" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.authenticated.announcement.list" action="/authenticated/announcement/list" access="!hasRole('Administrator')"/>
			<acme:menu-suboption code="master.menu.authenticated.investorrecord.list" action="/authenticated/investor-record/list" access="!hasRole('Administrator')"/>
			<acme:menu-suboption code="master.menu.authenticated.companyrecord.list" action="/authenticated/company-record/list"/>
			<acme:menu-suboption code="master.menu.provider.request.list" action="/authenticated/request/list"/>
			<acme:menu-suboption code="master.menu.consumer.offer.list" action="/authenticated/offer/list"/>
			<acme:menu-suboption code="master.menu.authenticated.challenge.list" action="/authenticated/challenge/list" access="!hasRole('Administrator')"/>
			<acme:menu-suboption code="master.menu.authenticated.job.list.active" action="/authenticated/job/list-active"/>
			<acme:menu-suboption code="master.menu.authenticated.threads" action="/authenticated/thread/list-mine" />
			
			<acme:menu-suboption code="master.menu.authenticated.thread.create" action="/authenticated/thread/create"/>
			
			<acme:menu-suboption code="master.menu.authenticated.threadsInvolved" action="/authenticated/thread/list-involved" />
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.authenticated.auditor" access="hasRole('Auditor')">
			<acme:menu-suboption code="master.menu.authenticated.auditor.listMineJobs" action="/auditor/job/list-mine" />
			<acme:menu-suboption code="master.menu.authenticated.auditor.listOthers" action="/auditor/job/list-others" />
			
		</acme:menu-option>
			
			
	</acme:menu-left>

	<acme:menu-right>
		<acme:menu-option code="master.menu.sign-up" action="/anonymous/user-account/create" access="isAnonymous()"/>
		<acme:menu-option code="master.menu.sign-in" action="/master/sign-in" access="isAnonymous()"/>

		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.user-account.general-data" action="/authenticated/user-account/update"/>
			<acme:menu-suboption code="master.menu.user-account.become-worker" action="/authenticated/worker/create" access="!hasRole('Worker')"/>
			<acme:menu-suboption code="master.menu.user-account.worker" action="/authenticated/worker/update" access="hasRole('Worker')"/>
			<acme:menu-suboption code="master.menu.user-account.become-sponsor" action="/authenticated/sponsor/create" access="!hasRole('Sponsor')"/>
			<acme:menu-suboption code="master.menu.user-account.sponsor" action="/authenticated/sponsor/update" access="hasRole('Sponsor')"/>
			<acme:menu-suboption code="master.menu.user-account.become-employer" action="/authenticated/employer/create" access="!hasRole('Employer')"/>
			<acme:menu-suboption code="master.menu.user-account.employer" action="/authenticated/employer/update" access="hasRole('Employer')"/>
			
			<acme:menu-suboption code="master.menu.user-account.auditor" action="/authenticated/auditor/update"
				access="hasRole('Auditor')" />
			
			<acme:menu-suboption code="master.menu.user-account.become-auditor" action="/authenticated/request-auditor/create"
			access="!hasRole('Auditor')" />
			
		</acme:menu-option>

		<acme:menu-option code="master.menu.sign-out" action="/master/sign-out" access="isAuthenticated()"/>
	</acme:menu-right>
</acme:menu-bar>




