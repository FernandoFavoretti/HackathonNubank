<%@page import="Ranking.ranking"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Dashboard</title>
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
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
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
  <!-- Left side column. contains the logo and sidebar -->
   <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar" >
      <!-- Sidebar user panel -->
      <div class="user-panel" >
        <div class="pull-left image">
             <img src="dist/img/<%=request.getParameter("id")%>.jpg" class="img-circle" alt="User Image">
      
        </div>
        <div class="pull-left info" >
          <p><%=request.getParameter("emp")%></p>
          
        </div>
      </div>
     
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" >
        <li class="header" style='background-color: transparent'>MENU</li>
        <li class="active treeview" style='background-color: transparent'  >
          <a href="dashboard.jsp?id=<%=request.getParameter("id")%>&usr=<%=request.getParameter("usr")%>&emp=<%=request.getParameter("emp")%>">
            <i class="fa fa-dashboard" ></i> <span >Dashboard</span>
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
         <li class="active treeview">
          <a href="premios.jsp?id=<%=request.getParameter("id")%>&usr=<%=request.getParameter("usr")%>&emp=<%=request.getParameter("emp")%>">
            <i class="fa fa-trophy"></i> <span>Pr�mios do M�s</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
         
        </li>
       
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Painel Administrativo
       </h1>

    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
          <div class="callout">
          <!-- small box -->
          <div class="small-box bg-aqua-active">
            <div class="inner">
              <h3>Tomar uma decis�o</h3>
              <p>Clique na imagem ao lado e arrisque 7% do seu capital para tomar um decis�o que pode te dar lucro ou preju�zo</p>
            </div>
            <a href="desafio.jsp?id=<%=request.getParameter("id")%>&usr=<%=request.getParameter("usr")%>&emp=<%=request.getParameter("emp")%>"><div class="icon">
              <i class="ion ion-ios-people-outline"></i>
            </div>
            </a>
              </div></a>
        </div>
        <!-- ./col -->
 

          <!-- small box -->
          
         <div class="callout">

             <div class="small-box bg-purple-active">
            <div class="inner">
              <h3>Investir</h3>

              <p>Clique na imagem ao lado e compre a��es de outras empresas para tentar aumentar o seu capital</p>
            </div>
            <div class="icon">
             <a href="investe.jsp?id=<%=request.getParameter("id")%>&usr=<%=request.getParameter("usr")%>&emp=<%=request.getParameter("emp")%>"><div class="icon">
              
                <i class="ion ion-stats-bars"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
            </div></a>

         </div>

        </div>


      </div>
      <!-- /.row -->
      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <section class="col-lg-7 connectedSortable">
          <!-- Custom tabs (Charts with tabs)-->
          <div class="nav-tabs-custom">

          </div>
          <!-- /.nav-tabs-custom -->

        </section>
        <!-- /.Left col -->
        <!-- right col (We are only adding the ID to make the widgets sortable)-->
        <section class="col-lg-5 connectedSortable">

        </section>
        <!-- right col -->
      </div>
      <!-- /.row (main row) -->

    </section>
    <!-- /.content -->
  </div>


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
            if(rkg.get(0) != null) {
               for(int i = 0; i< rkg.size(); i+=2){
          
            %>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa  fa-circle "></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading"><%=rkg.get(i)%></h4>
                
                <p>R$ <%=rkg.get(i+1)%></p>
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
</div>-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>
