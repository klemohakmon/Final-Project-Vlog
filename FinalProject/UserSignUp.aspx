<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="FinalProject.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script src="bootstrap/js/success.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="css/signup.css" rel="stylesheet" />
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script src="sweetalert2.min.js"></script>
  <link rel="stylesheet" href="sweetalert2.min.css">

<script type="text/javascript">
    function Message() {
        swal("Registration Completed!", "Click OK To Login", "success").then(() => { window.location = "UserLogin.aspx" });;
    }
</script>
<script type="text/javascript">
    function Worng() {
        swal(
            'Oops...',
            'Username already exists',
            'warning'
        )
    }
</script>   
</asp:Content>

<%--window.location = 'UserLogin.aspx';--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />

<div class=" page-holder d-flex align-items-center">
<div class="container">
<div class="row align-items-center py-5">
<div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">

<div class="pr-lg-5">
<img src="https://cdn.dribbble.com/users/2939235/screenshots/9511690/media/7ce84c53895bc017b7687cbad26babe2.gif" alt="" class="img-fluid" />
</div>
</div>
<div class="col-lg-5 px-lg-4">
<h1 class="text-base text-primary text-uppercase mb-4">Wellcome</h1>
<h2 class="mb-4">Sign up Here</h2>

<div class ="form-group mb-4">
<asp:TextBox ID="TextBox1" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Full Name" runat="server" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="TextBox2" required= "true" TextMode="Date" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Date Of Birth" runat="server" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="TextBox3" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Phone" runat="server" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="TextBox4" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server" ></asp:TextBox>

    </div>
<div class ="form-group mb-4">
<asp:DropDownList ID="DropDownList1" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="State" runat="server" >
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
<div class ="form-group mb-4">
<asp:TextBox ID="TextBox5" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Full Address" runat="server" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="TextBox6" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="City" runat="server" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="TextBox7" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="ZipCode" runat="server" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="TextBox8" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Username" runat="server" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="TextBox9" required= "true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ></asp:TextBox>

</div>
<asp:Button Text="Sign up" CssClass="btn btn-primary" Height="50px" Width="430px" runat="server" OnClick="Button1_Click" />
</div>
</div>

</div>

</div>
    <%--<div class="container">
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

               <br />
                <br />

            </div>
        </div>

    </div>--%>

<a href="HomePage.aspx"><< Back To Home</a>
</asp:Content>
