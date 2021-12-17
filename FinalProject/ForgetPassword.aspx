<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="FinalProject.ForgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <center>
            Enter your Register Email: <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox><br />
            <asp:Button ID="ButPassword" runat="server" Text="Get Your Password" OnClick="ButPassword_Click" /><br />
            <asp:Label ID="Labmsg" runat="server"></asp:Label>
        </center>
    </div>
</asp:Content>
