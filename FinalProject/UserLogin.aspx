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
<h1 class="text-base text-primary text-uppercase mb-4">Login Here</h1>
<h2 class="mb-4">Welcome Back!</h2>

<div class ="form-group mb-4">
<asp:TextBox ID="TextBox1" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Username" runat="server" ></asp:TextBox>

</div>

<div class ="form-group mb-4">
<asp:TextBox ID="TextBox2" required= "true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ></asp:TextBox>

</div>
<div class="form-group mb-4">
<div class="custom-control custom-checkbox">
<asp:CheckBox Text="&nbsp&nbsp&nbspRemember Me" runat="server" />
</div>
</div>
<asp:Button Text="LOGIN" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" OnClick="Button1_Click"/>
</div>
</div>


</div>

</div>




  <%--  <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body"> 

                        <div class="row text-center">
                            <div class="col">
                                <img width="150" src="images/generaluser.png"/>
                            </div>
                        </div>

                        <div class="row text-center">
                            <div class="col">
                                <h3>Member Login</h3>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                 <label class="text-left">Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                      placeholder="Member ID" ></asp:TextBox>
                                </div>

                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                      placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button class="btn btn-info btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>

                                 <div class="form-group">
                                  <a href="UserSignUp.aspx"><input class="btn btn-success btn-block" ID="Button2" type="button" value="Sign Up" /></a>
                                </div>
                              

                            </div>
                        </div>

                    </div>

                </div> 

               <a href="HomePage.aspx"><< Back To Home</a><br />
                <br />

            </div>
        </div>

    </div>--%>


</asp:Content>
