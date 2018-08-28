<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Blog</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="shortcut icon" href="images/favicon.ico">
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/hover-min.css" rel="stylesheet">
<!-- <link href="css/mystyle.css" rel="stylesheet"> -->
<link href="${pageContext.request.contextPath}/resources/css/lightbox.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all" href="css/map.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/jquery-ui.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- popup registration form start  -->
<%-- <form:form action="add"  commandName="user" method="POST"> --%>
<!--Modal: Login / Register Form-->
<div class="modal fade" id="modalLRForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog cascading-modal" role="document">
        <!--Content-->
        <div class="modal-content">

            <!--Modal cascading tabs-->
            <div class="modal-c-tabs">

                <!-- Nav tabs -->
                <ul class="nav nav-tabs md-tabs tabs-2 light-blue darken-3" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#panel7" role="tab"><i class="fa fa-user mr-1"></i> Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#panel8" role="tab"><i class="fa fa-user-plus mr-1"></i> Register</a>
                    </li>
                </ul>

                <!-- Tab panels -->
                <div class="tab-content">
                    <!--Panel 7-->
                    <div class="tab-pane fade in show active" id="panel7" role="tabpanel">

                        <!--Body-->
                        <div class="modal-body mb-1">
                            <div class="md-form form-sm mb-5">
                                <i class="fa fa-envelope prefix"></i>
                                <input type="text" id="modalLRInput10" class="form-control form-control-sm validate"/>
                                <label data-error="wrong" data-success="right" for="modalLRInput10">Your email</label>
                            </div>

                            <div class="md-form form-sm mb-4">
                                <i class="fa fa-lock prefix"></i>
                                <input type="password" id="modalLRInput11" class="form-control form-control-sm validate"/>
                                <label data-error="wrong" data-success="right" for="modalLRInput11">Your password</label>
                            </div>
                            <div class="text-center mt-2">
                                <button class="btn btn-info">Log in <i class="fa fa-sign-in ml-1"></i></button>
                            </div>
                        </div>
                        <!--Footer-->
                        <div class="modal-footer">
                            <div class="options text-center text-md-right mt-1">
                                <p>Not a member? <a href="#" class="blue-text">Sign Up</a></p>
                                <p>Forgot <a href="#" class="blue-text">Password?</a></p>
                            </div>
                            <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
                        </div>

                    </div>
                    <!--/.Panel 7-->

                    <!--Panel 8-->
                    <div class="tab-pane fade" id="panel8" role="tabpanel">

                        <!--Body-->
                        <div class="modal-body">
                         <div class="md-form form-sm mb-5">
                                <i class="fa fa-envelope prefix"></i>
                                <input type="text" id="modalLRInput12" class="form-control form-control-sm validate" />
                                <label data-error="wrong" data-success="right" for="modalLRInput12" hidden="">Your email</label>
                            </div>
                             <div class="md-form form-sm mb-5">
                                <i class="fa fa-envelope prefix"></i>
                                <input type="text" id="modalLRInput12" class="form-control form-control-sm validate"/>
                                <label data-error="wrong" data-success="right" for="modalLRInput12">Your name</label>
                            </div>
                            <div class="md-form form-sm mb-5">
                                <i class="fa fa-envelope prefix"></i>
                                <input type="text" id="modalLRInput12" class="form-control form-control-sm validate"/>
                                <label data-error="wrong" data-success="right" for="modalLRInput12">Your email</label>
                            </div>

                            <div class="md-form form-sm mb-5">
                                <i class="fa fa-lock prefix"></i>
                                <input type="password" id="modalLRInput13" class="form-control form-control-sm validate"/>
                                <label data-error="wrong" data-success="right" for="modalLRInput13">Your password</label>
                            </div>

                            <div class="md-form form-sm mb-4">
                                <i class="fa fa-lock prefix"></i>
                                <input type="password" id="modalLRInput14" class="form-control form-control-sm validate"/>
                                <label data-error="wrong" data-success="right" for="modalLRInput14">Repeat password</label>
                            </div>

                            <div class="text-center form-sm mt-2">
                                <button class="btn btn-info">Sign up <i class="fa fa-sign-in ml-1"></i></button>
                            </div>

                        </div>
                        <!--Footer-->
                        <div class="modal-footer">
                            <div class="options text-right">
                                <p class="pt-1">Already have an account? <a href="#" class="blue-text">Log In</a></p>
                            </div>
                            <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!--/.Panel 8-->
                </div>

            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
<!--Modal: Login / Register Form-->
<%-- </form:form> --%>

<!-- popup registration form end  -->

	<!--Navigation-->

	<!--Header-->
	<nav class="navbar navbar-inverse  navbar-fixed-top">

		<div class="conatiner-fluid">
			<!--page scroll button for -->
			<div class="navbar-header" role="navigation">
				<!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target= "#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>      
       </button> -->
				<!-- <a class="navbar-brand" href="#">Website</a> -->
			</div>
			<!--page scroll button-->
			<ul class="nav navbar-nav">
				<li class="call"><a> <img src="images/call.png">+91
						020-XXXXXXX
				</a></li>
<!-- 				<li><a href="#"></a></li> -->
<!-- 				<li><a href="#"></a></li> -->
<!-- 				<li><a href="#" target="_blank"></a></li> -->

			</ul>

			<div style="display: inline-block; float: right;">
				<div class=" navbar-collapse" id="myNavbar">

					<ul class="nav navbar-nav navbar-right">

<!-- 						<li class="english"><a href="#">English</a></li> -->
						<li><select class="state-select" id="select"
							name="select_language">
								<option value="">Language</option>
								<option value="">English</option>
								<option value="1">Marathi</option>
								<option value="">Hindi</option>

						</select></li>
