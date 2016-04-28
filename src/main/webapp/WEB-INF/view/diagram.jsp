<%-- 
    Document   : diagram
    Created on : 27.04.2016, 22:18:12
    Author     : Віктор
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>testcase</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/adminlte/css/AdminLTE.min.css">
        <link rel="stylesheet" href="resources/adminlte/css/skins/_all-skins.min.css">
    </head>
    <body class="hold-transition skin-green sidebar-mini">
        <div class="wrapper">
            <header class="main-header">
                <!-- Logo -->
                <a href="#" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>T</b>c</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Test</b>case</span>
                </a>
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- User Account -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <span class="hidden-xs">Victor Antonyuk</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>

            <aside class="main-sidebar">
                <!-- sidebar -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <!-- sidebar menu -->
                    <ul class="sidebar-menu">
                        <li class="header">MAIN NAVIGATION</li>
                        <li>
                            <a href="table">
                                <i class="fa fa-table"></i> <span>Table</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="diagram">
                                <i class="fa fa-pie-chart"></i> <span>Diagram</span>
                            </a>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Donut Chart
                    </h1>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="col-md-4">

                        <div class="box box-default col-md-8">
                            <div class="box-header with-border">
                                <h3 class="box-title">Rendering engines</h3>

                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                </div>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="chart-responsive">
                                            <canvas id="pieChart" height="150"></canvas>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="chart-legend clearfix" id="donut-chart-legend">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                </section>
            </div>
        </div>

        <script src="resources/plugins/jQuery/jQuery-2.2.0.min.js"></script>
        <script src="resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <script src="resources/plugins/fastclick/fastclick.js"></script>
        <script src="resources/plugins/chartjs/Chart.min.js"></script>
        <script src="resources/adminlte/js/app.min.js"></script>
        <script src="resources/js/chart-handler.js"></script>

    </body>
</html>
