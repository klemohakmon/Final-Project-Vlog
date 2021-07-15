<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="FinalProject.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
      <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body"> 

                        <div class="row">
                            <div class="col">
                                <img width="100" src="images/generaluser.png"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <h4>Member Sign Up</h4>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label class="text-left">Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                      placeholder="Full Name" ></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                  <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                      placeholder="Date Of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                 

                              

                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block" ID="Button1" runat="server" Text="Login" />
                                </div>

                                 <div class="form-group">
                                  <a href="UserSignUp.aspx"><input class="btn btn-info btn-block" ID="Button2" type="button" value="Sign Up" /></a>
                                </div>


                            </div>
                        </div>

                    </div>

                </div>  <%--card--%>

               <a href="HomePage.aspx"><< Back To Home</a><br />
                <br />

            </div>
        </div>

    </div>


</asp:Content>