<!-- 						<li ><a href="#"><button type="button" class="btn btn-primary" style="padding-bottom: 2px;" data-toggle="modal" data-target="#modalLRForm"><b>Sign Up</b></button></a></li> -->
					
					<li>
					<a href="" class="btn btn-primary" data-toggle="modal" data-target="#modalLRForm" style="line-height:29px">Sign Up</a>
					</li>
					
					</ul>
					
					 		
				</div>
				
				<!--ul-li-->
			</div>
			<!--navbar collapse-->
		</div>
		<!--container-fluid-->
	</nav>
	<header>
		<div class="header">
			<nav class="navbar navbar-default">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="http://www.risingelection.com/"><img
							src="images/logo.png" class="img-responsive" alt="" /></a>
					</div>

					<!-- <select class="header-select"  id="select_city" name="select_city">
          <option value="">Select City</option>
          <option value="" selected="selected">Pune</option>
          <option value="">Mumbai</option>
          <option value="">Bangalore</option>
        </select> -->


					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right"
							style="float: right !important;">

							<li class=" "><a href="http://www.risingelection.com/home"
								class='hvr-float'><img src="images/head-home.png"
									class="img-responsive" alt="" /> <span>Home</span></a></li>
							<li class=" "><a href="http://www.risingelection.com/blog"
								class='hvr-float'><img src="images/head-blog.png"
									class="img-responsive" alt="" /><span>Blog</span></a></li>
							<li class=" "><a
								href="http://www.risingelection.com/election-day"
								class='hvr-float'><img src="images/head-govern.png"
									class="img-responsive" alt="" /><span>Election Day</span></a></li>
							<li class=" "><a
								href="http://www.risingelection.com/election-data"
								class='hvr-float'><img src="images/Data_icon.png"
									class="img-responsive" alt="" /><span>Survey Data</span></a></li>
							<li class=" "><a
								href="http://www.risingelection.com/complaints"
								class='hvr-float'><img
									src="images/head-govern.png"
									class="img-responsive" alt="" /><span>Complaint</span></a></li>
							<li class=" "><a
								href="http://www.risingelection.com/risingyojana"
								class='hvr-float'><img
									src="images/head-govern.png"
									class="img-responsive" alt="" /><span>Yojana</span></a></li>																																																
						</ul>
																														
					</div>
					<!-- /.navbar-collapse -->
						
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
	</header>




	<div class="main-blog-banner">
		<div id="cbp-fwslider" class="cbp-fwslider">
			<ul>

				<li>
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<h1>With Rahul at Helm in Congress, PM Modi Calls for
									Promotion of Youth in BJP</h1>
								<p>
								<p>New Delhi: Prime Minister Narendra Modi in his first
									address to BJP MPs in the ongoing Winter Session called for
									promotion of youth both within and outside the party.</p>

								<p>At the beginning of the meeting on</p>
								<p>
									By <a href="http://www.risingelection.com/author/News18.com">News18.com</a>
									on December 21, 2017 in <a
										href="http://www.risingelection.com/category/2" rel="tag">Election</a>
								</p>
								<div class="blogread">
									<a
										href="blogs/with-rahul-at-helm-in-congress-pm-modi-calls-for-promotion-of-youth-in-bjp">READ
										MORE</a>
								</div>
							</div>
							<div class="col-md-6">
								<img
									src="images/blog/amit-shah-PM-Modi.jpg"
									class="img-responsive" alt="" />
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<h1>Sena Dishes Out Advice to BJP Post its Gujarat,
									Himachal Wins; JD(U) too Has Something to Say</h1>
								<p>
								<p>Patna: A hard fought win for the BJP in Gujarat had
									resonance thousands of kilometres away in Bihar where its
									alliance partner, Janata Dal (United), advised the Narendra
									Modi government to focus on issues related</p>
								<p>
									By <a
										href="http://www.risingelection.com/author/Alok Kumar | News18">Alok
										Kumar | News18</a> on December 21, 2017 in <a
										href="http://www.risingelection.com/category/2" rel="tag">Election</a>
								</p>
								<div class="blogread">
									<a
										href="blogs/sena-dishes-out-advice-to-bjp-post-its-gujarat-himachal-wins-jd-u-too-has-something-to-say">READ
										MORE</a>
								</div>
							</div>
							<div class="col-md-6">
								<img
									src="images/blog/PTI12_18_2017_000219B.jpg"
									class="img-responsive" alt="" />
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<h1>Who will be next Himachal Pradesh CM? BJP central
									observers to arrive in Shimla today</h1>
								<p>
								<p>Shimla: BJP central observers Nirmala Sitharaman and
									Narendra Singh Tomar are scheduled to arrive in Shimla to set
									off the process for electing the new chief minister of Himachal
									Pradesh, days after party's landslide victory</p>
								<p>
									By <a
										href="http://www.risingelection.com/author/By Zee Media Bureau">By
										Zee Media Bureau</a> on December 21, 2017 in <a
										href="http://www.risingelection.com/category/2" rel="tag">Election</a>
								</p>
								<div class="blogread">
									<a
										href="blogs/who-will-be-next-himachal-pradesh-cm-bjp-central-observers-to-arrive-in-shimla-today">READ
										MORE</a>
								</div>
							</div>
							<div class="col-md-6">
								<img
									src="images/blog/648935-thakur-nadda-1.jpg"
									class="img-responsive" alt="" />
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="mainblog">
		<div class="container">
			<div class="row">
				<div class="col-md-8 nopadding">
					<div id="pagination"></div>
					
					<!-- New block -->
					
						<div class="row">
							<div class="col-md-6">
								<article class="blogsdisplay">
									<h3>WHY DID AIADMK WIN IN TAMIL NADU?</h3>
									<p>
										By <a
											href="http://www.risingelection.com/author/Deepak Parvatiyar">Deepak
											Parvatiyar</a> on May 19, 2016 in <a
											href="http://www.risingelection.com/category/2" rel="tag">Election</a>
									</p>
									<img
										src="http://www.risingelection.com/images/blog/AIADMK-wins-in-tamil-nadu-elections.jpg"
										class="img-responsive" alt="">
									<p></p>
									<p class="text-justify">
										By retaining her government for the second consecutive term, J
										Jayalalithaa made history in Tamil Nadu. Despite All India
										Anna Dravida Munnetra Kazahagam's seats share going down, Amma
										did prove most of the exit...<a
											href="http://www.risingelection.com/blogs/why-did-aiadmk-win-in-tamil-nadu">Read
											More</a>
									</p>
								</article>
							</div>
							<div class="row">
								<div class="col-md-6">
									<article class="blogsdisplay">
										<h3>iPhone X: 7 new features it brings to Apple phones</h3>
										<p>
											By <a href="http://www.risingelection.com/author/manish s">manish
												s</a> on September 04, 2017 in <a
												href="http://www.risingelection.com/category/2" rel="tag">Election</a>
										</p>
										<img
											src="http://www.risingelection.com/images/blog/mobile.png"
											class="img-responsive" alt="">
										<p></p>
										<p class="text-justify">
											Apple's tenth-anniversary iPhone, iPhone X (pronounced iPhone
											10), is here. The all-new Apple iPhone is surely one of the
											most impressive iPhones to launch so far. It packs loads of
											new and cool features...<a
												href="http://www.risingelection.com/blogs/iphone-x-7-new-features-it-brings-to-apple-phones">Read
												More</a>
										</p>
									</article>
								</div>
								<div class="clearfix marginbot40"></div>
								<div class="row">
									<div class="col-md-6">
										<article class="blogsdisplay">
											<h3>J&amp;K: BSF jawan killed in ceasefire violation in
												Arnia sector</h3>
											<p>
												By <a href="http://www.risingelection.com/author/Dailyhunt">Dailyhunt</a>
												on September 15, 2017 in <a
													href="http://www.risingelection.com/category/2" rel="tag">Election</a>
											</p>
											<img
												src="http://www.risingelection.com/images/blog/800x480_d8bc6cbd48a2dc96e39bfa8dc88b9be0.jpg"
												class="img-responsive" alt="">
											<p></p>
											<p class="text-justify">
												Jammu: A Border Security Force (BSF) jawan was killed when
												Pakistani troops violated ceasefire for the third
												consecutive day on Friday along the International Border
												(IB) in Jammu district.<br> Constable Bijender Bahadur
												was on...<a
													href="http://www.risingelection.com/blogs/j-k-bsf-jawan-killed-in-ceasefire-violation-in-arnia-sector">Read
													More</a>
											</p>
										</article>
									</div>
									<div class="row">
										<div class="col-md-6">
											<article class="blogsdisplay">
												<h3>Rohingya Muslim refugees deportation: Govt to file
													affidavit in Supreme Court on September 18, says Rajnath
													Singh</h3>
												<p>
													By <a href="http://www.risingelection.com/author/zeenews">zeenews</a>
													on September 15, 2017 in <a
														href="http://www.risingelection.com/category/2" rel="tag">Election</a>
												</p>
												<img
													src="images/blog/624870-rohingyamuslims-rajnath.jpg"
													class="img-responsive" alt="">
												<p></p>
												<p>New Delhi: Union Home Minister Rajnath Singh on
													Friday confirmed that the central government will file an
													affidavit in the Supreme Court to deport illegal Rohingya
													Muslim immigrants to Myanmar.</p>

												<p>
													The Modi government is firm in...<a
														href="http://www.risingelection.com/blogs/rohingya-muslim-refugees-deportation-govt-to-file-affidavit-in-supreme-court-on-september-18-says-rajnath-singh">Read
														More</a>
												</p>
											</article>
										</div>
										<div class="clearfix marginbot40"></div>
									</div>
									<br>
									<div class=" pagination">
										<span class="current">1</span><a class="page-numbers"
											href="?page=2">2</a><a class="page-numbers" href="?page=3">3</a><a
											class="page-numbers" href="?page=4">4</a><a
											class="page-numbers" href="?page=5">5</a><a
											class="page-numbers" href="?page=6">6</a><a
											class="page-numbers" href="?page=7">7</a><a
											class="page-numbers" href="?page=8">8</a><a
											class="page-numbers" href="?page=9">9</a><a
											class="page-numbers" href="?page=2">next</a><a
											class="page-numbers" href="?page=59">Last</a>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					
					<!-- End Block -->
					
					<div class="clearfix marginbot40"></div>
				</div>
				<div class="col-md-4">
					<div class="blogtabs">
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#popular"
								aria-controls="popular" role="tab" data-toggle="tab">Popular</a></li>
							<li role="presentation"><a href="#comments"
								aria-controls="comments" role="tab" data-toggle="tab">Comments</a></li>
							<li role="presentation"><a href="#tags" aria-controls="tags"
								role="tab" data-toggle="tab">Tags</a></li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="popular">
								<div class="tab_content">
									<div class="block-tabs">
										<div class="tabs-image">
											<a class="standard-format-icon"
												href="blogs/why-did-aiadmk-win-in-tamil-nadu"
												title="WHY DID AIADMK WIN IN TAMIL NADU?"><img
												width="75" height="60"
												src="images/blog/AIADMK-wins-in-tamil-nadu-elections.jpg"
												class="fadeover wp-post-image opacity1"
												alt="865766892_1f40f95a3f_b"></a>
										</div>
										<div class="description">
											<h3>
												<a
													href="http://www.risingelection.com/blogs/why-did-aiadmk-win-in-tamil-nadu"
													title="Bradford Design Exchange">WHY DID AIADMK WIN IN
													TAMIL NADU?</a>
											</h3>
											<div class="tabs-meta">May 19, 2016</div>
										</div>
									</div>
									<div class="block-tabs">
										<div class="tabs-image">
											<a class="standard-format-icon"
												href="blogs/london-underground-train-attack-isis-claims-responsibility-terror-threat-level-is-raised-to-critical"
												title="London underground train attack: ISIS claims responsibility"><img
												width="75" height="60"
												src="images/blog/1505528997-AP_london_train.jpg"
												class="fadeover wp-post-image opacity1"
												alt="865766892_1f40f95a3f_b"></a>
										</div>
										<div class="description">
											<h3>
												<a
													href="http://www.risingelection.com/blogs/london-underground-train-attack-isis-claims-responsibility-terror-threat-level-is-raised-to-critical"
													title="Bradford Design Exchange">London underground
													train attack: ISIS claims responsibility, terror threat
													level is raised to critical</a>
											</h3>
											<div class="tabs-meta">September 16, 2017</div>
										</div>
									</div>
									<div class="block-tabs">
										<div class="tabs-image">
											<a class="standard-format-icon"
												href="blogs/shiv-sena-slams-mumbai-ahmedabad-bullet-train-project-calls-it-pm-modi-s-wealthy-dream"
												title="Shiv Sena slams Mumbai-Ahmedabad bullet train project"><img
												width="75" height="60"
												src="images/blog/624556-uddhav-thackeray-1.jpg"
												class="fadeover wp-post-image opacity1"
												alt="865766892_1f40f95a3f_b"></a>
										</div>
										<div class="description">
											<h3>
												<a
													href="http://www.risingelection.com/blogs/shiv-sena-slams-mumbai-ahmedabad-bullet-train-project-calls-it-pm-modi-s-wealthy-dream"
													title="Bradford Design Exchange"> Shiv Sena slams
													Mumbai-Ahmedabad bullet train project, calls it PM Modi's
													'wealthy dream'</a>
											</h3>
											<div class="tabs-meta">September 16, 2017</div>
										</div>
									</div>
									<div class="block-tabs">
										<div class="tabs-image">
											<a class="standard-format-icon"
												href="blogs/rbi-governor-urjit-patel-says-economic-growth-rate-likely-to-exceed-7-in-upcoming-quarters"
												title="RBI Governor Urjit Patel says economic growth rate likely to exceed 7% |  Risingelection"><img
												width="75" height="60"
												src="images/blog/1507517517-patel_1.jpg"
												class="fadeover wp-post-image opacity1"
												alt="865766892_1f40f95a3f_b"></a>
										</div>
										<div class="description">
											<h3>
												<a
													href="http://www.risingelection.com/blogs/rbi-governor-urjit-patel-says-economic-growth-rate-likely-to-exceed-7-in-upcoming-quarters"
													title="Bradford Design Exchange">RBI Governor Urjit
													Patel says economic growth rate likely to exceed 7% in
													upcoming quarters</a>
											</h3>
											<div class="tabs-meta">October 09, 2017</div>
										</div>
									</div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="comments">
								<div class="tab_content"></div>
							</div>
							<div role="tabpanel" class="tab-pane" id="tags">
								<div class="tagcloud">
									<a href="http://www.risingelection.com/category/1" rel="tag">Real
										Estate</a> <a href="http://www.risingelection.com/category/2"
										rel="tag">Election</a> <a
										href="http://www.risingelection.com/category/3" rel="tag">Eduction</a>
									<a href="http://www.risingelection.com/category/4" rel="tag">INDIA</a>
									<a href="http://www.risingelection.com/category/5" rel="tag">BUSINESS</a>
									<a href="http://www.risingelection.com/category/6" rel="tag">Business
										& Economy</a> <a href="http://www.risingelection.com/category/7"
										rel="tag">POLITICS</a> <a
										href="http://www.risingelection.com/category/8" rel="tag">WORLD</a>
									<a href="http://www.risingelection.com/category/9" rel="tag">Gujarat</a>
								</div>
							</div>
						</div>
					</div>
					<div class="widget">
						<!-- BEGIN WIDGET -->
						<h3 class="sidebar-widget-title">
							<span><a href="">Recent Posts</a></span>
						</h3>
						<div class="tab_content">
							<div class="block-tabs">
								<div class="tabs-image">
									<a class="standard-format-icon"
										href="with-rahul-at-helm-in-congress-pm-modi-calls-for-promotion-of-youth-in-bjp"
										title="With Rahul at Helm in Congress, PM Modi Calls for Promotion of Youth in BJP | Risingelection"><img
										width="75" height="60"
										src="images/blog/amit-shah-PM-Modi.jpg"
										class="fadeover wp-post-image opacity1"
										alt="865766892_1f40f95a3f_b"></a>
								</div>
								<div class="description">
									<h3>
										<a
											href="http://www.risingelection.com/blogs/with-rahul-at-helm-in-congress-pm-modi-calls-for-promotion-of-youth-in-bjp"
											title="Bradford Design Exchange">With Rahul at Helm in
											Congress, PM Modi Calls for Promotion of Youth in BJP</a>
									</h3>
									<div class="tabs-meta">December 21, 2017</div>
								</div>
							</div>
							<div class="block-tabs">
								<div class="tabs-image">
									<a class="standard-format-icon"
										href="sena-dishes-out-advice-to-bjp-post-its-gujarat-himachal-wins-jd-u-too-has-something-to-say"
										title="Sena Dishes Out Advice to BJP Post its Gujarat  Himachal Wins JDU too Has Something to Say"><img
										width="75" height="60"
										src="images/blog/PTI12_18_2017_000219B.jpg"
										class="fadeover wp-post-image opacity1"
										alt="865766892_1f40f95a3f_b"></a>
								</div>
								<div class="description">
									<h3>
										<a
											href="http://www.risingelection.com/blogs/sena-dishes-out-advice-to-bjp-post-its-gujarat-himachal-wins-jd-u-too-has-something-to-say"
											title="Bradford Design Exchange">Sena Dishes Out Advice
											to BJP Post its Gujarat, Himachal Wins; JD(U) too Has
											Something to Say</a>
									</h3>
									<div class="tabs-meta">December 21, 2017</div>
								</div>
							</div>
							<div class="block-tabs">
								<div class="tabs-image">
									<a class="standard-format-icon"
										href="who-will-be-next-himachal-pradesh-cm-bjp-central-observers-to-arrive-in-shimla-today"
										title="Who will be next Himachal Pradesh CM? BJP central observers to arrive in Shimla today"><img
										width="75" height="60"
										src="images/blog/648935-thakur-nadda-1.jpg"
										class="fadeover wp-post-image opacity1"
										alt="865766892_1f40f95a3f_b"></a>
								</div>
								<div class="description">
									<h3>
										<a
											href="http://www.risingelection.com/blogs/who-will-be-next-himachal-pradesh-cm-bjp-central-observers-to-arrive-in-shimla-today"
											title="Bradford Design Exchange">Who will be next
											Himachal Pradesh CM? BJP central observers to arrive in
											Shimla today</a>
									</h3>
									<div class="tabs-meta">December 21, 2017</div>
								</div>
							</div>
							<div class="block-tabs">
								<div class="tabs-image">
									<a class="standard-format-icon"
										href="a-little-bit-of-arvind-kejriwal-in-rahul-gandhi-s-gujarat-election-campaign"
										title="A Little Bit of Arvind Kejriwal in Rahul Gandhi's Gujarat Election Campaign | Risingelection"><img
										width="75" height="60"
										src="images/blog/rahul-gandhi-arvind-kejriwal-pti-875.png"
										class="fadeover wp-post-image opacity1"
										alt="865766892_1f40f95a3f_b"></a>
								</div>
								<div class="description">
									<h3>
										<a
											href="http://www.risingelection.com/blogs/a-little-bit-of-arvind-kejriwal-in-rahul-gandhi-s-gujarat-election-campaign"
											title="Bradford Design Exchange">A Little Bit of Arvind
											Kejriwal in Rahul Gandhi's Gujarat Election Campaign</a>
									</h3>
									<div class="tabs-meta">December 13, 2017</div>
								</div>
							</div>

						</div>
						<!-- END WIDGET -->
					</div>
				</div>
			</div>
		</div>
	</div>


	<!--
 </body></html> -->
	<div class="clearfix"></div>
	<!--==============================
            Top Footer
