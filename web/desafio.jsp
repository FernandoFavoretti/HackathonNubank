<%@page import="Ranking.ranking"%>
<%@page import="java.util.*"%>
<%@page import="Challenge.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AdminLTE 2 | Blank Page</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
        <link href="https://fonts.googleapis.com/css?family=Fontdiner+Swanky" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <!-- Site wrapper -->
        <div class="wrapper">

             <header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo" style="background-image:url('dist/img/barra_lateral.png')">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><img src="dist/img/pernada_s2.png" width="50%"></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" style="background-image:url('dist/img/barra_lateral.png')">
    

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
         
          <!-- Notifications: style can be found in dropdown.less -->
         
          <!-- Tasks: style can be found in dropdown.less -->
         
          <!-- User Account: style can be found in dropdown.less -->
        
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-trophy"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>

            <!-- =============================================== -->

            <!-- Left side column. contains the sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                          <img src="dist/img/<%=request.getParameter("id")%>.jpg" class="img-circle" alt="User Image">
        </div>
                        <div class="pull-left info">
                            <p><%=request.getParameter("emp")%></p>

                        </div>
                    </div>

                    <!-- sidebar menu: : style can be found in sidebar.less -->
                   <ul class="sidebar-menu">
        <li class="header">MENU</li>
        <li class="active treeview">
          <a href="dashboard.jsp?id=<%=request.getParameter("id")%>&usr=<%=request.getParameter("usr")%>&emp=<%=request.getParameter("emp")%>">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
         
        </li>
         <li class="active treeview">
          <a href="administre.jsp?id=<%=request.getParameter("id")%>&usr=<%=request.getParameter("usr")%>&emp=<%=request.getParameter("emp")%>">
            <i class="fa fa-pie-chart"></i> <span>Administre</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
         
        </li>
        <li class="active treeview">
          <a href="aprenda.jsp?id=<%=request.getParameter("id")%>&usr=<%=request.getParameter("usr")%>&emp=<%=request.getParameter("emp")%>">
            <i class="fa fa-laptop"></i> <span>Aprenda</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
         
        </li>
       
      </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- =============================================== -->

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper box-solid" style = "background:whitesmoke">
                <!-- Content Header (Page header) -->
                <section class="content-header">

                    <center>
                        <font style="font-family: 'Fontdiner Swanky', cursive;" size="15px" color="711199"> 
                        Desafio!</font>
                    </center>
                    <!--ol class="breadcrumb">
                      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                      <li><a href="#">Examples</a></li>
                      <li class="active">Blank page</li>
                    </ol-->
                </section>

                <!-- Main content -->
                <section class="content">

                    <!-- Default box -->
                    <!--div class="box">
                      <div class="box-header with-border">
                        <h3 class="box-title" style="background: red"
                            
                            >Title</h3>
              
                        <div class="box-tools pull-right">
                          <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fa fa-minus"></i></button>
                          <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                            <i class="fa fa-times"></i></button>
                        </div>
                      </div>
                      <div class="box-body">
                        Start creating your amazing application!
                      </div>
                    <!-- /.box-body -->
                    <%
                        ArrayList<String> desafios = new ArrayList<String>();
                        desafios = RandomChallenge.askChallenge();
                        String id = "";
                    %>

                    <div class="box-body" style="background:#521970">   
                        <font size="6" face="verdana" color=#afafaf>
                        <center>
                            
                            <%
                            id = desafios.get(0);
                            out.println("<font color='white' face='century gothic' size='5px'>"+desafios.get(1)+"</font>");
                            %>
                            </font>
                        </center>
                            <form name="desafioForm" action="desafioServlet" method="post" id="form">
                                <input type="hidden" value="<%=id%>" name="id"> 
                                <input type="hidden" value="<%=request.getParameter("id")%>" name="id_user"> 
                                <input type="hidden" value="<%=request.getParameter("usr")%>" name="usr"> 
                                <input type="hidden" value="<%=request.getParameter("emp")%>" name="emp"> 
                                <input type="hidden" value="" name="decisao" id='dec'> 
                             
                        <center>   
                            <button onclick = 'javascript: document.getElementById("dec").value="true";document.getElementById("form").submit();' type="button" class="btn btn-primary pull-center" 
                                    style="margin-right: 50px; margin-top: 50px; margin-right: 50px; width: 200px; height: 50px">
                                ACEITO
                            </button>
                            <button type="button" onclick = 'javascript: document.getElementById("dec").value="false";document.getElementById("form").submit();' class="btn btn-primary pull-center" style="margin-top: 50px;  width: 200px; height: 50px"> RECUSO
                            </button>
                        </center>
                            </form>
                    </div>
                    <!-- /.box-footer-->
                    </div-->
                    <!-- /.box >
              
                  </section>
                    <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->



            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Create the tabs -->
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <h3 class="control-sidebar-heading">Melhores Empresas</h3>
                    <ul class="control-sidebar-menu">
                        <% 
           
                            ArrayList<String> rkg = new ArrayList<String>();
                            rkg = ranking.showRanking();
                            if (rkg.get(0) != null) {
                                for (int i = 0; i < rkg.size(); i += 2) {

                        %>
                        <li>
                            <a href="javascript:void(0)">
                               <i class="menu-icon fa  fa-circle "></i>

                                <div class="menu-info">
                                    <h4 class="control-sidebar-subheading"><%=rkg.get(i)%></h4>

                                    <p>R$ <%=rkg.get(i + 1)%></p>
                                </div>
                            </a>
                        </li>
                        <%
                                }
                            }
                        %>
                    </ul>

                </div>
            </aside>
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery 2.2.3 -->
        <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <!-- SlimScroll -->
        <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="plugins/fastclick/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/app.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js"></script>
    </body>
</html>
