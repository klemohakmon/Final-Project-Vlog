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
    <h2 class="mb-4">Member Sign Up</h2>
<img src="images/vlog11.jpg" alt="" class="img-fluid" />
</div>
</div>
<div class="col-lg-5 px-lg-4">



            <div class ="form-group mb-4">
            <asp:TextBox ID="TextBox1" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Full Name" runat="server" ></asp:TextBox>
            </div>
                <div class ="form-group mb-4">
            <asp:TextBox ID="TextBox3" required= "true" TextMode="Date" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Date Of Birth" runat="server" ></asp:TextBox>
            </div>

             <div class ="form-group mb-4">
            <asp:TextBox ID="TextBox4" required= "true" TextMode="Email" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server" ></asp:TextBox>
            </div>

       <div class ="form-group mb-4">
            <asp:DropDownList  required= "true"  CssClass="form-control border-0 shadow form-control-lg text-base" ID="DropDownList1" placeholder="State" runat="server" >
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
            <asp:TextBox ID="TextBox6" required= "true"  CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="City" runat="server" ></asp:TextBox>
            </div>

             <div class ="form-group mb-4">
            <asp:TextBox ID="TextBox5" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Phone No'" runat="server" ></asp:TextBox>
            </div>

            <div class ="form-group mb-4">
            <asp:TextBox ID="TextBox7" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Full Address" runat="server" ></asp:TextBox>
            </div>

            <div class ="form-group mb-4">
            <asp:TextBox ID="TextBox2" required= "true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ></asp:TextBox>

            </div>
            <div class="form-group mb-4">
            <div class="custom-control custom-checkbox">
            <asp:CheckBox Text="&nbsp&nbsp&nbspRemember Me" runat="server" />
            </div>
            </div>
            <asp:Button Text="Sign Up" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" OnClick="Button1_Click"/>
            </div>
            </div>


        </div>

        </div>




 


</asp:Content>
