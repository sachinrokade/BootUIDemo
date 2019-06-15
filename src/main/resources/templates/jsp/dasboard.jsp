
<html>
    <head>
   <style> h3{background-color:#f5f5f5 }
      .text,.icon,.PANEL-FOOTER{
       text-align: CENTER;
       font-family: NEW TIMES ROMAN;
       font-size: 15PX
      }
      strong{
          font-size: 30px;
      }
      .well-sm{
         background-color: powderblue!important;
      }
      .panel-footer{
          background-color: #f58634!important;
      }
  </style>
    </head>
<!------ Include the above in your HEAD tag ---------->

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>  
 <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
       
 <link rel="stylesheet" href="style.css" type="text/css">
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<body >
     <div id="throbber" style="display:none; min-height:120px;"></div>
<div id="noty-holder"></div>
<div id="wrapper" >
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
          
            <a class="navbar-brand" href="http://www.exoham.com">
                 <img src="/images/exoham.png" alt="LOGO" width="130px" height="50px">
            </a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
         <li style="margin-right:400px;" ><a href="#" id="load_me">Welcome ${name}</a></li>
                       
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b class="fa fa-angle-down"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="school_profile.jsp?sch_id=<%=(String)session.getAttribute("ss_id")%>"><i class="fa fa-fw fa-user"></i>Profile</a></li>
                    <li><a href="schooledit.jsp?sch_edit="<%=(String)session.getAttribute("ss_id")%>><i class="fa fa-fw fa-cog"></i> Change Password</a></li>
                    <li class="divider"></li>
                    <li><a href="logout.jsp"><i class="fa fa-fw fa-power-off"></i> Logout</a></li>
                </ul>
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-graduation-cap"></i> Student <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-1" class="collapse">
                        <li><a href="/student_add"><i class="fa fa-angle-double-right"></i> Student From <i class="fa fa-fw fa-angle-right pull-right"></i></a></li>
                        <li><a href="stud_view.jsp"><i class="fa fa-angle-double-right"></i> Student List <i class="fa fa-fw fa-angle-right pull-right"></i></a></li>
                      
                    </ul>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fa-angle-down pull-right"></i><i class="fa fa-fw fa-bus"></i> Bus</a>
                    <ul id="submenu-2" class="collapse">
                        <li><a href="bus_form.jsp"><i class="fa fa-angle-double-right"></i> Add Bus's</a></li>
                        <li><a href="bus_view.jsp"><i class="fa fa-angle-double-right"></i> View Bus</a></li>
                    </ul>
                </li>
                <li>
                   <a href="#" data-toggle="collapse" data-target="#submenu-3"><i class="fa fa-fw fa-angle-down pull-right"></i><i class="fa fa-road"></i> Stop</a>
                    <ul id="submenu-3" class="collapse">
                        <li><a href="add_stop.jsp"><i class="fa fa-angle-double-right"></i> Add Stop</a></li>
                        <li><a href="add_route.jsp"><i class="fa fa-angle-double-right"></i> Add Route</a></li>
                        <li><a href="ass_stop.jsp"><i class="fa fa-angle-double-right"></i> Assign Stop to Route</a></li>
                    </ul>
                </li>      
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>
</div><!-- /#wrapper -->
  
 <div id="page-wrapper" >
           
        <ul class="breadcrumb">
            <li class="active"><a href="/school_add"><span class="glyphicon glyphicon-home"></span> Home</a></li>
             <li></li>
          
        </ul>
        </div>
     
      <div class="container-fluid">
         <div style="margin-top:30px">
                <h3 style="margin-bottom:-17px;">Dashboard</h3><hr style="border:1px solid skyblue;">
            </div>
  
   <c:include url="dashboard_menu.jsp"></c:include>      
            <!-- Page Heading -->
            <div class="row">
                <div class="col-sm-3">
                        <div class="hero-widget well well-sm"  >
                            <div class="icon">
                                 <i class="fa fa-university" style=" font-size:40px;"></i>
                            </div>
                            <div class="text">
                           
                                <LABEL><STRONG>${totoleSchool}</strong></LABEL>
                            </div>
                            <div class="panel-footer">
                              <label>TOTAL SCHOOL</label>
                            </div>
                        </div>
                    </div>
                      <div class="col-sm-3">
                        <div class="hero-widget well well-sm">
                            <div class="icon">
                                 <i class="fa fa-bus" style=" font-size:40px;"></i>
                            </div>
                            <div class="text">
                              
                                <LABEL><STRONG>${totoleBus} </strong></LABEL>
                            </div>
                            <div class="panel-footer" STYLE="background-color:lightgray">
                              <label>TOTAL BUS</label>
                            </div>
                        </div>
                    </div>
                       <div class="col-sm-3">
                        <div class="hero-widget well well-sm">
                            <div class="icon">
                                 <i class="fa fa-graduation-cap" style=" font-size:40px;"></i>
                            </div>
                            <div class="text">
                       
                                <LABEL><STRONG>${totoleStudent}</strong></LABEL>
                            </div>
                            <div class="panel-footer" STYLE="background-color:lightgray">
                              <label>TOTAL STUDENT</label>
                            </div>
                        </div>
                    </div>
                       <div class="col-sm-3">
                        <div class="hero-widget well well-sm">
                            <div class="icon">
                                 <i class="glyphicon glyphicon-road" style=" font-size:40px;"></i>
                            </div>
                            <div class="text">
                        
                                <LABEL><STRONG>${totoleRoute}</strong></LABEL>
                            </div>
                            <div class="panel-footer" STYLE="background-color:lightgray">
                              <label>TOTAL  EMPLOYEE</label>
                            </div>
                        </div>
                    </div>
                </div>

            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    
   
    </body>
    
</html>