=================================-->
	<footer>
		<div class="top-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-2 col-xs-6">
						<ul class="list-unstyled">
							<!-- <li><a href="#">About Us</a></li>
          <li><a href="#">In the News</a></li>
          <li><a href="#">Copyright</a></li>
          <li><a href="#">Privacy Policy</a></li>
          <li><a href="#">Advertise</a></li> -->
							<li><a href="http://www.risingelection.com/about-us">About
									Us</a></li>
							<li><a href="http://www.risingelection.com/copyright">Copyright</a></li>
							<li><a href="http://www.risingelection.com/advertise">Advertise</a></li>
						</ul>
					</div>
					<div class="col-md-2 col-xs-6">
						<ul class="list-unstyled">
							<li><a href="http://www.risingelection.com/home">Home</a></li>
							<li><a href="http://www.risingelection.com/news-channels">News
									Channels</a></li>
						</ul>
					</div>
					<div class="col-md-2 col-xs-6">
						<ul class="list-unstyled">
							<li><a
								href="http://www.risingelection.com/archive-did-you-know">Archive
									Did you Know</a></li>
							<li><a
								href="http://www.risingelection.com/archive-view-polls">Archive
									View Polls</a></li>
							<li><a href="http://www.risingelection.com/web-sitemap">Sitemap</a></li>
						</ul>
					</div>
					<div class="col-md-2 col-xs-6">
						<ul class="list-unstyled">
							<li><a href="https://www.facebook.com/risingelection/"
								target="_blank">Facebook</a></li>
							<li><a href="https://twitter.com/risingelection"
								target="_blank">Twitter</a></li>
							<li><a
								href="https://www.linkedin.com/company/rising-elections"
								target="_blank">Linked In</a></li>
							<li><a href="https://plus.google.com/109869287593393897837"
								target="_blank">Google Plus</a></li>
							<li><a href="https://www.instagram.com/risingelection/"
								target="_blank">Instagram</a></li>
						</ul>
					</div>
					<div class="col-md-2 col-xs-6">
						<ul class="list-unstyled">
							<li><a href="http://www.risingelection.com/have-a-question">Have
									a question?</a></li>
							<li><a href="http://www.risingelection.com/data-correction">Data
									Correction</a></li>
							<li><a href="http://www.risingelection.com/faq">FAQ</a></li>
						</ul>
					</div>
				</div>
			</div>

		</div>

		<div class="bottom-footer">

			<div class="footer_bg">
				<div class="footer font_20">
					<div class="footer_header col-md-2">BREAKING NEWS</div>
					<div class="news col-md-8">
						<div class="caroufredsel_wrapper breakingnews1">
							<dl id="ticker-1" class="breakingnews2">




								<dd>
									<a
										href="https://www.ndtv.com/indians-abroad/nri-man-altaf-nazerali-gets-1-2-million-in-compensation-for-fake-news-article-in-canada-1905658"
										target="_blank" title=""> NRI Man Gets $1.2 Million In
										Compensation For Fake News Article In Canada </a>

								</dd>


								<dd>
									<a
										href="https://www.ndtv.com/world-news/moscow-may-ban-more-u-s-politicians-from-entering-russia-as-part-of-a-response-to-a-new-round-of-u-s-1905646"
										target="_blank" title=""> Russia May Ban More US
										Politicians Over Sanction: Deputy Foreign Minister </a>

								</dd>


								<dd>
									<a
										href="https://www.ndtv.com/world-news/thomas-cook-evacuates-300-from-egyptian-hotel-after-couples-death-1905635"
										target="_blank" title=""> 300 Evacuated From Hotel After
										Couple Die Within Hours Of Each Other </a>

								</dd>


								<dd>
									<a
										href="https://www.ndtv.com/kerala-news/2-kerala-government-officials-arrested-for-embezzling-relief-materials-1905626"
										target="_blank" title=""> 2 Kerala Government Officials
										Arrested For Embezzling Relief Materials </a>

								</dd>


								<dd>
									<a
										href="https://www.ndtv.com/india-news/20-men-acquitted-earlier-declared-guilty-in-2010-mirchpur-dalit-killings-1905621"
										target="_blank" title=""> 20 Men Acquitted Earlier
										Declared Guilty In 2010 Haryana Dalit Killings </a>

								</dd>
						</div>
						<dd></dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
		</div>
	</footer>
	<!-- Modal -->
	<div class="modal fade loginmodel" id="myModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-body">
					<div class="container1">
						<div class="card"></div>
						<div class="card">
							<h1 class="title">Login</h1>
							<form method="POST"
								action="addDetails">
								<div class="input-container">
									<input type="text" id="Username1" name="username"
										required="required" /> <label for="Username">Username</label>
									<div class="bar"></div>
								</div>
								<div class="input-container">
									<input type="password" id="Password1" name="password"
										required="required" /> <label for="Password">Password</label>
									<div class="bar"></div>
								</div>
								<div class="button-container">
									<button type="submit">
										<span>Go</span>
									</button>
								</div>
								<br>
								<div class="footer">
									<a href="#">Forgot your password?</a>
								</div>
							</form>
						</div>
						<div class="card alt">
							<div class="toggle"></div>
							<h1 class="title">
								Register
								<div class="close"></div>
							</h1>

							<form method="POST"
								action="addDetails"
								id="ragisterform">

								<div class="input-container">
									<input type="text" id="Username" name="Username"
										required="required" /> <label for="Username">Name</label>
									<div class="bar"></div>
								</div>


								<div class="input-container">
									<input type="number" id="mob" name="mob" min="0"
										required="required" /> <label for="Username">Mobile
										Number</label>
									<div class="bar"></div>
								</div>

								<div class="input-container">
									<input type="text" id="email" name="email" required="required"
										onchange="emailv(this.value)" />
									<div class="bar"></div>

									<label for="Username">Email</label>
									<div class="bar"></div>
									<div class="erroremail"></div>
								</div>
								<div class="input-container">
									<input type="password" id="Password" name="Password"
										required="required" /> <label for="Password">Password</label>
									<div class="bar"></div>
								</div>
								<div class="input-container">
									<input type="password" id="RepeatPassword" required="required" />
									<label for="RepeatPassword">Repeat Password</label>
									<div class="bar"></div>
								</div>

								<div class="button-container">
									<button type="submit">
										<span>Next</span>
									</button>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>

	<script>
		function emailv(userid) {
			var electiontypea = $("#email").val();

			$.ajax({
				type : "POST",
				cache : false,
				url : "demoemail.php", /* The country id will be sent to this file */
				data : "email=" + electiontypea + "&action=electionyear",
				success : function(msg) {
					if (msg != '') {
						$(".erroremail").html(msg);
						$("#email1").val('');
					} else {
						$(".erroremail").html('');
						$("#email1").val(msg);
					}
				}
			});
		}

		$(document)
				.ready(
						function() {

							jQuery.validator
									.addMethod(
											"require_from_group",
											function(value, element, options) {
												var numberRequired = options[0];
												var selector = options[1];
												var fields = $(selector,
														element.form);
												var filled_fields = fields
														.filter(function() {
															// it's more clear to compare with empty string
															return $(this)
																	.val() != "";
														});
												var empty_fields = fields
														.not(filled_fields);
												// we will mark only first empty field as invalid
												if (filled_fields.length < numberRequired
														&& empty_fields[0] == element) {
													return false;
												}
												return true;
												// {0} below is the 0th item in the options field
											},
											jQuery
													.format("Please fill out at least {0} of these fields."));

							$('#contactformde').validate({ // initialize the plugin
								groups : {
									names : "mp mc"
								},
								rules : {
									mp : {
										require_from_group : [ 1, ".send" ]
									},
									mc : {
										require_from_group : [ 1, ".send" ]
									}
								}
							});

						});
	</script>
	<script src="js/jquery-ui.js"></script>
	<script type="text/javascript"
		src="js/jquery.validate.min.js">
		
	</script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/lightbox.js"></script>

	<script src="js/jquery.fancybox.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>

	<script type="text/javascript"
		src="js/jquery.mousewheel.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript"
		src="js/jquery.fancybox.pack.js"></script>
	<link rel="stylesheet" type="text/css"
		href="css/jquery.fancybox.css"
		media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css"
		href="css/jquery.fancybox-buttons.css" />
	<script type="text/javascript"
		src="js/jquery.fancybox-buttons.js"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css"
		href="css/jquery.fancybox-thumbs.css" />
	<script type="text/javascript"
		src="js/jquery.fancybox-thumbs.js"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript"
		src="js/jquery.fancybox-media.js"></script>
	<script type="text/javascript"
		src="js/jquery.carouFredSel.js">
		
	</script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var date = new Date();

							var months = [ "JAN", "FEB", "MAR", "APR", "MAY",
									"JUN", "JUL", "AUG", "SEP", "OCT", "NOV",
									"DEC" ];
							var val = date.getDate() + " "
									+ months[date.getMonth()] + " "
									+ date.getFullYear();
							$("#printDate").text(val);

							/*var time = dt.getHours() + ":" + dt.getMinutes();
							$("#printTime").text(time);*/

							var dt = new Date();
							var hours = date.getHours() > 12 ? date.getHours() - 12
									: date.getHours();
							var am_pm = date.getHours() >= 12 ? "PM" : "AM";
							hours = hours < 10 ? "0" + hours : hours;
							var minutes = date.getMinutes() < 10 ? "0"
									+ date.getMinutes() : date.getMinutes();

							var time = hours + ":" + minutes + ":" + am_pm;
							$("#printTime").text(time);

							var queryURL = "https://query.yahooapis.com/v1/public/yql?q=select%20item.condition%20from%20weather.forecast%20where%20woeid%20%3D%202487889&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys/";

							$
									.getJSON(
											queryURL,
											function(data) {

												var results = data.query.results
												var firstResult = results.channel.item.condition
												console.log(firstResult);

												var location = 'Unknown' // not returned in response
												var temp = firstResult.temp
												var text = firstResult.text

												$('#output').append(
														temp + '&#x2109;');

											})

						});
	</script>


	<script>
		$(function() {

			var availableTags = [ "Municipal Corporation Election ",
					"Rajya Sabha", "Assembly Election", "Lok Sabha",
					"Municipal Councils", "District Councils" ];
			$("#tags").autocomplete({
				source : availableTags

			});

			var availableTags2 = [ "AAP Party", "BJP",
					"Indian National Congress", "NCP Party", "CPI",
					"Bahujan Samaj Party", "All India Trinamool Congress",
					"Rashtrawadi Congress Party" ];
			$("#tags2").autocomplete({
				source : availableTags2
			});

			var availableTags3 = [ "Ahmednagar Municipal Corporation",
					"Akola Municipal Corporation",
					"Amravati Municipal Corporation",
					"Aurangabad Municipal Corporation",
					"Bhiwandi-Nizampur Municipal Corporation",
					"Chandrapur Municipal Corporation",
					"Dhule Municipal Corporation",
					"Kalyan-Dombivli Municipal Corporation",
					"Kolhapur Municipal Corporation",
					"Malegaon Municipal Corporation",
					"Mira-Bhayandar Municipal Corporation",
					"Nagpur Municipal Corporation",
					"Nanded-Waghala Municipal Corporation",
					"Nashik Municipal Corporation",
					"Panvel Municipal Corporation",
					"Parbhani Municipal Corporation",
					"Pimpri-Chinchwad Municipal Corporation",
					"Pune Municipal Corporation",
					"Solapur Municipal Corporation",
					"Thane Municipal Corporation",
					"Vasai-Virar City Municipal Corporation" ];
			$("#tags3").autocomplete({
				source : availableTags3
			});
			var availableTags4 = [ "Nana Kate" ];
			$("#tags4").autocomplete({
				source : availableTags4
			});
		});
	</script>

	<script type="text/javascript">
		/*************ticker**************/
		$(function() {
			var _scroll = {
				delay : 1000,
				easing : 'linear',
				items : 1,
				duration : 0.07,
				timeoutDuration : 0,
				pauseOnHover : 'immediate'
			};
			$('#ticker-1').carouFredSel({
				width : 1000,
				align : false,
				items : {
					width : 'variable',
					height : 35,
					visible : 2
				},
				scroll : _scroll
			});

			//	set carousels to be 100% wide
			$('.caroufredsel_wrapper').css('width', '100%');

		});

		$(document).ready(function() {
			$('.toggle').on('click', function() {
				$('.container1').stop().addClass('active');
			});

			$('.close').on('click', function() {
				$('.container1').stop().removeClass('active');
			});

		});
	</script>
	<script type="text/javascript"
		src="js/jquery.countdown.min.js">
		
	</script>
	<script type='text/javascript'>
		/* <![CDATA[ */
		var counterJSObject = {
			"count_day" : "Days",
			"count_hour" : "Hour",
			"count_minutes" : "Minutes",
			"count_second" : "Second"
		};
		/* ]]> */
	</script>
	<script>
		/* ======= Countdown ======= */
		(function() {
			$('[data-countdown]').each(
					function() {
						var $this = $(this), finalDate = $(this).data(
								'countdown');

						$this.countdown(finalDate, function(event) {
							$this.html(event.strftime(''
									+ '<li><span class="days">%D<span><p>'
									+ counterJSObject.count_day + '</p></li>'
									+ '<li><span class="hours">%H<span><p>'
									+ counterJSObject.count_hour + '</p></li>'
									+ '<li><span class="minutes">%M<span><p>'
									+ counterJSObject.count_minutes
									+ '</p></li>'
									+ '<li><span class="second">%S<span><p>'
									+ counterJSObject.count_second
									+ '</p></li>'));
						});
					});
		}());

		$(function() {
			$("[rel='tooltip']").tooltip();
		});
	</script>

	<script type="text/javascript">
		$(function() {
			$.ajax({
				type : "POST",
				cache : false,
				url : "http://www.risingelection.com/archivegetdata.php", /* The country id will be sent to this file */
				data : "action=election" + '',
				success : function(msg) {
					//alert (msg);
					$("#candidates").html("");
					$("#candidates").html(msg);
				}
			});

		});

		$('#year').on(
				'change',
				function() {

					var electiontypea = $("#select_city3 option:selected")
							.val();

					$.ajax({
						type : "POST",
						cache : false,
						url : "archivegetdata.php", /* The country id will be sent to this file */
						data : "electiontypeid=" + electiontypea + "&year="
								+ this.value + "&action=electionyear",
						success : function(msg) {
							//alert (msg);
							$("#candidates").html("");
							$("#candidates").html(msg);
						}
					});

				})

		$('#constituency').on('change', function() {
			var stateid = $("#stateselect option:selected").val();
			$.ajax({
				type : "POST",
				cache : false,
				url : "archivegetdata.php", /* The country id will be sent to this file */
				data : "constituency_id=" + stateid + "&action=constituency",
				success : function(msg) {
					//alert (msg);
					$("#areaselect").html(msg);
				}
			});

		})
		$('#stateselect').on('change', function() {
			var stateid = $("#stateselect option:selected").val();
			$.ajax({
				type : "POST",
				cache : false,
				url : "archivegetdata.php", /* The country id will be sent to this file */
				data : "state_id=" + stateid + "&action=state",
				success : function(msg) {
					//alert (msg);
					$("#constituency").html(msg);
				}
			});

		})

		$(document).ready(
				function() {
					$("#ragisterform").validate(
							{
								rules : {
									email1 : {
										required : true
									}

								},
								highlight : function(a) {
									$(a).closest(".form-group").removeClass(
											"success")
											.addClass("control-label")
								},

								success : function(a) {
									a.closest(".form-group").removeClass(
											"error").addClass("success")
								},
							})
				});
	</script>
	
	<!-- model popup script start -->
	
	<script>
