<!DOCTYPE html>
<html lang="en">
    <!---Customize the template from Internet ---->

    <head>
        <!-- 1.0 meta -->
        <meta charset="utf-8">	
        <!-- 2.0 title -->
        <title>Let's Play</title>
        <!-- 3.0 CSS IMPORT -->
        <!-- CSS IMPORT FOR PLUGIN -->
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/js/wow/css/libs/animate.css" rel="stylesheet">
        <link href="assets/js/wordsrotator/jquery.wordrotator.min.css" rel="stylesheet">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script src="ngApp/lib/angular.min.js"></script>
        <script src="ngApp/lib/angular-ui-router.min.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular-route.js"></script>        
        <script src="ngApp/lib/angular-sanitize.1.5.8.min.js"></script>

        <!-- CSS IMPORT FOR FONT -->
        <link href='https://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='assets/fonts/font-awesome/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
        <!-- CSS IMPORT FOR MAIN STYLE -->
        <link href="assets/css/style.css" rel="stylesheet">
        <!-- support HTML5 elements and media queries for IE9 -->
        <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
        <!-- 4.0 FAVICON -->
        <link rel="shortcut icon" href="assets/img/favicon.png">
        <script src="ngApp/app.js"></script> 
        <script src="ngApp/comman.js"></script>
        <script src="ngApp/fixture.js"></script>
        <!--<script src="ngApp/services/restClientService.js"></script>-->
        <script type="text/javascript" src="ngApp/services/restClientService.js" language="javascript"></script>
        <script src="ngApp/routes.js"></script>

        <style>

            div#center_display {
                background-color: rgba(255, 255, 255, 0.8);
                border-radius: 30px;
                padding: 10px;
                margin: 10px;
                min-height: 500px;
            }
            .table>thead>tr>th {
                vertical-align: middle;
            }

            .template-header{
                color:#001533;
            }
            a{cursor: pointer;}

        </style>
    </head>
    <body ng-app="cricketApp" ng-controller="bootstrapController"> 
        <!-- 6.0 wrapper -->
        <div class="wrapper" id="wrapper-large" >
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <canvas class="spirit-bubbles" id="canvas"  style="background-color: rgba(0,0,0,0.5);"></canvas>

                        <ul class="return-btn center-block">
                            <li>
                                <!--<a href="#/" class="wow slideInLeft">HOME</a>-->
                                <a ng-click="goto('/')" class="wow slideInLeft">HOME</a>
                            </li>
                            <li>
                                <!--<a href="#/team" class="wow slideInLeft">TEAMS</a>-->
                                <a ng-click="goto('/team')" class="wow slideInDown">TEAMS</a>
                            </li>
                            <li>
                                <!--<a href="#/fixture" class="wow slideInRight">FIXTURES   </a>-->
                                <a ng-click="goto('/fixture')" class="wow slideInRight">FIXTURES   </a>
                            </li>
                        </ul>

                        <h2 class="wow flipInY" data-wow-delay="1s">Let's Play</h2>

                        <div class="center-block">

                            <!---------------------------------------------------->
                            <div class="container">

                                <div ng-view></div>                                               

                            </div>
                            <!---------------------------------------------------->


                        </div>
                    </div>
                </div>
            </div>
        </div></div>
    <!-- end wrapper -->

    <!-- 7.0 javascript import -->
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- bootstrap -->
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <!-- wow -->
    <script src="assets/js/wow/dist/wow.min.js"></script>
    <!-- wordsrotator -->
    <script src="assets/js/wordsrotator/jquery.wordrotator.min.js"></script>
    <!-- main js -->
    <script src="assets/js/main.js"></script>
</body>

</html>