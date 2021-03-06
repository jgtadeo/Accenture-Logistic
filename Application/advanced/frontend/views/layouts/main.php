<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\helpers\Url;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<?php $this->beginBody() ?>


    <header class="main-header">
        <a href="index.php" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>L</b>M</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Logistics </b></span>
        </a>

        <nav class="navbar navbar-static-top">
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 notifications</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li><!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                City / Municipal Admin

                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <p>Food Items</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                External User
                                                <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </h4>
                                            <p>Food Item</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Regional Admin
                                                <small><i class="fa fa-clock-o"></i> Today</small>
                                            </h4>
                                            <p>Electrical Supplies</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Sales Department
                                                <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                External User
                                                <small><i class="fa fa-clock-o"></i> 2 days</small>
                                            </h4>
                                            <p>Boat</p>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Vehicles
                                                <small><i class="fa fa-clock-o"></i> 2 days</small>
                                            </h4>
                                            <p>10 boats in Pasay</p>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Volunteer
                                                <small><i class="fa fa-clock-o"></i> 2 days</small>
                                            </h4>
                                            <p>5 doctors in Metro Manila</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>


                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs"><?php echo Yii::$app->user->identity->username  ?></span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    <b><?php echo Yii::$app->user->identity->first_name; ?> <?php echo Yii::$app->user->identity->last_name; ?></b>  <br>
                                    <?php echo Yii::$app->user->identity->type; ?>
                                    <small>Member since April 1, 2017</small>
                                </p>
                            </li>

                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <?php if(!Yii::$app->user->isGuest){
                                echo
                                    '<div class="pull-right">
                                        <a href="'.Url::to(['site/logout']).'" class="btn btn-default btn-flat">Sign out</a>
                                    </div>'; }?>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->

                </ul>
            </div>
        </nav>
    </header>

    <!--=====================================SIDEBAR===================================================================== -->
    <aside class="main-sidebar">
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p><?php echo
                            Yii::$app->user->identity->username;
                        ?></p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" username="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                <button type="submit" username="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
                </div>
            </form>
            <!-- /.search form -->
            <!--========================= sidebar menu: : style can be found in sidebar.less ==========================-->
            <ul class="sidebar-menu">
                <li class="header">MAIN NAVIGATION</li>

                <?php
                if(Yii::$app->user->can('National') || Yii::$app->user->can('Regional') || Yii::$app->user->can('Municipal')){
                    echo
                    '<li class="treeview">
                        <a href="#">
                            <i class="fa fa-users"></i> <span>Users</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li class="active"><a href="index.php?r=user/nationaladmin"><i class="fa fa-circle-o"></i> National Admins</a></li>
                            <li><a href="index.php?r=user/regionaladmin"><i class="fa fa-circle-o"></i> Regional Admins</a></li>
                            <li><a href="index.php?r=user/citymunicipaladmin"><i class="fa fa-circle-o"></i> City/Municipal Admins </a></li>
                            <li><a href="index.php?r=user/externaladmin"><i class="fa fa-circle-o"></i> External Users </a></li>
                        </ul>
                       </li>
                    
                    <li>
                        <a href="index.php?r=warehouse">
                            <i class="fa fa-building"></i> <span>Warehouse</span>
                        </a>
                     </li>'
                    ;}
                ?>

                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-shopping-basket"></i>
                        <span>Items</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="index.php?r=supply/agriculture"><i class="fa fa-circle-o"></i> Agriculture</a></li>
                        <li><a href="index.php?r=supply/buildingmaterials"><i class="fa fa-circle-o"></i> Building Materials</a></li>
                        <li><a href="index.php?r=supply/clothingtextile"><i class="fa fa-circle-o"></i> Clothings/Textile</a></li>
                        <li><a href="index.php?r=supply/equipmenttools"><i class="fa fa-circle-o"></i> Equipment & Tools</a></li>
                        <li><a href="index.php?r=supply/fooditems"><i class="fa fa-circle-o"></i> Food items</a></li>
                        <li><a href="index.php?r=supply/fuel"><i class="fa fa-circle-o"></i> Fuel</a></li>
                        <li><a href="index.php?r=supply/housewaresupplies"><i class="fa fa-circle-o"></i> Houseware Supplies</a></li>
                        <li><a href="index.php?r=supply/kidssupplies"><i class="fa fa-circle-o"></i> Kids Supplies</a></li>
                        <li><a href="index.php?r=supply/medicalequipmentsupplies"><i class="fa fa-circle-o"></i> Medical Equipment/Supplies</a></li>
                        <li><a href="index.php?r=supply/services"><i class="fa fa-circle-o"></i> Services</a></li>
                        <li><a href="index.php?r=supply/electricalsuppliessurvival"><i class="fa fa-circle-o"></i> Electrical Supplies/Survival</a></li>
                        <li><a href="index.php?r=supply/sleepinggear"><i class="fa fa-circle-o"></i> Sleeping Gear</a></li>
                        <li><a href="index.php?r=supply/sportsrecreation"><i class="fa fa-circle-o"></i> Sports/Recreation</a></li>
                        <li><a href="index.php?r=supply/wash"><i class="fa fa-circle-o"></i> WaSH</a></li>
                        <li><a href="index.php?r=supply/others"><i class="fa fa-circle-o"></i> Others</a></li>

                    </ul>
                </li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-list"></i> <span>Reports</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <?php if(Yii::$app->user->can('National') || Yii::$app->user->can('Regional') || Yii::$app->user->can('Municipal'))
                            echo
                            '<li><a href="index.php?r=supply/expirationreport"><i class="fa fa-circle-o"></i> Expiration Report</a></li>';
                            ?>
                        <li><a href="index.php?r=request/calendar"><i class="fa fa-circle-o"></i> Calendar</a></li>
                        <?php if(Yii::$app->user->can('National') || Yii::$app->user->can('Regional') || Yii::$app->user->can('Municipal'))
                            echo
                            '<li><a href="index.php?r=supply/incomingsupply"><i class="fa fa-circle-o"></i> Incoming Supplies</a></li>';
                        ?>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-truck"></i> <span>Vehicles</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="index.php?r=vehicle"><i class="fa fa-circle-o"></i> Heavy Equipments</a></li>
                        <li><a href="index.php?r=vehicle/air"><i class="fa fa-circle-o"></i> Air</a></li>
                        <li><a href="index.php?r=vehicle/sea"><i class="fa fa-circle-o"></i> Sea</a></li>
                        <li><a href="index.php?r=vehicle/road"><i class="fa fa-circle-o"></i> Land</a></li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-files-o"></i>
                        <span>Requests</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="index.php?r=request"><i class="fa fa-circle-o"></i>Pending</a></li>
                        <li><a href="index.php?r=request/confirmed"><i class="fa fa-circle-o"></i>Confirmed</a></li>
                        <li><a href="index.php?r=request/intransit"><i class="fa fa-circle-o"></i>In Transit</a></li>
                        <li><a href="index.php?r=request/arrived"><i class="fa fa-circle-o"></i>Arrived</a></li>
                    </ul>
                </li>

                <?php
                if(Yii::$app->user->can('National') || Yii::$app->user->can('Regional') || Yii::$app->user->can('Municipal')){
                    echo
                    '<li class="treeview">
                    <a href="#">
                        <i class="fa fa-files-o"></i>
                        <span>Records</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="index.php?r=volunteer"><i class="fa fa-circle-o"></i>Volunteers</a></li>
                        <li><a href="index.php?r=supplier"><i class="fa fa-circle-o"></i>Supplier</a></li>
                        <li><a href="index.php?r=disaster-site"><i class="fa fa-circle-o"></i>Disaster site</a></li>
                        <li><a href="index.php?r=population"><i class="fa fa-circle-o"></i>Affected Area/Population</a></li>
                        <li><a href="index.php?r=barangay"><i class="fa fa-circle-o"></i>Barangay</a></li>
                        <li><a href="index.php?r=city-municipal"><i class="fa fa-circle-o"></i>City / Municipal</a></li>
                        <li><a href="index.php?r=province"><i class="fa fa-circle-o"></i>Province</a></li>
                        <li><a href="index.php?r=region"><i class="fa fa-circle-o"></i>Region</a></li>
                    </ul>
                </li>'
                    ;}

                ?>

                <?php
                if(Yii::$app->user->can('National') || Yii::$app->user->can('Regional') || Yii::$app->user->can('Municipal')) {
                    echo '
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-heartbeat"></i>
                        <span>Donation</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="index.php?r=donation/donor"><i class="fa fa-circle-o"></i>Donor</a></li>
                        <li><a href="index.php?r=donation"><i class="fa fa-circle-o"></i>List of Donation</a></li>
                    </ul>
                </li>';
                }?>

                <li><a href="index.php"><i class="fa fa-book"></i> <span>Manual</span></a></li>
            
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <div class="content-wrapper">
        <section class="content">
            <?= $content ?>
        </section>
    </div>

    <footer class="main-footer">
        <!--<div class="container">
            <p class="pull-left">&copy; My Company <?/*= date('Y') */?></p>

            <p class="pull-right"><?/*= Yii::powered() */?></p>
        </div>-->
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.3.8
        </div>
        <strong>Copyright &copy; <?= date('Y')?> <a href="http://www.ndrrmc.gov.ph/">NDRRMC</a>.</strong> All rights
        reserved.
    </footer>

    <div class="control-sidebar-bg"></div>

<?php $this->endBody() ?>
</div>
</body>
</html>
<?php $this->endPage() ?>
