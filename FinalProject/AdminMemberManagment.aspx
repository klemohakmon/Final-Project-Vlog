<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagment.aspx.cs" Inherits="FinalProject.AdminMemberManagment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">  //calling the database library
        $(document).ready(function () {
         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
             
                <div class="card">
                    <div class="card-body"> 

                        <div class="row text-center">
                            <div class="col">
                                <h4>Member Details</h4>
                            </div>
                        </div>

                        <div class="row text-center">
                            <div class="col">
                                <img width="100" src="images/generaluser.png"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">

                             <div class="col-md-5">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
  
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                runat="server" placeholder="Member ID" ></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton4"
                                runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                      
                                </div>
                            </div>
                         </div>

                            <div class="col-md-7">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                           <div class="col-md-3">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8"
                                        runat="server" placeholder="DOB" ReadOnly="true" ></asp:TextBox>
                                </div>
                          </div>  
                        
                             <div class="col-md-4">
                                  <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                      runat="server" placeholder="Contact No" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div>
                  
                            <div class="col-md-5">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"
                                      placeholder="Email ID" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div>
                         </div>
                   
                        <div class="row">                         
                             <div class="col-md-4">
                                  <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox6" runat="server"
                                      placeholder="State" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                  <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9" runat="server"
                                      placeholder="City" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-4">
                                  <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox7" runat="server"
                                      placeholder="Pin Code" ReadOnly="true" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                                        
                        <div class="row">
                            <div class="col-12">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                      placeholder="Full Address" TextMode="MultiLine" ReadOnly="true" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-8 mx-auto">                     
                                 <div class="form-group">
                                     <asp:Button class="btn btn-block btn-danger"
                                         ID="Button1" runat="server" Text="Delete User Account" OnClick="Button1_Click" />
                                  
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div> 
                <a href="HomePage.aspx"><< Back To Home</a><br />
                            <br />
              </div>  
            


            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">   
                        <div class="row text-center">
                            <div class="col">
                                <h4>Member List</h4>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                         </div>
                       
                        <div class="row">
  
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=Klemo-Hakmon\SQLEXPRESS;Initial Catalog=VlogDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [members_tbl]"></asp:SqlDataSource>                          
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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
