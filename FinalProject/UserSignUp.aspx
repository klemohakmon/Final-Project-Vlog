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
<%--<h1 class="text-base text-primary text-uppercase mb-4">Wellcome</h1>--%>
<h2 class="mb-4">Sign Up Here</h2>

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
    

<a href="HomePage.aspx"><< Back To Home</a>
</asp:Content>