// Get the modal
var modal = document.getElementById('modalLRForm');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
	
	<!-- model popup script end -->

	<script type="text/javascript">
		$('#select_city2').on('change', function() {
			// alert (this.value);
			// $('#select_city4').html('<option val="1">One</option>');
			$.ajax({
				type : "POST",
				cache : false,
				url : "../getdata.php", /* The country id will be sent to this file */
				data : "Cityid=" + this.value + "&action=areaccity",
				success : function(msg) {

					if (msg != '') {
						$("#select_city4").html(msg);
						$("#select_city4").show();
					} else {
						$("#select_city4").html(msg);
						$("#select_city4").hide();
						$("#select_city6").hide();
					}
				}
			});
		});

		$('#select_city4').on('change', function() {
			// alert (this.value);
			// $('#select_city4').html('<option val="1">One</option>');
			$.ajax({
				type : "POST",
				cache : false,
				url : "../getdata.php", /* The country id will be sent to this file */
				data : "Cityid=" + this.value + "&action=areaccityarea",
				success : function(msg) {
					//alert (msg);

					if (msg != '') {
						$("#select_city6").html(msg);
						$("#select_city6").show();
					} else {
						$("#select_city6").html(msg);
						$("#select_city6").hide();
					}
				}
			});
		});
	</script>
	<script type="text/javascript">
		$(function() {

			var Authorid = "";
			var cat_id = "";
			if (Authorid == '' && cat_id == '') {
				var url = 'pagination.php';
			} else {
				var url = '../pagination.php';
			}
			//alert(Authorid);
			$.ajax({

				type : "GET",
				cache : false,
				url : url,
				data : "actionfunction=showData&page=1&id=" + Authorid
						+ "&cat_id=" + cat_id,
				beforeSend : function() {
					$("#pagination").addClass("blur-filter");
				},
				complete : function() {
					$("#pagination").removeClass("blur-filter");
				},
				success : function(msg) {
					//	alert(msg);
					$("#pagination").html("");
					$("#pagination").html(msg);
				}
			});

			$('#pagination').on('click', '.page-numbers', function() {
				$page = $(this).attr('href');
				$pageind = $page.indexOf('page=');
				$page = $page.substring(($pageind + 5));
				if (Authorid == '') {
					var url = 'pagination.php';
				} else {
					var url = '../pagination.php';
				}
				$.ajax({
					url : url,
					type : "POST",
					data : "actionfunction=showData&page=" + $page + "",
					cache : false,
					beforeSend : function() {
						$("#pagination").addClass("blur-filter");
					},
					complete : function() {
						$("#pagination").removeClass("blur-filter");
					},
					success : function(msg) {
						//	alert(msg);
						$("#pagination").html("");
						$("#pagination").html(msg);
					}

				});
				$('html,body').animate({
					scrollTop : 0
				}, 100);
				return false;
			});
		});
	</script>
	<script type="text/javascript"
		src="js/jquery.carouFredSel.js"> </script>
	<script type="text/javascript">
$(function() {$('#carousel').carouFredSel({width: '100%',items: {visible: 3,start: -1},scroll: {items: 1,duration: 1000,timeoutDuration: 3000},prev: '#prev',next: '#next',pagination: {container: '#pager',deviation: 1}});});
/*************ticker**************/      $(function() {var _scroll = {delay: 1000,easing: 'linear',items: 1,duration: 0.07,
		timeoutDuration: 0,pauseOnHover: 'immediate'};

   $('#ticker-1').carouFredSel({width: 1000,align: false,items: {width: 'variable',height: 35,visible: 2},scroll: _scroll});
   				//	set carousels to be 100% wide				$('.caroufredsel_wrapper').css('width', '100%');			});
});

</script>
	<link rel="stylesheet" type="text/css"
		href="css/component.css" />
	<script src="js/modernizr.custom.js"></script>
	<script
		src="js/jquery.cbpFWSlider.min.js"></script>
	<script>    			$( function() {    				$( '#cbp-fwslider' ).cbpFWSlider();    			} );    		</script>
</body>
</html>
