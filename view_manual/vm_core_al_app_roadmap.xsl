<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0" xpath-default-namespace="http://protege.stanford.edu/xml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xalan="http://xml.apache.org/xslt" xmlns:pro="http://protege.stanford.edu/xml" xmlns:eas="http://www.enterprise-architecture.org/essential" xmlns:functx="http://www.functx.com" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ess="http://www.enterprise-architecture.org/essential/errorview">
	<xsl:include href="../common/core_doctype.xsl"/>
	<xsl:include href="../common/core_common_head_content.xsl"/>
	<xsl:include href="../common/core_header.xsl"/>
	<xsl:include href="../common/core_footer.xsl"/>


	<xsl:output method="html" omit-xml-declaration="yes" indent="yes"/>

	<!--
		* Copyright © 2008-2017 Enterprise Architecture Solutions Limited.
	 	* This file is part of Essential Architecture Manager, 
	 	* the Essential Architecture Meta-Model and The Essential Project.
		*
		* Essential Architecture Manager is free software: you can redistribute it and/or modify
		* it under the terms of the GNU General Public License as published by
		* the Free Software Foundation, either version 3 of the License, or
		* (at your option) any later version.
		*
		* Essential Architecture Manager is distributed in the hope that it will be useful,
		* but WITHOUT ANY WARRANTY; without even the implied warranty of
		* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		* GNU General Public License for more details.
		*
		* You should have received a copy of the GNU General Public License
		* along with Essential Architecture Manager.  If not, see <http://www.gnu.org/licenses/>.
		* 
	-->
	<!-- 19.04.2008 JP  Migrated to new servlet reporting engine	 -->
	<!-- 06.11.2008 JWC	Migrated to XSL v2 -->
	<!-- 29.06.2010	JWC	Fixed details links to support " ' " characters in names -->
	<!-- 01.05.2011 NJW Updated to support Essential Viewer version 3-->
	<!-- 05.01.2016 NJW Updated to support Essential Viewer version 5-->


	<xsl:template match="pro:knowledge_base">
		<xsl:call-template name="docType"/>
		<html>
			<head>
				<xsl:call-template name="commonHeadContent"/>
				<title>View Manual: Application Roadmap Model</title>
			</head>
			<body>
				<!-- ADD THE PAGE HEADING -->
				<xsl:call-template name="Heading"/>

				<!--ADD THE CONTENT-->
				<a id="top"/>
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-12">
							<div class="page-header">
								<h1>
									<span class="text-primary">View Manual: </span>
									<span class="text-darkgrey">Application Roadmap Model</span>
								</h1>
							</div>
						</div>

						<!--Setup View Purpose Section-->

						<div class="col-xs-12">
							<div class="sectionIcon">
								<i class="fa fa-question-circle icon-section icon-color"/>
							</div>
							<div>
								<h2 class="text-primary">View Purpose</h2>
							</div>
							<div class="content-section">To inform stakeholders regarding the major Application initiatives (or project) to be undertaken by the enterprise to address the deficiencies and redundancies as identified during the prior gap analysis. </div>
							<hr/>
						</div>




						<!--Setup View Definition Section-->

						<div class="col-xs-12">
							<div class="sectionIcon">
								<i class="fa fa-info-circle icon-section icon-color"/>
							</div>
							<div>
								<h2 class="text-primary">View Description</h2>
							</div>
							<div class="content-section">An Application Architecture Roadmap which outlines a list of individual increments of change over a timeline to show progression from the Baseline Architecture to the Target Architecture. </div>
							<hr/>
						</div>




						<!--Setup Meta-Model Section-->

						<div class="col-xs-12">
							<div class="sectionIcon">
								<i class="fa essicon-boxesdiagonal icon-section icon-color"/>
							</div>
							<div>
								<h2 class="text-primary">Meta-Model</h2>
							</div>
							<div class="content-section">
								<div class="alignRight">
									<img src="view_manual/vm_images/vm_legend.png" alt="Meta-Model Legend"/>
								</div>
								<br/>
								<img src="view_manual/vm_images/app_roadmap_model_MM.png" alt="Application Roadmap Model Meta-Model"/>
							</div>
							<hr/>
						</div>




						<!--Setup Modelling Requirements Section-->

						<div class="col-xs-12">
							<div class="sectionIcon">
								<i class="fa fa-list-ul icon-section icon-color"/>
							</div>
							<div>
								<h2 class="text-primary">Modelling Requirements</h2>
							</div>
							<div class="content-section">
								<p>Guidelines for the modelling requirements</p>
								<ul>
									<li>Name and Description <span class="impact">must</span> be completed for all classes shown</li>
									<li>If no additional slots are indicated, then just name and description are required</li>
									<li>Mandatory slots are shown in <span class="textColourRed impact">red</span>, these are <strong>required</strong> for the view to work</li>
									<li>Mandatory slots with an option, i.e. Individual Role OR Group Role, are shown in <span class="textColourGreen impact">green</span>, these are <strong>required</strong> for the view to work</li>
									<li>Optional slots are shown in <span class="impact">black</span>. The report will work without these but there may be some blank fields.</li>
									<li>The "classified as" slot is automatically completed except where noted</li>
								</ul>
								<br/>
								<h3>Top Level</h3>
								<table class="table table-bordered table-striped ">
									<thead>
										<tr>

											<th class="cellWidth-20pc">Navigation</th>
											<th class="cellWidth-20pc">Essential Class</th>
											<th class="cellWidth-30pc">Additional Slots</th>
											<th class="cellWidth-30pc">Notes</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td rowspan="5">EA Support/ Strategy Management</td>
											<td rowspan="5">Business/ Application/ Strategic Plans</td>
											<td><span class="textColourRed">Strategic Plan for Elements</span> (See Note 1) </td>
											<td>Populate with Architecture elements as required:- <ul>
													<li>Application Provider </li>
													<li>Application Provider Role </li>
													<li>Static Application Provider Architecture</li>
													<li>Physical Process </li>
												</ul></td>
										</tr>
										<tr>
											<td class="textColourRed">Strategic Planning Action</td>
											<td>&#160;</td>
										</tr>
										<tr>
											<td>Strategic Plan Valid From</td>
											<td>&#160;</td>
										</tr>
										<tr>
											<td>Strategic Plan Valid To</td>
											<td>&#160;</td>
										</tr>
										<tr>
											<td class="textColourRed">Depends On Strategic Plans</td>
											<td>Required if replacing one element with another i.e. the plan to remove a Site is dependent on the creation of another.</td>
										</tr>
										<tr>
											<td rowspan="3">EA Support/ Strategy Management</td>
											<td rowspan="3">Roadmap Model (See Note 2)</td>
											<td class="textColourRed">Start</td>
											<td>&#160;</td>
										</tr>
										<tr>
											<td class="textColourRed">Milestone</td>
											<td>Require at least one for each for a baseline and target architecture.</td>
										</tr>
										<tr>
											<td class="textColourRed">Roadmap Relations</td>
											<td>Double click on lines between milestones and populate supporting strategic plans field with previously defined strategic plans</td>
										</tr>
										<tr>
											<td rowspan="2">EA Support/ Strategy Management</td>
											<td rowspan="2">Roadmap Milestone (See Note 3)</td>
											<td class="textColourRed">Display Label</td>
											<td>&#160;</td>
										</tr>
										<tr>
											<td class="textColourRed">Milestone Architecture State</td>
											<td>&#160;</td>
										</tr>
										<tr>
											<td rowspan="2">EA Support/ Strategy Management</td>
											<td rowspan="2">Timeline Point</td>
											<td class="textColourRed">Display Label</td>
											<td>&#160;</td>
										</tr>
										<tr>
											<td class="textColourRed">Time Point</td>
											<td>&#160;</td>
										</tr>
										<tr>
											<td rowspan="3">EA Support/ Strategy Management</td>
											<td rowspan="3">Architecture State (See Note 3)</td>
											<td class="textColourRed">State Valid From Date</td>
											<td>&#160;</td>
										</tr>
										<tr>
											<td class="textColourRed">State Valid To Date</td>
											<td>&#160;</td>
										</tr>
										<tr>
											<td><span class="textColourRed">Architecture Elements </span>(See Note 1)</td>
											<td>Populated with elements from the list in the notes section of Strategic Plan class above. </td>
										</tr>
										<tr>

											<td>Business/Conceptual</td>
											<td>Business Objectives</td>
											<td>&#160;</td>
											<td>&#160;</td>
										</tr>
										<tr>

											<td>Information/ Conceptual</td>
											<td>Information Architecture Objectives</td>
											<td>&#160;</td>
											<td>&#160;</td>
										</tr>
										<tr>

											<td>Application/ Conceptual</td>
											<td>Application Architecture Objectives</td>
											<td>&#160;</td>
											<td>&#160;</td>
										</tr>
										<tr>

											<td>Technology/ Conceptual</td>
											<td>Technology Architecture Objectives</td>
											<td>&#160;</td>
											<td>&#160;</td>
										</tr>
									</tbody>
								</table>
							</div>
							<hr/>
						</div>




						<!--Setup Screenshot Section-->

						<div class="col-xs-12">
							<div class="sectionIcon">
								<i class="fa fa-tablet icon-section icon-color"/>
							</div>
							<div>
								<h2 class="text-primary">Screenshot</h2>
							</div>
							<div class="content-section">
								<br/>
								<img src="view_manual/vm_images/app_roadmap_model_SS.png" alt="Application Roadmap Model" class="screenshotFrame"/>
							</div>
							<hr/>
						</div>


						<!--Setup Closing Tags-->

					</div>
				</div>




				<!-- ADD THE PAGE FOOTER -->
				<xsl:call-template name="Footer"/>
			</body>
		</html>
	</xsl:template>


</xsl:stylesheet>
