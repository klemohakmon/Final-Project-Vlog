<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="FinalProject.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body"> 

                        <div class="row">
                            <div class="col">
                                <img width="100" src="images/generaluser.png"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <h4>Your Profile</h4>
                                <span>Account Status - </span>
                                <asp:Label class="badge bg-success" ID="Label1" runat="server" Text="Your status"></asp:Label>
                              
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
                                <label>Contact No'</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                      placeholder="Contact No'" ></asp:TextBox>
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
                                        <asp:ListItem Text="Tel Aviv" Value="Tel Aviv" />
                                         <asp:ListItem Text="Ashdod" Value="Ashdod" />
                                         <asp:ListItem Text="Haifa" Value="Haifa" />
                                         <asp:ListItem Text="Raanana" Value="Raanana" />
                                         <asp:ListItem Text="Herzelia" Value="Herzelia" />
                                         <asp:ListItem Text="Hod Hashron" Value="Hod Hashron" />
                                         <asp:ListItem Text="Beer Sheva" Value="Beer Sheva" />
                                         <asp:ListItem Text="Bat Yam" Value="Bat Yam" />
                                         <asp:ListItem Text="Holon" Value="Holon" />
                                         <asp:ListItem Text="Kiryat Gat" Value="Kiryat Gat" />
                                         <asp:ListItem Text="Ashkelon" Value="Ashkelon" />
                                        
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
                                  <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox7" runat="server"
                                      placeholder="Pin Code" TextMode="Number"></asp:TextBox>
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
                            <div class="col">                     
                                 <span class="badge rounded-pill bg-info text-dark">Login Credentials</span>
                            </div>
                        </div>


                         <div class="row">
                        <div class="col-md-4">
                                  <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox8" runat="server"
                                      placeholder="Member ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9" runat="server"
                                      placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-4">
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox10" runat="server"
                                      placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                        </div>



                        <div class="row">
                            <div class="col-8 mx-auto">                     
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary btn-block"
                                         ID="Button1" runat="server" Text="Update" />
                                  
                                </div>
                            </div>
                        </div>

                    </div>

                </div> 


            </div>



             <%-- <div class="col-md-7">

                    <div class="col-md-12">
                <div class="card">
                    <div class="card-body"> --%>

<%--                        <div class="row">
                            <div class="col">
                                <img width="100" src="images/vlog1.jpg"/>
                            </div>
                        </div>--%>

                        <%--<div class="row">
                            <div class="col">
                                <h4>Your Issued vlogs</h4>
                               
                                <asp:Label class="badge bg-primary" ID="Label2" runat="server"
                                    Text="Your vlog info"></asp:Label>
                              
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>--%>

<%--                       <div class="row">
                            <div class="col">
                                <asp:GridView CssClass="table table-striped table-bordered" 
                                    ID="GridView1" runat="server"></asp:GridView>              <%--table that need conaction to the database ssms--%>
                          <%--  </div>
                        </div>--%>

                      </div>
                   </div>

               

    

</asp:Content>
