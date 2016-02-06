<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>BHMS Doctor Register</title>
<meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
<link rel="stylesheet" href="resources/css/style.css" type="text/css" />
<link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="resources/css/plugin.css" type="text/css" />
<link rel="stylesheet" href="resources/css/app.css" type="text/css" />
<link rel='stylesheet prefetch' href='resources/css/datepicker.css'>
<link rel='stylesheet prefetch' href='resources/css/colorpicker.css'>

<!--[if lt IE 9]>
    <script src="js/ie/respond.min.js" cache="false"></script>
    <script src="js/ie/html5.js" cache="false"></script>
    <script src="js/ie/fix.js" cache="false"></script>
  <![endif]-->
</head>
<body>
<section class="hbox stretch"> 
  <!-- .aside -->
  <aside class=" aside-sm bg-dark" id="nav">
    <section class="vbox">
      <header class="dker nav-bar nav-bar-fixed-top"> <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen" data-target="#nav"> <i class="fa fa-bars"></i> </a> <a href="#" class="nav-brand" data-toggle="fullscreen">bhms</a> <a class="btn btn-link visible-xs" data-toggle="class:show" data-target=".nav-user"> <i class="fa fa-comment-o"></i> </a> </header>
      <section> 
        <!-- user -->
        <div class="bg-dark nav-user hidden-xs pos-rlt">
          <div class="nav-avatar pos-rlt"> <a href="#" class="thumb-sm avatar animated rollIn" data-toggle="dropdown"> <img src="images/avatar.jpg" alt="" class=""> <span class="caret caret-white"></span> </a>
            <ul class="dropdown-menu m-t-sm animated fadeInLeft">
              <span class="arrow top"></span>
              <li> <a href="#">Settings</a> </li>
              <li> <a href="profile.html">Profile</a> </li>
              <li> <a href="#"> <span class="badge bg-danger pull-right">3</span> Notifications </a> </li>
              <li class="divider"></li>
              <li> <a href="docs.html">Help</a> </li>
              <li> <a href="signin.html">Logout</a> </li>
            </ul>
            <div class="visible-xs m-t m-b"> <a href="#" class="h3">John.Smith</a>
              <p><i class="fa fa-map-marker"></i> London, UK</p>
            </div>
          </div>
          <div class="nav-msg"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <b class="badge badge-white count-n">2</b> </a>
            <section class="dropdown-menu m-l-sm pull-left animated fadeInRight">
              <div class="arrow left"></div>
              <section class="panel bg-white">
                <header class="panel-heading"> <strong>You have <span class="count-n">2</span> notifications</strong> </header>
                <div class="list-group"> <a href="#" class="media list-group-item"> <span class="pull-left thumb-sm"> <img src="resources/images/avatar.jpg" alt="John said" class="img-circle"> </span> <span class="media-body block m-b-none"> Use awesome animate.css<br>
                  <small class="text-muted">28 Aug 13</small> </span> </a> <a href="#" class="media list-group-item"> <span class="media-body block m-b-none"> 1.0 initial released<br>
                  <small class="text-muted">27 Aug 13</small> </span> </a> </div>
                <footer class="panel-footer text-sm"> <a href="#" class="pull-right"><i class="fa fa-cog"></i></a> <a href="#">See all the notifications</a> </footer>
              </section>
            </section>
          </div>
        </div>
        <!-- / user --> 
        <!-- nav -->
        <nav class="nav-primary hidden-xs">
          <ul class="nav">
            <li class="active"> <a href="#"><span>Register New Patient</span> </a> </li>
            <li> <a href="#"><span>View All Patient</span> </a> </li>
            <li class="dropdown-submenu"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <b class="badge bg-dark pull-right"><i class="fa fa-arrow-circle-right"></i></b> <span>Doctors</span> </a>
              <ul class="dropdown-menu">
                <li> <a href="#">Sub links 1</a> </li>
                <li> <a href="#">Sub links 2</a> </li>
                <li> <a href="#">Sub links 3</a> </li>
                <li> <a href="#">Sub links 4</a> </li>
                <li> <a href="#">Sub links 5</a> </li>
              </ul>
            </li>
            <li> <a href="#"><span>View Appointments</span> </a> </li>
            <li> <a href="#"><span>Payments</span> </a> </li>
            <li> <a href="#"><span>Advance Search</span> </a> </li>
          </ul>
        </nav>
        <!-- / nav --> 
        
      </section>
      <footer class="footer bg-gradient hidden-xs"> <a href="#" class="btn btn-sm btn-link m-r-n-xs pull-right"> <i class="fa fa-power-off"></i> </a> <a href="#nav" data-toggle="class:nav-vertical" class="btn btn-sm btn-link m-l-n-sm"> <i class="fa fa-bars"></i> </a> </footer>
    </section>
  </aside>
  <!-- /.aside --> 
  <!-- .vbox -->
  <section id="content">
    <section class="vbox">
      <header class="header bg-white b-b">
        <p><strong>Doctor Register</strong> </p>
      </header>
      <section class="scrollable wrapper">
        <div class="row">
        <div class="col-sm-8">
        <div class="col-sm-12 patient">
          <form data-validate="parsley">
          <section class="panel">
          <div class="panel-body">
          <div class="col-sm-10 p0">
            <div class="col-sm-6">
              <div class="form-group">
                <label>Frist Name<span>*</span></label>
                <input type="text" class="form-control input-sm" data-type="frist-name" data-required="true" placeholder="Frist Name">
                <div class="text-danger mt5">Frist Name Required</div>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Last&nbsp;Name&nbsp;<span>*</span></label>
                <input type="text" class="form-control input-sm" data-type="last-name" data-required="true" placeholder="Last Name">
                <div class="text-danger mt5">Last Name Required</div>
              </div>
            </div>
            <div class="col-sm-12 p0">
              <div class="col-sm-4">
                <div class="form-group">
                  <label>Gender:<span>*</span></label>
                  <div class="sdds">
                    <label>
                      <input type="radio" name="radio" value="radio">
                      Male</label>
                    <label>
                      <input type="radio" name="radio" value="radio">
                      Female</label>
                  </div>
                  <div class="text-danger mt5">Gender Required</div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label>Date of birth <span>*</span></label>
                  <div id="datepicker" class="input-group date" data-date-format="mm-dd-yyyy">
                    <input class="form-control input-sm" type="text"/>
                    <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                  </div>
                  <div class="text-danger mt5">Date of Birth Required</div>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                  <label>Age <span>*</span></label>
                  <input type="text" class="form-control input-sm" data-type="age" data-required="true" placeholder="Age">
                  <div class="text-danger mt5">Age Required</div>
                </div>
              </div>
            </div>
            <div class="col-sm-12 pri-sec">
              <div class="col-sm-6">
                <div class="form-group">
                  <label>Speciality in</label>
                  <input type="text" class="form-control input-sm" data-type="speciality-in" data-required="true" placeholder="Speciality in">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label>Qualification</label>
                  <button type="button" class="mt25 btn btn-primary fa fa-plus-square pull-right btn_par"></button>
                  <input type="text" class="form-control input-sm input-s" data-type="qualification" data-required="true" placeholder="Qualification">
                </div>
              </div>
              <div class="col-sm-12 pri-sec  sub_qual" style="display:none">
                <div class="col-sm-6"> </div>
                <div class="col-sm-6">
                  <div class="form-group">
                    <button type="button" class="btn btn-primary fa fa-minus-square pull-right btn_child"></button>
                    <input type="text" class="form-control input-sm input-s" data-type="qualification" data-required="true" placeholder="Qualification">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-2 user-ico">
          <form id="form1" runat="server">
            <div class="text-center"> <img src="resources/images/default.png" alt="" id="target"> </div>
            <div class="fileUpload btn btn-default btn-xs"> <span>Upload Photo</span>
              <input type="file" class="upload" id="imgInp"  />
            </div>
          </form>
        </div>
        <div class="col-sm-12 pri-sec">
          <div class="col-sm-6">
            <div class="form-group">
              <label>Primary Mobile / Number <span>*</span></label>
              <input type="text" class="form-control input-sm" data-type="primary-mobile-number" data-required="true" placeholder="Primary Mobile / Number">
              <div class="text-danger mt5">Primary Mobile / Number Required</div>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="form-group">
              <label>Secondry Mobile / Number </label>
              <input type="text" class="form-control input-sm" data-type="secondry-mobile-number" data-required="true" placeholder="Secondry Mobile / Number">
            </div>
          </div>
        </div>
        <div class="col-sm-12 mid-port">
          <div class="col-sm-6">
            <div class="form-group">
              <label>Landline Number</label>
              <input type="text" class="form-control input-sm" data-type="Landline Number" data-required="true" placeholder="Landline Number">
            </div>
          </div>
          <div class="col-sm-6">
            <div class="form-group">
              <label>Email Id</label>
              <input type="text" class="form-control input-sm" data-type="emial" data-required="true" placeholder="">
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="col-sm-6">
            <div class="form-group">
              <label>Building Name / Number</label>
              <input type="text" class="form-control input-sm" data-type="building-name-number" data-required="true" placeholder="Building Name / Number">
            </div>
          </div>
          <div class="col-sm-6">
            <div class="form-group">
              <label>Street Address</label>
              <input type="text" class="form-control input-sm" data-type="street-address" data-required="true" placeholder="Street Address">
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="col-sm-6">
            <div class="form-group">
              <label>Locality</label>
              <input type="text" class="form-control input-sm" data-type="Locality" data-required="true" placeholder="locality">
            </div>
          </div>
          <div class="col-sm-6">
            <div class="form-group">
              <label>City</label>
              <input type="text" class="form-control input-sm" data-type="city" data-required="true" placeholder="City">
            </div>
          </div>
          <div class="col-sm-6">
            <div class="form-group">
              <label>State</label>
              <input type="text" class="form-control input-sm" data-type="state" data-required="true" placeholder="State">
            </div>
          </div>
          <div class="col-sm-6">
            <div class="form-group">
              <label>Country</label>
              <select class="form-control m-b input-sm" name="account">
                <option>India</option>
                <option>USA</option>
                <option>UK</option>
                <option>Canada</option>
              </select>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="form-group">
              <label>Post Code</label>
              <input type="text" class="form-control input-sm" data-type="post-code" data-required="true" placeholder="Post Code">
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="col-sm-6">
            <div class="form-group">
              <label>Color&nbsp;Code</label>
              <div class="input-group demo2">
                <input type="text" value="" class="form-control" />
                <span class="input-group-addon"><i></i></span> </div>
            </div>
          </div>
          <div class="col-lg-12">
            <label>Consultation Details</label>
            <div class="form-group col-sm-12">
              <label class="col-sm-2"></label>
              <div class="col-sm-10">
                <div class="col-sm-3">
                  <label>
                    <input type="checkbox" name="checkbox">
                    &nbsp; 
                    Monday</label>
                </div>
                <div class="col-sm-2">
                  <label>Form</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 AM</option>
                    <option>11:00 AM</option>
                    <option>12:00 AM</option>
                  </select>
                </div>
                <div class="col-sm-1">
                  <label>To</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 PM</option>
                    <option>11:00 PM</option>
                    <option>12:00 PM</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="form-group col-sm-12">
              <label class="col-sm-2"></label>
              <div class="col-sm-10">
                <div class="col-sm-3">
                  <label>
                    <input type="checkbox" name="checkbox">
                    &nbsp; 
                    Tuesday</label>
                </div>
                <div class="col-sm-2">
                  <label>Form</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 AM</option>
                    <option>11:00 AM</option>
                    <option>12:00 AM</option>
                  </select>
                </div>
                <div class="col-sm-1">
                  <label>To</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 PM</option>
                    <option>11:00 PM</option>
                    <option>12:00 PM</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="form-group col-sm-12">
              <label class="col-sm-2"></label>
              <div class="col-sm-10">
                <div class="col-sm-3">
                  <label>
                    <input type="checkbox" name="checkbox">
                    &nbsp; 
                    Wednesday</label>
                </div>
                <div class="col-sm-2">
                  <label>Form</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 AM</option>
                    <option>11:00 AM</option>
                    <option>12:00 AM</option>
                  </select>
                </div>
                <div class="col-sm-1">
                  <label>To</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 PM</option>
                    <option>11:00 PM</option>
                    <option>12:00 PM</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="form-group col-sm-12">
              <label class="col-sm-2"></label>
              <div class="col-sm-10">
                <div class="col-sm-3">
                  <label>
                    <input type="checkbox" name="checkbox">
                    &nbsp; 
                    Thursday</label>
                </div>
                <div class="col-sm-2">
                  <label>Form</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 AM</option>
                    <option>11:00 AM</option>
                    <option>12:00 AM</option>
                  </select>
                </div>
                <div class="col-sm-1">
                  <label>To</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 PM</option>
                    <option>11:00 PM</option>
                    <option>12:00 PM</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="form-group col-sm-12">
              <label class="col-sm-2"></label>
              <div class="col-sm-10">
                <div class="col-sm-3">
                  <label>
                    <input type="checkbox" name="checkbox">
                    &nbsp; 
                    Friday</label>
                </div>
                <div class="col-sm-2">
                  <label>Form</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 AM</option>
                    <option>11:00 AM</option>
                    <option>12:00 AM</option>
                  </select>
                </div>
                <div class="col-sm-1">
                  <label>To</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 PM</option>
                    <option>11:00 PM</option>
                    <option>12:00 PM</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="form-group col-sm-12">
              <label class="col-sm-2"></label>
              <div class="col-sm-10">
                <div class="col-sm-3">
                  <label>
                    <input type="checkbox" name="checkbox">
                    &nbsp; 
                    Saturday</label>
                </div>
                <div class="col-sm-2">
                  <label>Form</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 AM</option>
                    <option>11:00 AM</option>
                    <option>12:00 AM</option>
                  </select>
                </div>
                <div class="col-sm-1">
                  <label>To</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 PM</option>
                    <option>11:00 PM</option>
                    <option>12:00 PM</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="form-group col-sm-12">
              <label class="col-sm-2"></label>
              <div class="col-sm-10">
                <div class="col-sm-3">
                  <label>
                    <input type="checkbox" name="checkbox">
                    &nbsp; 
                    Sunday</label>
                </div>
                <div class="col-sm-2">
                  <label>Form</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 AM</option>
                    <option>11:00 AM</option>
                    <option>12:00 AM</option>
                  </select>
                </div>
                <div class="col-sm-1">
                  <label>To</label>
                </div>
                <div class="col-sm-3">
                  <select class="form-control input-sm" name="account">
                    <option>10:00 PM</option>
                    <option>11:00 PM</option>
                    <option>12:00 PM</option>
                  </select>
                </div>
              </div>
            </div>
          </div>
          <!-- footer -->
          <div class="form-group col-sm-12 mt25">
            <div class="col-sm-12 text-right">
              <button class="btn btn-white" type="submit">Cancel</button>
              <button class="btn btn-primary" type="submit">Save</button>
            </div>
          </div>
          
          <!-- footer End--> 
        </div>
      </section>
      </form>
      </div>
      </div>
      <!-- right div--> 
      <!--<div class="col-sm-4 right-div"> Error Massage </div>-->
      </div>
    </section>
  </section>
  <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a> </section>
<!-- /.vbox -->
</section>
<script src="js/jquery.min.js"></script> 
<!-- Bootstrap --> 
<script src="js/bootstrap.js"></script> 
<!-- App --> 
<script src="resources/js/app.js"></script> 
<script src='resources/js/datepicker.js'></script> 
<script src='resources/js/colorpicker.js'></script> 
<script src="resources/js/index.js"></script> 
<script>
$('.btn_par').click(function(){
	$('.sub_qual').show();
	});
$('.btn_child').click(function(){
	$('.sub_qual').hide();
	});
		</script>
</body>
</html>