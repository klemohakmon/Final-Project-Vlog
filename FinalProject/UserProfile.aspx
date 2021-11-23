<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="FinalProject.UserProfile" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <link href="css/userprofile.css" rel="stylesheet" />
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

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
<div class="row">
    <asp:Repeater ID="members_tbl" runat="server">
        <ItemTemplate>
        <div class="col-lg-4">
           <div class="profile-card-4 z-depth-3">
            <div class="card">
              <div class="card-body text-center bg-primary rounded-top">
               <div class="user-box">
                <img src="https://cdn.dribbble.com/users/1223630/screenshots/8115260/media/8145a871d9c4d67ec06e047ccc6574b4.gif" alt="user avatar">
              </div>
              <h5 class="mb-1 text-white">
                  <asp:Label ID="label1" CssClass="mb-1 text-white" runat="server" Text='<%# Eval("member_id") %>'></asp:Label>
              </h5>
              <h6 class="text-light">
                  <asp:Label ID="label2" CssClass="text-light" runat="server" Text='<%# Eval("full_name") %>'></asp:Label>
              </h6>
             </div>
              <div class="card-body">
                <ul class="list-group shadow-none">
                <li class="list-group-item">
                  <div class="list-icon">
                    <i class="fa fa-phone-square"></i>
                  </div>
                  <div class="list-details">
                    <span>
                        <asp:Label ID="label3" CssClass="list-details" runat="server" Text='<%# Eval("contact_no") %>'></asp:Label>
                    </span>
                    <small>Mobile Number</small>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="list-icon">
                    <i class="fa fa-envelope"></i>
                  </div>
                  <div class="list-details">
                    <span>
                        <asp:Label ID="label4" style="display:inline-block" CssClass="list-details" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </span>
                    <small>Email Address</small>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="list-icon">
                    <i class="fa fa-globe"></i>
                  </div>
                  <div class="list-details">
                    <span>www.VLOGS.co.il</span>
                    <small>Website Address</small>
                  </div>
                </li>
                </ul>

               </div>

             </div>
           </div>
        </div>
                          </ItemTemplate>
</asp:Repeater>
        <div class="col-lg-8">
           <div class="card z-depth-3">
            <div class="card-body">
            <div class="tab-content p-3">

               
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Full Name</label>
                            <div class="col-lg-9">               
                          <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                            </div>
                        
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Date</label>
                            <div class="col-lg-9">   
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Contact No</label>
                            <div class="col-lg-9">
                               <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Email</label>
                            <div class="col-lg-9">
                                 <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">State</label>
                            <div class="col-lg-9">
                               <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />

                           </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">City</label>
                            <div class="col-lg-9">
                              <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                            </div>
                        </div>
                       
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Pincode</label>
                            <div class="col-lg-9">
                                 <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Full Address</label>
                            <div class="col-lg-9">
                                 <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Username</label>          
                            <div class="col-lg-9">
                                 <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Username" ReadOnly="True"></asp:TextBox>                       
                            </div>                               
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Old Password</label>          
                            <div class="col-lg-9">
                                 <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox>
                            </div>                              
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">New Password</label>          
                            <div class="col-lg-9">
                                 <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                            </div>                               
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
                                 <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Save Changes" OnClick="Button1_Click" />
                            </div>
                        </div>                 
                </div>
            </div>
        </div>
      </div>
      </div>
    </div>
</asp:Content>