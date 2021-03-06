<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagment.aspx.cs" Inherits="FinalProject.AdminMemberManagment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script src="sweetalert2.min.js"></script>
  <link rel="stylesheet" href="sweetalert2.min.css">



           <script type="text/javascript">
               $(document).ready(function () {
                   $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
               });
               function readURL(input) {
                   if (input.files && input.files[0]) {
                       var reader = new FileReader();

                       reader.readAsDataURL(input.files[0]);
                   }
               }

       </script>

    <script type="text/javascript">
        function Message() {
            swal("User Removed Successfuly", "Click OK To Refresh", "success").then(() => { window.location = "adminmembermanagment.aspx" });;
        }
    </script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
<div class="container bootstrap snippets bootdey">
    <div class="row">
        <div class="col-sm-10">
            

   

                                <center>
                                    <img src="https://i.pinimg.com/originals/b6/6e/8f/b66e8ffa547746f4085ecc197cd588b9.gif" height ="300">
<%--<img src="https://cdn.dribbble.com/users/21663/screenshots/2958895/management.gif" class="img-fluid" alt="img-circle img-responsive" >--%>
                    </center>


        
    </div>
        </div>
    <i></i>&nbsp;&nbsp;<i></i>
    <div class="row">

        <div class="col-lg">
            <ul class="nav nav-tabs" id="myTab">
                <li class="active nav-link"><a href="#home" data-toggle="tab">Home</a></li>
                <li class="active nav-link"><a href="#settings" data-toggle="tab">Settings</a></li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane active" id="home">

                    <div class="table-responsive">               
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=Klemo-Hakmon\SQLEXPRESS;Initial Catalog=VlogDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [members_tbl]"></asp:SqlDataSource> 
                        <asp:GridView class="table table-bordered table-condensed table-hover table-striped" ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Phone" Sortexpression="contact_no" />
                                        <asp:BoundField DataField="full_address" HeaderText="Address" SortExpression="full_address" />                                  
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                             </Columns>
                         </asp:GridView>
                    </div>

                </div>
               <i></i>&nbsp;&nbsp;<i></i>
                <div class="tab-pane" id="settings">

               
<div class="row">
  <div class="col-12 col-md-8">   
       <div class="input-group">
      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID" ></asp:TextBox>
      <asp:LinkButton runat="server" CssClass="btn btn-outline-warning" ID="LinkButton4" OnClick="LinkButton4_Click"><i>Enter</i></asp:LinkButton>
           </div>
  </div>
  <div class="col-6 col-md-4"> 
      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox></div>
</div>

<i></i>&nbsp;&nbsp;<i></i>
<div class="row" >
  <div class="col-6 col-md-4"> 
      <asp:TextBox CssClass="form-control" ID="TextBox8"
                                        runat="server" placeholder="DOB" ReadOnly="true" ></asp:TextBox></div>
  <div class="col-6 col-md-4">
      <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                      runat="server" placeholder="Contact No" ReadOnly="true" ></asp:TextBox></div>
  <div class="col-6 col-md-4"> 
      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                      placeholder="Full Address" ReadOnly="true" ></asp:TextBox></div>
</div>
<i></i>&nbsp;&nbsp;<i></i>
<div class="row">
  <div class="col-6 col-md-4">  <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"
                                      placeholder="Email ID" ReadOnly="true" ></asp:TextBox></div>
  <div class="col-6 col-md-4">  <asp:TextBox Class="form-control" ID="TextBox6" runat="server"
                                      placeholder="State" ReadOnly="true"></asp:TextBox></div>
      <div class="col-6 col-md-4">  
           <asp:TextBox Class="form-control" ID="TextBox9" runat="server"
                                      placeholder="City" ReadOnly="true" ></asp:TextBox>
          </div>
   

</div>
                    <i></i>&nbsp;&nbsp;<i></i>
 <div class="row">
                        <div class="col-md-8 offset-md-2">
                           
                             <asp:Button class="btn btn-block btn-danger"
                                         ID="Button1" runat="server" Text="Delete User Account" OnClick="Button1_Click" />

                          
                        </div>
             </div>
                </div>

            </div>
     
        </div>
     

    </div>
    
</div>

    


    <%--<div class="container-fluid">
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
  
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID" ></asp:TextBox>
      
                                 <asp:LinkButon runat="server" CssClass="btn btn-primary" ID="LinkButton4" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                      
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
  
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=WRXM67-21\SQLEXPRESS;Initial Catalog=VlogDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [members_tbl]"></asp:SqlDataSource>                          
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
             </div>--%>
</asp:Content>
