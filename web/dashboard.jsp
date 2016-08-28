<%@page import="java.util.Random"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.lang.String"%>
<%@page import="general.capital"%>
<%@page import="Ranking.ranking"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    
  <meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Pernada</title>
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
 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>PERNADA</title>
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
            <i class="fa fa-trophy"></i> <span>Prêmios do Mês</span>
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
       <section>
            <div class="col-lg-12 col-xs-6">
           <%
           float liq = capital.liquido(Integer.parseInt(request.getParameter("id")));
                
           if(request.getParameter("receive") != null){
                if(request.getParameter("receive").equals("true")){
                 %>  <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-check"></i> Parabéns!</h4>
                Você adquiriu as ações da empresa <%=request.getParameter("EC")%> com sucesso!<br>
                O Valor de R$ <%=new DecimalFormat("###.#").format(liq)%> foi deduzido do seu ativo líquido.
                <b>Veja que seu capital aumentou em <%=request.getParameter("v")%>% </b>
              </div>   <%            
           } 
           } 
           
           if(request.getParameter("msg") != null){
               String msg = request.getParameter("msg");
               String decodedResponse = java.net.URLDecoder.decode( msg, "ISO-8859-1");
               if(request.getParameter("type").equals("1") || request.getParameter("type").equals("3") ){
                %>
            <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-check"></i> Sucesso!</h4>
                <%=msg%><br>
                <b>Veja que seu capital aumentou em <%=request.getParameter("v")%>% </b>
              </div>
                <%   
               } else if(request.getParameter("type").equals("2") || request.getParameter("type").equals("4") ){
                %>
            <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-ban"></i> Algo de errado aconteceu!</h4>
                <%=msg%> <br>
                <b>Por isso você perdeu capital, cerca de <%=request.getParameter("v")%>%</b>
              </div>
                <%   
               } 
               
           }%></div>
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <%
           ArrayList<String> cp = new ArrayList<String>();
           String id = request.getParameter("id");
           cp = capital.getbyId("float", "capital", "capital", "id_user", Integer.parseInt(id));
          %>
          <div class="small-box bg-green" >
            <div class="inner">
                <h3><b> R$<%=new DecimalFormat("###,###").format(Double.parseDouble(cp.get(0)))%> </b></h3>
                <p>Capital</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
           
          </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <%
            ArrayList<String> qtd = new ArrayList<String>();
            qtd = capital.getbyId("inteiro", "user", "count(*)", "1", 1);
            %>
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
                <%
                float total = Float.parseFloat(cp.get(0)) - liq;
                %>
              <h3>R$<%= new DecimalFormat("###,###").format(total)%></h3>

              <p>Ativo Líquido</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
           
          </div>
        </div>
           
            <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
                <%
                  int min = 6000;
                int max = 14000;
                Random rand = new Random();
                int rBom = rand.nextInt((max - min) + 1) + min;
                System.out.println(rBom);
                %>
              <h3>R$ <%=new DecimalFormat("##.##").format(Double.parseDouble(cp.get(0))/rBom)%></h3>

              <p>Minhas Ações</p>
            </div>
            <div class="icon">
              <i class="fa fa-shopping-cart"></i>
            </div>
          
          </div>
        </div>
           
           <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red-active">
              <%
               ArrayList<String> rkg = new ArrayList<String>();
                rkg = ranking.showRanking();
                String meuRk = "";
              for(int i = 0; i< rkg.size(); i+=2){
                  if(rkg.get(i).equalsIgnoreCase(String.valueOf(request.getParameter("emp")))){
                  meuRk=String.valueOf( (i/2)+1);
                  if(i % 2 == 1){ 
                      int val = Integer.parseInt(meuRk);
                      meuRk = String.valueOf(val+1);   
                  }
                  }
                  
              
              }
              %>
            <div class="inner">
              <h3><%=meuRk%></h3>

              <p>Meu Ranking</p>
            </div>
            <div class="icon">
            
               <i class="ion ion-stats-bars"></i>
            </div>
            
          </div>
        </div>
    </section>
      
    </section>
   
  <div class="row">
        <div class="col-md-12" style="padding:30px">
          <!-- Line chart -->
       
          <div class="box box-primary"   >
            
              <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>
   
              <h3 class="box-title" s>Seu Capital</h3>
           </div>
            <div class="box-body">
              <div id="line-chart" style="height: 300px;"></div>
            </div>
            <!-- /.box-body-->
          </div>
              
        </div>
            
  </div>
  
    <div class="row">
        <div class="col-md-12">
    
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <!-- interactive chart -->
         <div class="box box-primary" >
            
              <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>
   
              <h3 class="box-title">Suas Ações</h3>
           </div>
            <div class="box-body">
              <div id="line-chart2" style="height: 300px;"></div>
            </div>
            <!-- /.box-body-->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

     
    </section>
    <!-- /.content -->

  </div>
   
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

  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

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

