#!/bin/sh

# initializing var
MYIP=`ifconfig eth0 | awk 'NR==2 {print $2}'`
MYIP2="s/xxxxxxxxx/$MYIP/g";

# Update Home Page
mkdir -p /home/panel/html/test/
cat > /home/panel/html/test/index.html <<-END
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Hiratechi VPN</title>
        <meta name="description" content="Use Hiratechi VPN for free!" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--Bootstrap 4-->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
        <!--icons-->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    </head>
    <body>
        <!--header-->
        <nav class="navbar navbar-expand-md navbar-dark fixed-top sticky-navigation">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="ion-grid icon-sm"></span>
            </button>
            <a class="navbar-brand hero-heading" href="#">Hiratechi VPN</a>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item mr-3">
                        <a class="nav-link page-scroll" href="#main">Home<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item mr-3">
                        <a class="nav-link page-scroll" href="#features">Features</a>
                    </li>
                    <li class="nav-item mr-3">
                        <a class="nav-link page-scroll" href="#configs">Configs</a>
                    </li>
                    <li class="nav-item mr-3">
                        <a class="nav-link page-scroll" href="#download">VPN App</a>
                    </li>
					<li class="nav-item mr-3">
                        <a class="nav-link page-scroll" href="#team">Our Team</a>
                    </li>
                    <li class="nav-item mr-3">
                        <a class="nav-link page-scroll" href="#links">Links</a>
                    </li>
                    <li class="nav-item mr-3">
                        <a class="nav-link page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
        </nav>

        <!--main section-->
        <section class="bg-texture hero" id="main">
            <div class="container">
                <div class="row d-md-flex brand">
                    <div class="col-md-6 hidden-sm-down wow fadeIn">
                        <img class="img-fluid mx-auto d-block" src="img/product.png"/>
                    </div>
                    <div class="col-md-6 col-sm-12 text-white wow fadeIn">
                        <h2 class="pt-4">Experience <b class="text-primary-light">Hiratechi VPN </b> for FREE</h2>
                        <p class="mt-5">
                            The best gets even better. With our swift and fastest low ping private server, you'll not being worried again with our vpn services.
                        </p>
                        <p class="mt-5">
                            <a href="#configs" class="btn btn-primary mr-2 mb-2 page-scroll">Try Now</a>
                            <a href="#download" class="btn btn-white mb-2 page-scroll">Download App</a>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!--features-->
        <section class="bg-light" id="features">
            <div class="container">
                <div class="row mb-3">
                    <div class="col-md-6 col-sm-8 mx-auto text-center wow fadeIn">
                        <h2 class="text-primary">Amazing Features of Hiratechi VPN</h2>
                        <p class="lead mt-4">
                            A plenty of awesome features to <br/>wow the users.
                        </p>
                    </div>
                </div>
                <div class="row mt-5 text-center">
                    <div class="col-md-4 wow fadeIn">
                        <div class="card">
                            <div class="card-body">
                                <div class="icon-box">
                                    <em class="ion-ios-game-controller-b-outline icon-md"></em>
                                </div>
                                <h6>Unlimited Gaming</h6>
                                <p>
                                    Low ping & Optimized server for your best unlimited gaming experience. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 wow fadeIn">
                        <div class="card">
                            <div class="card-body">
                                <div class="icon-box">
                                    <em class="ion-android-wifi icon-md"></em>
                                </div>
                                <h6>Cloudflare DNS</h6>
                                <p>
                                    With the best DNS installed in our server to keep your connection at stable, streaming faster, download accelerated, & uploading boosted. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 wow fadeIn">
                        <div class="card">
                            <div class="card-body">
                                <div class="icon-box">
                                    <em class="ion-ios-settings icon-md"></em>
                                </div>
                                <h6>Advanced Configs</h6>
                                <p>
                                    All our SSH/OVPN/DROPBEAR/SSL are highly configurable to meet your VPN experience & satisfaction. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 wow fadeIn">
                        <div class="card">
                            <div class="card-body">
                                <div class="icon-box">
                                    <em class="ion-ios-cloud-upload-outline icon-md"></em>
                                </div>
                                <h6>Unlimited Bandwidth</h6>
                                <p>
                                    No capping and you can download/stream/browse all what you want without limitations. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 wow fadeIn">
                        <div class="card">
                            <div class="card-body">
                                <div class="icon-box">
                                    <em class="ion-ios-locked-outline icon-md"></em>
                                </div>
                                <h6>Highly Secure</h6>
                                <p>
                                    Our server is from Digital Ocean, with anti-torrent & anti-ddos installed for our servers go for a longer last. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 wow fadeIn">
                        <div class="card">
                            <div class="card-body">
                                <div class="icon-box">
                                    <em class="ion-android-color-palette icon-md"></em>
                                </div>
                                <h6>More Features & Colors</h6>
                                <p>
                                    With more future plans coming to keep this server colored and beautiful. 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="bg-white p-0">
            <div class="container-fluid">
                <div class="row d-md-flex mt-5">
                    <div class="col-sm-6 p-0 wow fadeInLeft">
                        <img class="img-fluid" src="img/whyus.png" alt="Why we Choose us">
                    </div>
                    <div class="col-sm-6 pl-5 pr-5 pt-5 pb-4 wow fadeInRight">
                        <h3><a href="#"></a></h3>
                        <p class="lead pt-4">VPN (virtual private network) is a technology that could make internet access you comfortable with eliminating prevention in accessing all sites. Giving new anonymous identity, disguise your original location and encrypts all traffic, such things make all data access and secure internet. Internet service provider or network operator, even the government, will not be able to check or filter your activity on the web.</p>
						Why you choose Hiratechi VPN?
                        <ul class="pt-4 pb-3 list-default">
                            <li><font color="green"><b>FREE at all</b></font></li>
                            <li>Anonymous</li>
                            <li>Safe</li>
                            <li>Fast</li>
                            <li>Low Ping</li>
                            <li>Smooth</li>
                            <li>The best of the BEST!</li>
                        </ul>
                        <a href="#configs" class="btn btn-primary mr-2 page-scroll">Get Started with Hiratechi VPN</a>
                    </div>
                </div>
            </div>
        </section>

        <!--pricing-->
        <section class="bg-light" id="configs">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3 col-sm-8 offset-sm-2 col-xs-12 text-center">
                        <h2 class="text-primary">Configs</h2>
                        <p class="lead pt-3">
                            Our OpenVPN configs.
                        </p>
                    </div>
                </div>
                <div class="row d-md-flex mt-4 text-center">
                    <div class="col-sm-4 mt-4 wow fadeIn">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title pt-4 text-orange">OpenVPN</h5>
                                <h3 class="card-title text-primary pt-4">TCP</h3>
                                <p class="card-text text-muted pb-3 border-bottom">Default Config</p>
                                <ul class="list-unstyled pricing-list">
                                    <li>Port: 1153</li>
                                    <li>TCP Connection</li>
                                    <li>Stable</li>
                                    <li>Fast &amp; Smooth</li>
                                </ul>
                                <a href="http://$MYIP/client.ovpn" class="btn btn-primary btn-radius">Download</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 mt-0 wow fadeIn">
                        <div class="card pt-4 pb-4">
                            <div class="card-body">
                                <h5 class="card-title pt-4 text-orange">OpenVPN</h5>
                                <h3 class="card-title text-primary pt-4"><sup></sup>SSL</h3>
                                <p class="card-text text-muted pb-3 border-bottom">Default config</p>
                                <ul class="list-unstyled pricing-list">
                                    <li>Port: 443</li>
                                    <li>OpenVPN over SSL</li>
                                    <li>Stable</li>
                                    <li>Fast &amp; Smooth</li>
                                </ul>
                                <a href="http://$MYIP/clientssl.ovpn" class="btn btn-primary btn-radius">Download</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 mt-4 wow fadeIn">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title pt-4 text-orange">OpenVPN Package <small class="badge bg-primary small-xs">HOT</small></h5>
                                <h3 class="card-title text-primary pt-4"><sup></sup>Combo</h3>
                                <p class="card-text text-muted pb-3 border-bottom">zip packed</p>
                                <ul class="list-unstyled pricing-list">
                                    <li>TCP &amp; SSL</li>
                                    <li>With stunnel.conf</li>
                                    <li>For modem used</li>
                                    <li>Zip packed</li>
                                </ul>
                                <a href="http://$MYIP/openvpn.zip" class="btn btn-primary btn-radius">Download</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--download-->
        <section class="bg-orange pt-0" id="download">
            <div class="container">
                <div class="row d-md-flex text-center wow fadeIn">
                    <div class="col-md-6 offset-md-3 col-sm-10 offset-sm-1 col-xs-12">
                        <h5 class="text-primary">Download Our Mobile App</h5>
                        <p class="mt-4">
                            Download our provided apps for free for your android phone & pc.
                            
                        <p class="mt-5">
                            RADZ VPN<br><a href="https://play.google.com/store/apps/details?id=www.radzvpn.ml" class="mr-2" target="_blank"><img src="img/google-play.png" class="store-img"/></a><br>
                            WENZ VPN<br><a href="https://play.google.com/store/apps/details?id=wenz.soft.dev.wenzvpn" class="mr-2" target="_blank"><img src="img/google-play.png" class="store-img"/></a><br>
                            Configs PH<br><a href="https://play.google.com/store/apps/details?id=fb.com.nicanor03" class="mr-2" target="_blank"><img src="img/google-play.png" class="store-img"/></a><br>
							<br>FOR PC<br><a href="https://www.phcorner.net/threads/685100/" target="_blank">Uni OVPN (&#169; JustPlaying)</a>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!--team-->
        <section class="bg-white" id="team">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-8 mx-auto text-center">
                        <h2 class="text-primary">Our Team</h2>
                        <p class="lead pt-3">
                            Meet our awesome team.
                        </p>
                    </div>
                </div>
                <div class="row d-md-flex mt-5 text-center">
                    <div class="team col-sm-3 mt-2 wow fadeInLeft">
                        <img src="img/team-1.gif" alt="Owner" class="img-team img-fluid rounded-circle"/>
                        <h5>Hiratechi</h5>
                        <p>Developer, Owner</p>
                    </div>
                    <div class="team col-sm-3 mt-2 wow fadeIn">
                        <img src="img/team-2.jpg" alt="Team Epiphany" class="img-team img-fluid rounded-circle"/>
                        <h5>Team Epiphany</h5>
                        <p>Our Official Group Name</p>
                    </div>
                    <div class="team col-sm-3 mt-2 wow fadeIn">
                        <img src="img/team-3.jpg" alt="Team RADZVPN" class="img-team img-fluid rounded-circle"/>
                        <h5>RADZVPN TEAM</h5>
                        <p>Partner Team</p>
                    </div>
                    <div class="team col-sm-3 mt-2 wow fadeInRight">
                        <img src="img/team-4.jpg" alt="Team Unstoppable" class="img-team img-fluid rounded-circle"/>
                        <h5>Team Unstoppable</h5>
                        <p>Partner Team</p>
                    </div>
                </div>
            </div>
        </section>

        <!--blog-->
        <section class="bg-light" id="links">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3 col-sm-8 offset-sm-2 col-xs-12 text-center">
                        <h2 class="text-primary">Links</h2>
                        <p class="lead pt-3">
                            Our recommended and partner sites.
                        </p>
                    </div>
                </div>
                <div class="row d-md-flex mt-5">
                    <div class="col-sm-4 mt-2 wow fadeIn">
                        <div class="card">
                            <img class="card-img-top" src="img/pt.png" alt="PinoyThread">
                            <div class="card-body">
                                <p class="card-text text-muted small-xl">
                                    <em class="ion-ios-calendar-outline"></em>&nbsp;&nbsp;
                                    <em class="ion-ios-person-outline"></em>  &nbsp;&nbsp;
                                    <em class="ion-ios-time-outline"></em>
                                </p>
                                <h5 class="card-title"><a href="https://www.pinoythread.com" target="_blank">Join PinoyThread Forum!</a></h5>
                                <p class="card-text">Welcome to PinoyThread. Come and join discuss about the pinoy cyber world.<br>FREE VPNs<br>Giveaways<br>Droplets<br>more...</p>
                            </div>
                            <div class="card-body text-right">
                                <a href="https://www.pinoythread.com" class="card-link" target="_blank"><strong>Join now</strong></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 mt-2 wow fadeIn">
                        <div class="card">
                            <img class="card-img-top" src="img/radz.png" alt="RADZ VPN">
                            <div class="card-body">
                                <p class="card-text text-muted small-xl">
                                    <em class="ion-ios-calendar-outline"></em> &nbsp;&nbsp;
                                    <em class="ion-ios-person-outline"></em> &nbsp;&nbsp;
                                    <em class="ion-ios-time-outline"></em>
                                </p>
                                <h5 class="card-title"><a href="https://radzvpn.ml/" target="_blank">Finally! RADZ VPN</a></h5>
                                <p class="card-text">New Web Design<br>
								Can create up to 50 accounts every server per day<br>
								3 VIP Fast Servers Available<br>
								Fast and Easy to create account<br>
								Customer Service Chat Box Plugins<br>
								You can able to check your account info</p>
                            </div>
                            <div class="card-body text-right">
                                <a href="https://radzvpn.ml/" class="card-link"target="_blank"><strong>Visit now</strong></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 mt-2 wow fadeIn">
                        <div class="card">
                            <img class="card-img-top" src="img/te.jpg" alt="Our Discord server">
                            <div class="card-body">
                                <p class="card-text text-muted small-xl">
                                    <em class="ion-ios-calendar-outline"></em>&nbsp;&nbsp;
                                    <em class="ion-ios-person-outline"></em> &nbsp;&nbsp;
                                    <em class="ion-ios-time-outline"></em>
                                </p>
                                <h5 class="card-title"><a href="https://discord.gg/Rv3hyST" target="_blank">The TEAM Epiphany</a></h5>
                                <p class="card-text"><b>TEAM Epiphany<b> is now live on Discord with...<br>
								VPN Scripts<br>
								Daily Giveaways<br>
								Friendly members<br>
								VPN Configs<br>
								Source Codes<br>
								Bins & VPS<br>
								A tons of richness of features<br>
								that you can't find here!</p>
                            </div>
                            <div class="card-body text-right">
                                <a href="https://discord.gg/Rv3hyST" class="card-link" target="_blank"><strong>Connect to them</strong></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--contact-->
        <section class="bg-texture-collage p-0" id="contact">
            <div class="container">
                <div class="row d-md-flex text-white text-center wow fadeIn">
                    <div class="col-sm-4 p-5">
                        <p><em class="ion-ios-telephone-outline icon-md"></em></p>
                        <p class="lead"><a href="https://discord.gg/Rv3hyST" target="_blank"><font color="#0000EE"><blink>Discord</blink></font></a></p>
                    </div>
                    <div class="col-sm-4 p-5">
                        <p><em class="ion-ios-email-outline icon-md"></em></p>
                        <p class="lead">hiratechi@team-epiphany.com</p>
                    </div>
                    <div class="col-sm-4 p-5">
                        <p><em class="ion-ios-location-outline icon-md"></em></p>
                        <p class="lead">Manila, PH</p>
                    </div>
                </div>
            </div>
        </section>

        <!--footer-->
        <section class="bg-footer" id="connect">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3 col-sm-8 offset-sm-2 col-xs-12 text-center wow fadeIn">
                        <h1>HIRATECHI VPN</h1>
                        <p class="mt-4">
                            <a href="https://discord.gg/Rv3hyST" target="_blank"><img src="img/discord.png" alt="Our Discord server"/></a>   
                            <a href="https://www.facebook.com/RADZ-VPN-260317881583057" target="_blank"><img src="img/facebook.png" alt="Our Facebook"/></a>
                           
                        </p>
                        <p class="pt-2 text-muted">
                            &copy; 2019 <a href="http://www.phcorner.net/members/446411/" target="_blank">Hiratechi</a>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
END

cd /home/panel/html/test
wget "https://github.com/shadow046/openvpn-monitoring/raw/master/homepage.zip"
unzip homepage.zip
clear
