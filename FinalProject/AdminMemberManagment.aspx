<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagment.aspx.cs" Inherits="FinalProject.AdminMemberManagment" %>
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
                                <h4>Member Details</h4>
                            </div>
                        </div>

                        <div class="row">
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
                                           runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                      
                                </div>
                            </div>
                         </div>

                            <div class="col-md-7">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Full Name"/>
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
                       


                          <div class="row">
                            <div class="col-md-5">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"
                                      placeholder="Email ID" ReadOnly="true" ></asp:TextBox>
                                </div>
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
                            <div class="col-8 mx-auto">                     
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary btn-block"
                                         ID="Button1" runat="server" Text="Delete" />
                                  
                                </div>
                            </div>
                        </div>

                    </div>

                </div> 
              </div>  
            <%--card


          <%--  </div>
              <div class="col-md-7">

                    <div class="col-md-12">
                <div class="card">
                    <div class="card-body"> 

                        <div class="row">
                            <div class="col">
                                <img width="100" src="images/vlog1.jpg"/>
                            </div>
                        </div>

                        <div class="row">
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
                        </div>

                        div class="row">
                            <div class="col">
                                <asp:GridView CssClass="table table-striped table-bordered" 
                                    ID="GridView1" runat="server"></asp:GridView>              <%--table that need conaction to the database ssms--%>
                            </div>
                        </div>

                    
              
    
<%--            </div>
        </div>--%>
</asp:Content>