<!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- FLOT CHARTS -->
<script src="plugins/flot/jquery.flot.min.js"></script>
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<script src="plugins/flot/jquery.flot.resize.min.js"></script>
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<script src="plugins/flot/jquery.flot.pie.min.js"></script>
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<script src="plugins/flot/jquery.flot.categories.min.js"></script>
<!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- FLOT CHARTS -->
<script src="plugins/flot/jquery.flot.min.js"></script>
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<script src="plugins/flot/jquery.flot.resize.min.js"></script>
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<script src="plugins/flot/jquery.flot.pie.min.js"></script>
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<script src="plugins/flot/jquery.flot.categories.min.js"></script>




<script>
  $(function () {
  <%
ArrayList<String> dataCP = new ArrayList<String>();
dataCP = capital.getbyId("float", "hist_capital", "valor", "id_user" , Integer.parseInt(id));

%>
    var sin = [];
    
    <% 
    int x = 0;
    for(int i = 0; i < dataCP.size(); i++){%>
    sin.push([<%=i%>, <%=dataCP.get(i)%>]);
    
    <%
    x = i;
    }%>
    sin.push([<%=x+1%>, <%=cp.get(0)%>]);
    var line_data1 = {
      data: sin,
      color: "#3c8dbc"
    };
   
    $.plot("#line-chart", [line_data1], {
      grid: {
        hoverable: false,
        borderColor: "#f3f3f3",
        borderWidth: 1,
        tickColor: "#f3f3f3"
      },
      series: {
        shadowSize: 0,
        lines: {
          show: true
        },
        points: {
          show: true
        }
      },
      lines: {
        fill: false,
        color: ["#3c8dbc", "#f56954"]
      },
      yaxis: {
        show: true,
         min: 0
          
      },
      <%
   
      %>
      xaxis: {
        show: false
      }
    });
    //Initialize tooltip on hover
    $('<div class="tooltip-inner" id="line-chart-tooltip"></div>').css({
      position: "absolute",
      display: "none",
      opacity: 0.8
    }).appendTo("body");
    $("#line-chart").bind("plothover", function (event, pos, item) {

      if (item) {
        var x = item.datapoint[0].toFixed(2),
            y = item.datapoint[1].toFixed(2);

        $("#line-chart-tooltip").html(item.series.label + " of " + x + " = " + y)
            .css({top: item.pageY + 5, left: item.pageX + 5})
            .fadeIn(200);
      } else {
        $("#line-chart-tooltip").hide();
      }

    });
    
    /* END LINE CHART */


   
    

  });
  
  
  
  
  
    $(function () {
  <%

%>
    var sin2 = [];
    
    <% 
 ArrayList<String> dataAC= new ArrayList<String>();
dataAC = capital.getbyId("float", "hist_acao", "valor", "id_user" , Integer.parseInt(id));

    int a = 0;
    for(int i = 0; i < dataAC.size(); i++){%>
    sin2.push([<%=i%>, <%=dataAC.get(i)%>]);
    
    <%
    a = i;
    }%>
    sin2.push([<%=a+1%>, <%=new DecimalFormat("##.##").format(Double.parseDouble(cp.get(0))/10000)%>]);
    var line_data2 = {
      data: sin2,
      color: "#3c8dbc"
    };
   
    $.plot("#line-chart2", [line_data2], {
      grid: {
        hoverable: false,
        borderColor: "#f3f3f3",
        borderWidth: 1,
        tickColor: "#f3f3f3"
      },
      series: {
        shadowSize: 0,
        lines: {
          show: true
        },
        points: {
          show: true
        }
      },
      lines: {
        fill: false,
        color: ["#3c8dbc", "#f56954"]
      },
      yaxis: {
        show: true,
         min: 0
          
      },
      <%
   
      %>
      xaxis: {
        show: false
      }
    });
    //Initialize tooltip on hover
    $('<div class="tooltip-inner" id="line-chart-tooltip"></div>').css({
      position: "absolute",
      display: "none",
      opacity: 0.8
    }).appendTo("body");
    $("#line-chart2").bind("plothover", function (event, pos, item) {

      if (item) {
        var x = item.datapoint[0].toFixed(2),
            y = item.datapoint[1].toFixed(2);

        $("#line-chart-tooltip").html(item.series.label + " of " + x + " = " + y)
            .css({top: item.pageY + 5, left: item.pageX + 5})
            .fadeIn(200);
      } else {
        $("#line-chart-tooltip").hide();
      }

    });
    
    /* END LINE CHART */


   
    

  });

  /*
   * Custom Label formatter
   * ----------------------random
   */
  function labelFormatter(label, series) {
    return '<div style="font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;">'
        + label
        + "<br>"
        + Math.round(series.percent) + "%</div>";
  }
</script>
</body>
</html>
