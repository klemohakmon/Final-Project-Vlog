<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.Master" AutoEventWireup="true" CodeBehind="UserVlogList.aspx.cs" Inherits="FinalProject.UserVlogList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/uservloglist.css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />

       <script type="text/javascript">
          $(document).ready(function() {
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


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="wrapper">
    <div class="container">

        <div class="wraper">

             
                    <center>
<img src="https://i.pinimg.com/originals/0c/cd/96/0ccd96bc52dc46b1f5f3ea89cad58ecb.gif" class="img-fluid" alt="profile-image" >
                    </center>
                     

            <div class="row user-tabs">
                <div class="col-lg-6 col-md-9 col-sm-9">
                                          <div class="indicator" style="right: 476px; left: 0px;"></div>
                        <div class="indicator" style="right: 476px; left: 0px;"></div>
                    <ul class="nav nav-tabs tabs" style="width: 100%;">
                        <li class="active tab" style="width: 25%;">
                            <a href="#home-2" data-toggle="tab" aria-expanded="false" class="active">
                                <span class="visible-xs"><i class="fa fa-home"></i></span>
                                <span class="hidden-xs">Vlog List</span>
                            </a>
                        </li>
                        <li class="tab" style="width: 25%;">
                            <a href="#profile-2" data-toggle="tab" aria-expanded="false">
                                <span class="visible-xs"><i class="fa fa-user"></i></span>
                                <span class="hidden-xs">About me</span>
                            </a>
                        </li>
                        <li class="tab" style="width: 25%;">
                            <a href="#messages-2" data-toggle="tab" aria-expanded="true">
                                <span class="visible-xs"><i class="fa fa-video"></i></span>
                                <span class="hidden-xs">My Videos</span>
                            </a>
                        </li>
                        <li class="tab" style="width: 25%;">
                            <a href="#settings-2" data-toggle="tab" aria-expanded="false">
                                <span class="visible-xs"><i class="fa fa-cog"></i></span>
                                <span class="hidden-xs">Video Management</span>
                            </a>
                        </li>
                    </ul>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-12">

                    <div class="tab-content profile-tab-content">

                        <div class="tab-pane active" id="home-2">
                            <div class="row">

    <div class="col-md-12">
        <div class="card">
           <div class="table-responsive">
               <table class="table no-wrap user-table mb-0">

                  <thead>
                    <tr>
                      <th scope="col" class="border-0 text-uppercase font-medium pl-4">ID</th>
                      <th scope="col" class="border-0 text-uppercase font-medium">Name</th>
                      <th scope="col" class="border-0 text-uppercase font-medium">Occupation</th>
                      <th scope="col" class="border-0 text-uppercase font-medium">Email</th>
                      <th scope="col" class="border-0 text-uppercase font-medium">Added</th>
                      <th scope="col" class="border-0 text-uppercase font-medium">Category</th>

                    </tr>
                  </thead>

 <asp:Repeater ID="vlog_upload" runat="server"  >    
  <ItemTemplate>     
           

                  <tbody>
                    <tr>
                      <td class="pl-4">     <asp:Label ID="label6" runat="server" Text='<%# Eval("vlog_id") %>'></asp:Label></td>
                      <td>
                          <h5 class="font-medium mb-0">  <asp:Label ID="label1" runat="server" Text='<%# Eval("vlog_name") %>'></asp:Label></h5>
       
                      </td>
                      <td>
                          <span class="text-muted">   <asp:Label ID="label2" runat="server" Text='<%# Eval("vlog_description") %>'></asp:Label></span><br>
         
                      </td>
                      <td>
                          <span class="text-muted">    <asp:Label ID="label3" runat="server" Text='<%# Eval("vlog_date_upload","{0: dd/MM/yyyy}") %>'></asp:Label></span><br>

                      </td>
                      <td>
                          <span class="text-muted">  <asp:Label ID="label5" runat="server" Text='<%# Eval("language") %>'></asp:Label></span><br>
 
                      </td>
                      <td>
                        
                            <asp:Label ID="label4" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                     
                      </td>
                    </tr>
  

                  </tbody>
              
          

  </ItemTemplate>
</asp:Repeater>
  </table>
  </div>
        </div>
    </div>


                            </div>
                        </div>

                        <div class="tab-pane" id="profile-2">
                            <!-- Personal-Information -->
                            <div class="panel panel-default panel-fill">

                                <div class="panel-body">
                                    
           <section class="section about-section gray-bg" id="about">
            <div class="container">
                <div class="row align-items-center flex-row-reverse">
   <asp:Repeater ID="members_tbl" runat="server"  >
        <ItemTemplate>
                    <div class="col-lg-6">
                        <div class="about-text go-to">
                            <h3 class="dark-color"><asp:Label ID="label13" CssClass="list-details" runat="server" Text='<%# Eval("full_name") %>'></asp:Label></h3>
                            <h6 class="theme-color lead">
                                <asp:Label ID="label8" CssClass="media" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                            </h6>
                            

                            <div class="row about-list">
                                <div class="col-md-6">
                                    <div class="media">
                                        <label>ID</label>
                                        <p><asp:Label ID="label7" CssClass="list-details" runat="server" Text='<%# Eval("member_id") %>'></asp:Label></p>
                                    </div>
                                    <div class="media">
                                        <label>Address</label>
                                        <p><asp:Label ID="label12" CssClass="list-details" runat="server" Text='<%# Eval("full_address") %>'></asp:Label></p>
                                    </div>
                                    <div class="media">
                                        <label>Country</label>
                                        <p>  <asp:Label ID="label11" CssClass="list-details" runat="server" Text='<%# Eval("state") %>'></asp:Label></p>
                                    </div>
                                    <div class="media">
                                        <label>City</label>
                                        <p>  <asp:Label ID="label10" CssClass="list-details" runat="server" Text='<%# Eval("city") %>'></asp:Label></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="media">
                                        <label>Birthday</label>
                                        <p>  <asp:Label ID="label3" CssClass="list-details" runat="server" Text='<%# Eval("dob") %>'></asp:Label></p>
                                    </div>
                                    <div class="media">
                                        <label>Phone</label>
                                        <p>  <asp:Label ID="label9" CssClass="list-details" runat="server" Text='<%# Eval("contact_no") %>'></asp:Label></p>
                                    </div>
                                    <div class="media">
                                        <label>Pincode</label>
                                        <p><asp:Label ID="label14" CssClass="list-details" runat="server" Text='<%# Eval("pincode") %>'></asp:Label></p>
                                    </div>
                                    <div class="media">
                                        <label>Freelance</label>
                                        <p>Available</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
</asp:Repeater>
                    <div class="col-lg-6">
                        <div class="about-avatar">
                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" title="" alt="">
                        </div>
                    </div>
                </div>

            </div>
        </section>



                                </div>
                            </div>
                            <!-- Personal-Information -->
                        </div>

                        <div class="tab-pane" id="messages-2">
           
                            <div class="panel panel-default panel-fill">
                                <div class="panel-heading">
                                    <h3 class="panel-title">My Projects</h3>
                                </div>
                                <div class="panel-body">
                              

 <div class="card-body"">
        <div class="row no-gutters" style="display:flex; flex-direction:row; flex-wrap:wrap;">

 
                                        <asp:Repeater ID="GridView1" runat="server" >
                   
    
                                            <ItemTemplate>

                                                <div class="col-xs-12 col-sm-6">
                                               




                                                    	<div class="box rte">
		<h2 class="boxHeadline">  <asp:Label ID="Label2" runat="server" Text='<%# Eval("vlog_name") %>' ></asp:Label></h2>
		<h3 class="boxHeadlineSub"><asp:Label ID="Label3" runat="server" Text='<%# Eval("vlog_date_upload", "{0: dd/MM/yyyy}") %>'></asp:Label></h3>
<div class="videoWrapper">
		<iframe width=100 height="281" src='<%# Eval("vlog_link")  %>' frameborder="0" allowfullscreen></iframe>
    </div>
	</div>
                
</div>
</ItemTemplate>
</asp:Repeater>
</div>
</div>
    

                                </div>
                            </div>
                     
                        </div>

                        <div class="tab-pane" id="settings-2">
                        
                            <div class="panel panel-default panel-fill">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Edit Profile</h3>
                                </div>
                                <div class="panel-body">
                                  
                                        <div class="form-group">
                                       <asp:FileUpload CssClass="custom-file" onchange="readURL(this);" ID="FileUpload1" runat="server" />
                                        <div class="input-group">
                                          
                                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                   
                                              <asp:Button class="btn btn-outline-warning" ID="Button1" runat="server" Text="ENTER" OnClick="Button4_Click" />
                                           
                                    </div>

                                        </div>

                                        <div class="form-group">
                                                                                
                                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Vlog Name"></asp:TextBox>

                                        </div>
                                        <div class="form-group">                                  
                 
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                       
                                                <asp:ListItem Text="English"  Value="English"/>
                                         
                                                <asp:ListItem Text="Hebrew"  Value="Hebrew"/>
                                          
                                                <asp:ListItem Text="Other"  Value="Other"/>
                                  
                                                </asp:DropDownList>

                                        </div>
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
                                        <asp:ListItem Text="Home Made" Value="Home Made"/>
                                        <asp:ListItem Text="Art" Value="Art"/>
                                        <asp:ListItem Text="Autobiography" Value="Autobiography"/>
                                        <asp:ListItem Text="Travel" Value="Travel"/>
                                        <asp:ListItem Text="Animals" Value="Animals"/>
                                    </asp:ListBox>

                                        </div>
                                        <div class="form-group">
                                             <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Write a few words describing the video" TextMode="MultiLine" ></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                              <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Vlog Date Upload" TextMode="Date"></asp:TextBox>

                                        </div>


                                                                <div class="row">
                             <div class="col-4">                                                     
                                     <asp:Button class="button1"
                                         ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />                                 
                           </div>
                             <div class="col-4">                                                     
                                     <asp:Button class="button2"
                                         ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />                                 
                           </div>
                            <div class="col-4">                                                     
                                     <asp:Button class="button3"
                                         ID="Button8" runat="server" Text="Delete" OnClick="Button1_Click" />                                 
                           </div>                         
                        </div>  
                              </div>
                            </div>                                                
                     </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- end container -->
    </div>
    <!-- end wrapper -->
</div>

</asp:Content>




