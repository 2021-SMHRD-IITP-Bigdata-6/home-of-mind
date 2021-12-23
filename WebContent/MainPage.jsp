<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="description"
	content="A free html template with Sketch design made with Bootstrap">
<meta name="keywords"
	content="free html template, bootstrap, ui kit, sass" />
<meta name="author" content="Codrops" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon generated by http://realfavicongenerator.net/ -->
<link rel="apple-touch-icon" sizes="57x57"
	href="img/favicon/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="img/favicon/apple-touch-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="img/favicon/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="img/favicon/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="img/favicon/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="img/favicon/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="img/favicon/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="img/favicon/apple-touch-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="img/favicon/apple-touch-icon-180x180.png">
<link rel="icon" type="image/png" href="img/favicon/favicon-32x32.png"
	sizes="32x32">
<link rel="icon" type="image/png" href="img/favicon/favicon-194x194.png"
	sizes="194x194">
<link rel="icon" type="image/png" href="img/favicon/favicon-96x96.png"
	sizes="96x96">
<link rel="icon" type="image/png"
	href="img/favicon/android-chrome-192x192.png" sizes="192x192">
<link rel="icon" type="image/png" href="img/favicon/favicon-16x16.png"
	sizes="16x16">
<link rel="manifest" href="img/favicon/manifest.json">
<link rel="mask-icon" href="img/favicon/safari-pinned-tab.svg"
	color="#5bbad5">
<link rel="shortcut icon" href="img/favicon/favicon.ico">
<meta name="msapplication-TileColor" content="#66e0e5">
<meta name="msapplication-TileImage"
	content="img/favicon/mstile-144x144.png">
<meta name="msapplication-config"
	content="img/favicon/browserconfig.xml">
<meta name="theme-color" content="#ffffff">
<!-- end favicon links -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/normalize.min.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/flickity.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery.mb.YTPlayer/3.3.9/css/jquery.mb.YTPlayer.min.css">
<script src="//code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mb.YTPlayer/3.3.9/jquery.mb.YTPlayer.min.js"></script>

	<style>
		#Live {
  			z-index: -1;
		}
			
		#background {
	  		z-index: -1;
		}
	</style>
	
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="header-nav-wrapper">
				<div class="logo">
					<a href="/index.html"><img src="img/synthetica-logo.png"
						alt="Synthetica Freebie"></a>
				</div>
				<div class="primary-nav-wrapper">
					<nav>
						<ul class="primary-nav">
							<li><a href="#intro">The collective</a></li>
							<li><a href="#team">The crew</a></li>
							<li><a href="#articles">Articles</a></li>
							<li><a href="#freebies">Freebies</a></li>
						</ul>
					</nav>
					<div class="secondary-nav-wrapper">
						<ul class="secondary-nav">
							<li class="subscribe"><a href="#get-started">Subscribe</a></li>
							<li class="search"><a href="#search" class="show-search"><li class="fa fa-search"></i></a></li>
						</ul>
					</div>
					<div class="search-wrapper">
						<ul class="search">
							<li><input type="text" id="search-input"
								placeholder="Start typing then hit enter to search"></li>
							<li><a href="#" class="hide-search"><i
									class="fa fa-close"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="navicon">
					<a class="nav-toggle" href="#"><span></span></a>
				</div>
			</div>
		</div>
	</div>
	<header class="hero">
		<div class="carousel js-flickity">
			<script type="text/javascript">
				jQuery( function() {
					  jQuery( '#background' ).YTPlayer();
				});
				
				jQuery( function() {
					  jQuery( '#Live' ).YTPlayer();
				});
			</script>
			<div id="Live" class="player" data-property="{
			  videoURL: 'https://youtu.be/xv3XNJGLoU8',
			  mute: true,
			  showControls: false,
			  useOnMobile: true,
			  quality: 'highres',
			  containment: 'self',
			  loop: true,
			  autoPlay: true,
			  stopMovieOnBlur: false,
			  startAt: 0,
			  opacity: 1
			}">
			</div>
				<div class="hero-bg">
					<div class="container">
						<div class="row">
							<div class="col-md-12 text-center">
								<h1 class="wp1">Introducing, Synthetica. A blissful
									HTML5/CSS3 Template, free forever.</h1>
								<a href="#intro" class="btn primary wp2">Learn more</a>
							</div>
						</div>
						<div class="row">
							<div class="col-md-8 col-md-offset-2 hero-intro-text wp3">
								<p>
									Synthetica is a <span class="bold italic">FREE</span>,
									HTML5/CSS3 template available for download exclusively via
									Codrops.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-cell"
				style="background-image: url(img/hero-bg-02.jpg);">
				<div class="hero-bg">
					<div class="container">
						<div class="row">
							<div class="col-md-12 text-center">
								<h1 class="wp1">Get a head start, with the Synthetica
									Sketch file.</h1>
								<a href="http://tympanus.net/codrops/?p=26570"
									class="btn primary wp2">Download Sketch File</a>
							</div>
						</div>
						<div class="row">
							<div class="col-md-8 col-md-offset-2 hero-intro-text wp3">
								<p>Create your landing page in minutes with Synthetica's
									Sketch style guide.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-cell"
				style="background-image: url(img/hero-bg-03.jpg);">
				<div class="hero-bg">
					<div class="container">
						<div class="row">
							<div class="col-md-12 text-center">
								<h1 class="wp1">Download Synthetica today, it's free
									forever.</h1>
								<a href="http://tympanus.net/codrops/?p=26570"
									class="btn primary wp2">Download Template</a>
							</div>
						</div>
						<div class="row">
							<div class="col-md-8 col-md-offset-2 hero-intro-text wp3">
								<p>Available exclusively from Codrops.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class='mouse-container'>
			<a href="#intro">
				<div class='mouse'>
					<span class='scroll-down'></span>
				</div>
			</a>
		</div>
	</header>
</body>
</html>