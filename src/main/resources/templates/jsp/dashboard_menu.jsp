<html>

    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <%@include file="bootstrap.jsp" %>
 <link rel="stylesheet" href="style.css" type="text/css">

      
      </head>
<!------ Include the above in your HEAD tag ---------->
<body>
   
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
                 <img src="view.jsp" alt="LOGO" width="130px" height="50px">
            </a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
         <li style="margin-right:400px;" ><a href="#" id="load_me">Welcome  <%=session.getAttribute("name")%> </a></li>
                       
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=session.getAttribute("username")%> <b class="fa fa-angle-down"></b></a>
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
                    <a href="school_home.jsp" ><span class="glyphicon glyphicon-"></span>  Dashborad </a>
                    
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-graduation-cap"></i> Student <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-1" class="collapse">
                        <li><a href="stud_form.jsp"><i class="fa fa-angle-double-right"></i> Student From <i class="fa fa-fw fa-angle-right pull-right"></i></a></li>
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
       
    </body>
    
     <%
         //response.setHeader("Catch-Control", "no-cache, no-store , must-revalidate"); 
         response.setHeader("Cache-Control","no-cache, no-store , must-revalidate");
         
              if(session.getAttribute("username")==null)
              {
     response.sendRedirect("index.html");
              }
     
    %>
</html>
