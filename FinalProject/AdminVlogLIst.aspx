﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="AdminVlogLIst.aspx.cs" Inherits="FinalProject.AdminVlogLIst" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
  <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
             
                <div class="card">
                    <div class="card-body"> 

                        <div class="row text-center">
                            <div class="col">
                                <h4>Vlog Details</h4>
                            </div>
                        </div>

                        <div class="row text-center">
                            <div class="col">

                                <img id="imgview" width="100" src="Vlog_inventory/vlog8.jpg"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <asp:FileUpload onchange="readURL(this);" CssClass="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>

                        <div class="row">

                             <div class="col-md-3">
                                <label>Vlog ID</label>
                                <div class="form-group">
                                    <div class="input-group">
  
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                runat="server" placeholder="Vlog ID" ></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton4"
                                runat="server" OnClick="LinkButton4_Click" Width="16px"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                      
                                </div>
                            </div>
                         </div>

                            <div class="col-md-9">
                                <label>Vlog Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Vlog Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                           <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English"  Value="English"/>
                                          <asp:ListItem Text="Hebrew"  Value="Hebrew"/>
                                          <asp:ListItem Text="Other"  Value="Other"/>
                                    </asp:DropDownList>
                                </div>
                           </div>  
                        
                             <div class="col-md-4">
                                  <label>Vlog Date Upload</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                      placeholder="Vlog Date Upload" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                  
                            <div class="col-md-4">
                                <label>Category</label>
                                <div class="form-group">
                                    <asp:ListBox  CssClass="form-control" ID="ListBox1" runat="server" Rows="5" SelectionMode="Multiple">
                                        <asp:ListItem Text="Action" Value="Action"/>
                                        <asp:ListItem Text="Fun" Value="Fun"/>
                                        <asp:ListItem Text="Cooking" Value="Cooking"/>
                                        <asp:ListItem Text="Socializing" Value="Socializing"/>
                                        <asp:ListItem Text="Private" Value="Private"/>
                                        <asp:ListItem Text="Build" Value="Build"/>
                                        <asp:ListItem Text="Sport" Value="Sport"/>
                                        <asp:ListItem Text="Education" Value="Education"/>
                                        <asp:ListItem Text="Comic" Value="Comic"/>
                                        <asp:ListItem Text="Self Help" Value="Self Help"/>
                                        <asp:ListItem Text="Motivation" Value="Motivation"/>
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living"/>
                                        <asp:ListItem Text="Wellness" Value="Wellness"/>
                                        <asp:ListItem Text="Fantasy" Value="Fantasy"/>
                                        <asp:ListItem Text="Vication" Value="Vication"/>
                                        <asp:ListItem Text="Home Made" Value="Vication"/>
                                        <asp:ListItem Text="Art" Value="Art"/>
                                        <asp:ListItem Text="Autobiography" Value="Autobiography"/>
                                        <asp:ListItem Text="Travel" Value="Travel"/>
                                        <asp:ListItem Text="Animals" Value="Animals"/>
                                        
                                    </asp:ListBox>
                                </div>
                            </div>
                         </div>
                   
                       
                                        
                        <div class="row">
                            <div class="col-12">
                                <label>Full Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                      placeholder="Write a few words describing the video" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                             <div class="col-4">                                                     
                                     <asp:Button class="btn btn-block btn-success"
                                         ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />                                 
                           </div>
                             <div class="col-4">                                                     
                                     <asp:Button class="btn btn-block btn-warning"
                                         ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />                                 
                           </div>
                            <div class="col-4">                                                     
                                     <asp:Button class="btn btn-block btn-danger"
                                         ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" />                                 
                           </div>
                          
                        </div>                        
                    </div>
                </div> 
                <a href="HomePage.aspx"><< Back To Home</a><br />
                            <br />
              </div>  
            


            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">   
                        <div class="row text-center">
                            <div class="col">
                                <h4>Vlog List</h4>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                         </div>
                       
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=Klemo-Hakmon\SQLEXPRESS;Initial Catalog=VlogDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [vlog_upload]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" 
                                  ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="vlog_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="vlog_id" HeaderText="Vlog ID" ReadOnly="True" SortExpression="vlog_id" />
                                        <asp:BoundField DataField="vlog_name" HeaderText="Vlog Name" SortExpression="vlog_name" />
                                        <asp:BoundField DataField="language" HeaderText="Language" SortExpression="language" />
                                        <asp:BoundField DataField="vlog_date_upload" HeaderText="Vlog upload date" SortExpression="vlog_date_upload" />
                                        <asp:BoundField DataField="genre" HeaderText="Genre" SortExpression="genre" />
                                        <asp:BoundField DataField="vlog_description" HeaderText="Vlog description" SortExpression="vlog_description" />
                                    </Columns>
                                </asp:GridView>
                            </div>

                        </div>
                     </div>
                  </div>
                       
                 </div>
               </div>  
             </div>     

</asp:Content>
