<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="FinalProject.HomePage" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <link href="css/homepage.css" rel="stylesheet" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;200;300;400;600;700;800;900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<header>
		<div class="circle"></div>
		<div class="circle"></div>

		<div class="hero">
			<h1>Wellcome	
				To Our
				VLOG site
			</h1>
			<a href="viewvlogs.aspx">Click for VLOGS</a>
		</div>
	</header>

	<main>
		<div class="news">
			<h3>In Our Site</h3>
			<div class="item">
				<h4>YOU CAN VIEW VLOGS</h4>
				
			</div>
			<div class="item">
				<h4>YOU CAN CREATE PROFILE</h4>
				
			</div>
			<div class="item">
				<h4>YOU CAN UPLOAD YOU OWN VLOGS</h4>
				
			</div>
			<div class="item">
				<h4>YOU CAN BECOME FAMOUS</h4>			
			</div>
		</div>

		<%--<div class="highlights">
			<h3>another test</h3>
			<div class="item">
				<div class="info">
					<h4>yes</h4>
					<p>test</p>
				</div>
			</div>
			<div class="item">
				<div class="info">
					<h4>yes</h4>
					<p>test</p>
				</div>
			</div>
			<div class="item">
				<div class="info">
					<h4>yes</h4>
					<p>test</p>
				</div>
			</div>
		</div>--%>
		<div class="middle">
			<p>
				<span>At VLOGS</span>
				We welcome you to participate and take part in our site, upload content, watch interesting videos of people from all over the world 24/7.
		</div>
	</main>  
</asp:Content>

