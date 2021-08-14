<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="FinalProject.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
      <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body"> 

                        <div class="row text-center">
                            <div class="col">
                                <img width="100" src="images/generaluser.png"/>
                            </div>
                        </div>

                        <div class="row text-center">
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
                                <label>Full Name</label>
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
                            <div class="col-md-6">
                                <label>Phone No'</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                      placeholder="Phone No'" ></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                  <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"
                                      placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        
                          <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Israel" Value="Israel" />
                                         <asp:ListItem Text="Miami" Value="Miami" />
                                         <asp:ListItem Text="New York" Value="New York" />
                                         <asp:ListItem Text="Oralndo" Value="Oralndo" />
                                         <asp:ListItem Text="Italy" Value="Italy" />
                                         <asp:ListItem Text="Germany" Value="Germany" />
                                         <asp:ListItem Text="India" Value="India" />
                                         <asp:ListItem Text="China" Value="China" />
                                         <asp:ListItem Text="Japan" Value="Japan" />
                                         <asp:ListItem Text="Russia" Value="Russia" />
                                         <asp:ListItem Text="Ukraine" Value="Ukraine" />
                                        
                                    </asp:DropDownList>
                                </div>
                            </div>
                             <div class="col-md-4">
                                  <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox6" runat="server"
                                      placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                              <div class="col-md-4">
                                  <label>Zip Code</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox7" runat="server"
                                      placeholder="Zip Code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        
                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                      placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                        <div class="col-md-6">
                                  <label>memberr ID</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox8" runat="server"
                                      placeholder="memberr ID"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9" runat="server"
                                      placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">                     
                                 <div class="form-group">
                                     <asp:Button cssclass="btn btn-success btn-block"
                                         ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                  
                                </div>
                            </div>
                        </div>

                    </div>

                </div> 

               <a href="HomePage.aspx"><< Back To Home</a><br />
                <br />

            </div>
        </div>

    </div>


</asp:Content>
