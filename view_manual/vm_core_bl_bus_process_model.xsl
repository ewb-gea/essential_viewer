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
				<title>View Manual: Business Process Model</title>
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
									<span class="text-darkgrey">Business Process Model</span>
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
							<div class="content-section">
								<p>To inform stakeholders regarding the workflow (and information flow) that is needed to produce a product or render a service.</p>
							</div>
							<hr/>
						</div>



						<!--Setup View Definition Section-->
					</div>
					<div class="row">
						<div class="col-xs-12">
							<div class="sectionIcon">
								<i class="fa fa-info-circle icon-section icon-color"/>
							</div>
							<div>
								<h2 class="text-primary">View Description</h2>
							</div>
							<div class="content-section">
								<p>A model that defines the business processes of the enterprise, in the form of events, activities, rules and responsibilities.</p>
							</div>
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
							<div>
								<div class="alignRight">
									<img src="view_manual/vm_images/vm_legend.png" alt="Meta-Model Legend"/>
								</div>
								<br/>
								<img src="view_manual/vm_images/bus_process_model_MM.png" alt="Business Process Model Meta-Model"/>
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

											<th class="cellWidth-30pc">Navigation</th>
											<th class="cellWidth-30pc">Essential Class</th>
											<th class="cellWidth-40pc">Additional Slots</th>
										</tr>
									</thead>
									<tbody>
										<tr>

											<td>Business/Logical</td>
											<td>Product Type</td>
											<td><span class="textColourRed">Produced by Business Process</span> (See Note 2)</td>
										</tr>
										<tr>

											<td rowspan="2">Business/Logical</td>
											<td rowspan="2">Business Process</td>
											<td class="textColourRed">Business Process Performed by Business Roles</td>
										</tr>

										<tr>
											<td class="textColourRed">Defining Business Process Flow</td>
										</tr>

										<tr>

											<td>Business Logical</td>
											<td>Business Role Individual OR Group</td>
											<td>&#160;</td>
										</tr>

										<tr>

											<td rowspan="5">Business/Logical</td>
											<td rowspan="5">Business Process Flow (See Note 1)</td>
											<td class="textColourRed">Start</td>
										</tr>

										<tr>
											<td class="textColourRed">End</td>
										</tr>

										<tr>
											<td class="textColourRed">Process/Activity</td>
										</tr>

										<tr>
											<td>Initiating Event</td>
										</tr>

										<tr>
											<td>Raised Event</td>
										</tr>

										<tr>

											<td>Business/Logical</td>
											<td>Business Event Time Based or External</td>
											<td>&#160;</td>
										</tr>
									</tbody>
								</table>
								<br/>
								<h4>Note 1:</h4>
								<ul>
									<li>If the Business Process Flow has already been defined simply link it. </li>
									<li>If not create one by:- <ul>
											<li>Dragging the relevant boxes onto the diagram – Start, process(s), Activity(ies), Initiating Events(s), Raised Event(s) and End. </li>
											<li>Double click to add the Business Process/Task and Initiating/Raised Event details (don’t forget to give them a display name).</li>
											<li>Add the dependencies by clicking and dragging from one object to another. This creates the ‘occurs before’ relationship.</li>
											<li>You can double click on each arrow and complete the ‘Process Information Passed’ field, if required.</li>
										</ul>
									</li>
								</ul>
								<br/>
								<h4>Note 2</h4>
								<ul>
									<li>The initial screen will provide a table detailing the Product Types (Business Services) with a description and the Business Processes that produce the Product Types. Further details of the process can be accessed by clicking on the relevant process.</li>
									<li>If the Business Process is not linked to a Product Type (Business Service) it will not appear in the list.</li>
								</ul>

							</div>
							<hr/>
						</div>


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
							<img src="view_manual/vm_images/bus_process_model_SS.png" alt="Business Process Model" class="screenshotFrame"/>
						</div>
						<hr/>
					</div>




					<!--Setup Closing Tags-->
				</div>





				<!-- ADD THE PAGE FOOTER -->
				<xsl:call-template name="Footer"/>
			</body>
		</html>
	</xsl:template>


</xsl:stylesheet>
