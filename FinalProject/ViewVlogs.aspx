<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="ViewVlogs.aspx.cs" Inherits="FinalProject.ViewVlogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<link href="css/viewvlogs.css" rel="stylesheet" />
<script type="text/javascript">
         <%--JQuary for the search--%>
          $(document).ready(function () {
         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable(); 
          });           </script>
    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

    <div class="card-body"">
        <div class="row">
            <div class="col-12 text-center">
                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                     <asp:Label ID="Label3" runat="server" Text="VLOG LIST" Font-Bold="true" Font-Size="xx-large"
                          CssClass="StrongText"></asp:Label>
                 </div>
            </div>
        </div>  

        <div class="row" style="display:flex; flex-direction:row; flex-wrap:wrap;">
<asp:Repeater ID="vlog_upload" runat="server"  >
    
  <ItemTemplate>

     <div class="col-sm-4" style="padding:20px">
      <div class="card">
      
<video id="player" controls>
  <source src='<%# Eval("vlog_link")  %>' type="video/mp4" />
</video>
 
       
        <div class="card_content">
             <header class="flex items-center justify-between leading-tight p-2 md:p-4">
          <h2 class="card_title">
              <asp:Label ID="label1" runat="server" Text='<%# Eval("vlog_name") %>'></asp:Label>
          </h2>

                <p class="text-grey-darker text-sm" style="text-align:right">
                        <asp:Label ID="label3" runat="server" Text='<%# Eval("vlog_date_upload","{0: dd/MM/yyyy}") %>'></asp:Label>
                    </p>
                 </header>
             <button class="btn card_btn">
                        <span class="hidden">Like</span>
                        <i class="fa fa-heart"></i>
                    </a>
            <div class="share-btn-container">
              <a href="#">
                <i class="fab fa-facebook"></i>
            </a>
              <a href="#">
                <i class="fab fa-twitter"></i>
            </a>
              <a href="#">
                <i class="fab fa-whatsapp"></i>
            </a>
              <a href="#">
                <i class="fab fa-linkedin"></i>
            </a>
                </div>
            <footer class="flex items-center justify-between leading-none p-2 md:p-4">
                    <a class="flex items-center no-underline hover:underline text-black"
                        >
                        <p class="ml-2 text-sm">

                          <asp:Label ID="label2" runat="server" Text='<%# Eval("vlog_description") %>'></asp:Label>
                        </p>
                    </a>
                   
                </footer>
        </div>
      </div>
    </div>

  </ItemTemplate>
</asp:Repeater>
           </div>
  </div>
</asp:Content>