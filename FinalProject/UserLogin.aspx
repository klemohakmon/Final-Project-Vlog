<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="FinalProject.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="css/userlogin.css" rel="stylesheet" />


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" ControlToValidate="text" runat="server">

        <div class=" page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center py-5">
                <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">

        <div class="pr-lg-5">
<img src="https://cdn.dribbble.com/users/891406/screenshots/2661762/casey-neistat2.gif" alt="" class="img-fluid" />
</div>
</div>
<div class="col-lg-5 px-lg-4">

<h2 class="mb-4">Welcome Back!</h2>

<div class ="form-group mb-4">
<asp:TextBox ID="TextBox1" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Username" runat="server" ></asp:TextBox>

</div>

<div class ="form-group mb-4">
<asp:TextBox ID="TextBox2" required= "true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ></asp:TextBox>
    <div class="form-group mb-4">
   
        </div>
    </div>
<div class="form-group mb-4">
<div class="custom-control custom-checkbox">
     
        <a href="#" onclick="window.open('ForgetPassword.aspx','FP','width=500,height=50,top=300,left=500,fullscreen=no,resizable=0');">Forget Password?</a>
     
   

</div>
</div>
<asp:Button Text="LOGIN" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" OnClick="Button1_Click"/>
</div>
</div>
</div>
</div>
</asp:Content>
