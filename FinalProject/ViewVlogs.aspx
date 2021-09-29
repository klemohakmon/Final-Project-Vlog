<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="ViewVlogs.aspx.cs" Inherits="FinalProject.ViewVlogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
         <%--JQuary for the search--%>
          $(document).ready(function () {
         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable(); 
        });             
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
<div class="row text-center">

    <div class="col-sm-12">
        <h3>Vlog List</h3>

        <div class="row">
            <div class="col-sm-12 col-md-12">
                <asp:Panel CssClass="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="false">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </asp:Panel>
            </div>
        </div>
        <br />
        <div class="row">
                <div class="card">
                    <div class="card-body">   
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=Klemo-Hakmon\SQLEXPRESS;Initial Catalog=VlogDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [vlog_upload]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="vlog_id" DataSourceID="SqlDataSource1" >
                                    <Columns>
                                        <asp:BoundField DataField="vlog_id" HeaderText="ID" ReadOnly="True" SortExpression="vlog_id" >
                                        <FooterStyle Font-Bold="False" />
                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">   
                                                        <div class="col-lg-10">
                                                            <div class="row"> 
                                                               <div class="col-12">
                                                                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("vlog_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                               </div>
                                                            </div>

                                                             <div class="row"> 
                                                               <div class="col-12">

                                                                   <label>
                                                                   Language -</label><asp:Label ID="Label2" runat="server" Text='<%# Eval("language") %>' Font-Bold="True"></asp:Label>
                                                                   &nbsp;|
                                                                   <label>
                                                                   Category</label> -<asp:Label ID="Label3" runat="server" Text='<%# Eval("category") %>' Font-Bold="True"></asp:Label>
                                                                   &nbsp;</div>
                                                            </div>

                                                             <div class="row"> 
                                                               <div class="col-12">
                                                                   <label>
                                                                   Vlog Date Upload -
                                                                   </label>
                                                                   <asp:Label ID="Label4" runat="server" Text='<%# Eval("vlog_date_upload") %>' Font-Bold="True"></asp:Label>
                                                                   &nbsp;|
                                                               </div>
                                                            </div>

                                                             <div class="row"> 
                                                               <div class="col-12">

                                                                   Description -
                                                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("vlog_description") %>'></asp:Label>

                                                               </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2">                                                            
                                                            <asp:Image CssClass="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("vlog_link") %>' />
                                                        </div>
                                                    </div>                                                
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>                              
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                     </div>
                  </div>
        </div>
    </div>
     <a href="HomePage.aspx"><< Back To Home</a><br />
 </div>
</div>
    </asp:Content>