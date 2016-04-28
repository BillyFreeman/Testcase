<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>testcase</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/plugins/datatables/dataTables.bootstrap.css">
        <link rel="stylesheet" href="resources/adminlte/css/AdminLTE.min.css">
        <link rel="stylesheet" href="resources/adminlte/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="resources/css/table.css">
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
                        <li class="active">
                            <a href="table">
                                <i class="fa fa-table"></i> <span>Table</span>
                            </a>
                        </li>
                        <li>
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
                        Rendering Engines
                        <small>advanced table</small>
                    </h1>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-8">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Data Table With Full Features</h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">

                                    <table id="rendering-engine-table" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Rendering engine</th>
                                                <th>Browser</th>
                                                <th>Platform(s)</th>
                                                <th>Engine version</th>
                                                <th>CSS grade</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${tableContent}" var="engine">
                                                <tr>
                                                    <td><c:out value="${engine.getName()}" /> <span class="tc-engine-edit">
                                                            <!--  -->
                                                            <button class="tc-submit-i-button" onclick="toggleFormToEditMode(
                                                                    <c:out value="'${engine.getId()}'" />,
                                                                    <c:out value="'${engine.getName()}'" />,
                                                                    <c:out value="'${engine.getBrowser()}'" />,
                                                                    <c:out value="'${engine.getPlatform()}'" />,
                                                                    <c:out value="'${engine.getVersion()}'" />,
                                                                    <c:out value="'${engine.getCssGrade()}'" />)" type="button">
                                                                <i class="fa fa-edit"></i>
                                                            </button>
                                                            <form action="delete/engine/<c:out value="${engine.getId()}" />" method="post">
                                                                <button class="tc-submit-i-button" type="submit"><i class="fa fa-times"></i></button>
                                                            </form>
                                                        </span></td>
                                                    <td><c:out value="${engine.getBrowser()}" /></td>
                                                    <td><c:out value="${engine.getPlatform()==''?'-':engine.getPlatform()}" /></td>
                                                    <td><c:out value="${engine.getVersion()==''?'-':engine.getVersion()}" /></td>
                                                    <td><c:out value="${engine.getCssGrade()}" /></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Rendering engine</th>
                                                <th>Browser</th>
                                                <th>Platform(s)</th>
                                                <th>Engine version</th>
                                                <th>CSS grade</th>
                                            </tr>
                                        </tfoot>
                                    </table>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">

                            <div class="box box-default col-md-8">
                                <div class="box-header with-border">
                                    <h3 onclick="toggleFormToCreateMode()" class="box-title" id="tc-form-heading">Add new engine</h3>

                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <form:form id="tc-engine-form" action="create/engine" role="form" modelAttribute="engineObject" method="post">
                                        <form:hidden id="tc-hidden-id" path="id"></form:hidden>
                                            <div class="box-body">
                                                <div class="form-group">
                                                    <label for="tc-rendering-engine">Rendering engine</label>
                                                <form:input id="tc-rendering-engine" path="name" class="form-control" type="text" placeholder="Rendering engine" />
                                            </div>
                                            <div class="form-group">
                                                <label for="tc-browser">Browser</label>
                                                <form:input id="tc-browser" path="browser" class="form-control" type="text" placeholder="Browser" />
                                            </div>
                                            <div class="form-group">
                                                <label for="tc-platform">Platform(s)</label>
                                                <form:input id="tc-platform" path="platform" class="form-control" type="text" placeholder="Platform" />
                                            </div>
                                            <div class="form-group">
                                                <label for="tc-engine-version">Version</label>
                                                <form:input id="tc-engine-version" path="version" class="form-control" type="text" placeholder="Version" />
                                            </div>
                                            <div class="form-group">
                                                <label for="tc-css-grade">CSS Grade</label>
                                                <form:input id="tc-css-grade" path="cssGrade" class="form-control" type="text" placeholder="CSS Grade" />
                                            </div>
                                        </div>
                                        <div class="box-footer">
                                            <button class="btn btn-primary" type="submit" id="tc-submit-button">Create</button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <script src="resources/plugins/jQuery/jQuery-2.2.0.min.js"></script>
        <script src="resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="resources/plugins/datatables/dataTables.bootstrap.min.js"></script>
        <script src="resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <script src="resources/plugins/fastclick/fastclick.js"></script>
        <script src="resources/adminlte/js/app.min.js"></script>
        <script src="resources/js/table-handler.js"></script>

        <script>
                                        $(function () {
                                            $("#rendering-engine-table").DataTable();
                                        });
        </script>
    </body>
</html>
