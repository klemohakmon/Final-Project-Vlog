<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="FinalProject.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="css/adminlogin.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class=" page-holder d-flex align-items-center">
<div class="container">
<div class="row align-items-center py-5">
<div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">

<div class="pr-lg-5">
<img src="https://onetwopixel.com/wp-content/uploads/2018/02/animat-lock-color.gif" alt="" class="img-fluid" />
</div>
</div>
<div class="col-lg-5 px-lg-4">
<%--<h1 class="text-base text-primary text-uppercase mb-4">Admin Login</h1>--%>
<h2 class="mb-4">Welcome Back Admin</h2>

<div class ="form-group mb-4">
<asp:TextBox ID="TextBox1" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Admin ID" runat="server" ></asp:TextBox>

</div>

<div class ="form-group mb-4">
<asp:TextBox ID="TextBox2" required= "true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ></asp:TextBox>

</div>
<asp:Button Text="LOGIN" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" OnClick="Button1_Click"/>
</div>
</div>


</div>

</div>











<%--

      <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body"> 

                        <div class="row text-center">
                            <div class="col">
                                <img width="150" src="images/admin.jpg"/>
                            </div>
                        </div>

                        <div class="row text-center">
                            <div class="col">
                                <h3>Admin Login</h3>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                      placeholder="Admin ID" ></asp:TextBox>
                                </div>

                               
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                      placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>

                            </div>
                        </div>

                    </div>

                </div>  <%--card--%>

               <a href="HomePage.aspx"><< Back To Home</a><br />


</asp:Content>
