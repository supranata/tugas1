<!DOCTYPE html>
<!--
Template Name: Preevent
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html>
<head>
<title>SUPRACELL</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->

<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/01.png');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
     <div class="ga">
     <img src="images/logoo.png" alt=""></div>
      <div id="logo" class="fl_left">
        <h1><a href="index.html">SUPRA CELL</a></h1>
      </div>
      <!-- ################################################################################################ -->
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li class="active"><a href="index.html">Home</a></li>
          <li><a class="drop" href="#">Shop</a>
            <ul>
              <li><a href="#">Handphone</a>
               <ul>
                  <li><a href="pages/handphonebaru.html">New</a></li>
        
                </ul>
              </li>
              <li><a href="#">Harga Kartu</a>
              <ul>
              	<li><a href="pages/perdana.html">Perdana</a></li>
                <li><a href="pages/paket.php">Paket</a></li>
                </ul>
              		
              </li>
            </ul>
          </li>
          <li><a class="drop" href="#">Services</a>
            <ul>
              <li><a href="pages/servicehp.php">Handphone</a></li>
              
              <li><a href="pages/servicelaptop.php">Laptop</a></li>
            </ul>
          </li>
          <li><a href="pages/aboutus.html">About Us</a></li>
          <li><a href="pages/contact.html">Contact</a></li>
       
      
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
  <!-- ################################################################################################ -->
  <article id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h2 class="heading">SUPRA CELL</h2>
    <div class="txtwrap">
      <h3>Jl. Hamparan Perak Pulo Agas Kecamatan Hamparan Perak Kabupaten Deli Serdang</h3>
      
    </div>
    <!-- ################################################################################################ -->
  </article>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sectiontitle center">
      <h6 class="heading">Welcome To Website SUPRA CELL</h6>
      <p>Thank you for visiting our website</p>
     <br>
      <h1>
        <div align="center"><a href="input.php" class="feature-content-link red-btn">TAMBAH PRODUK</a></div>
      </h1></br>
      
       
      
    
						
     <p>
      <?php

										require "config.php";
                						$sql="Select * from tblproduk";
					                    $result=$mysqli->query($sql);
					                    $i=1;
					                    while($row=$result->fetch_assoc()):
					                    ?>
	  <div class="product">
											<div class="product-img">
                                           
												<img src="<?php echo"images/".$row['foto'];?>" width="100px">
												<div class="product-label">
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<h3 class="product-name"><a href="#"><?php echo $row['nama'];?></a></h3>
												<br><h4 class="product-price">Rp. <?php echo $row['harga'];?> </h4></br>
                                                <br><div align="center"><a href="#" class="feature-content-link red-btn">BELI</a></div></br>
                                               
												<div class="product-btns" align="center">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart" align="center">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
											</div>
                                             <?php endwhile; ?>
										</div>
										 
										<!-- /product -->
      
     </p>
    </div>
    </div></div>
    <ul class="nospace group services">
      <li class="one_third first">
        <article><i class="fa fa-clock-o"></i>
          <h6 class="heading">Profil</h6>
          <p>Supra Ponsel merupakan salah satu toko phone cell yang menawarkan [&hellip;]</p>
          <footer><a class="btn" href="pages/aboutus.html">Read More</a></footer>
        </article>
      </li>
      <li class="one_third">
        <article><i class="fa fa-clock-o"></i>
          <h6 class="heading">Visi Misi</h6>
          <p>Visi Supra Ponsel adalah menjadi Toko Phone Cell dengan pelayanan terbaik. Untuk mencapai visi ini [&hellip;]</p>
          <footer><a class="btn" href="pages/aboutus.html">Read More</a></footer>
        </article>
      </li>
      <li class="one_third">
        <article><i class="fa fa-clock-o"></i>
          <h6 class="heading">Pelayanan</h6>
          <p>Menghadirkan pelayanan dengan sistem yang unggul bagi setiap konsumen kami[&hellip;]</p>
          <footer><a class="btn" href="pages/aboutus.html">Read More</a></footer>
        </article>
      </li>
    </ul>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

    <!-- ################################################################################################ -->
    <div class="clear"></div>
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <!--<div class="sectiontitle center">
      <h6 class="heading">Interdum dapibus quisque</h6>
      <p>Posuere odio mi eget suscipit odio aliquet quis nulla vehicula consectetur purus</p>
    </div>
    <div class="group element team btmspace-80">
      <article class="one_quarter first"><img src="images/demo/320x320.png" alt="">
        <div class="txtwrap">
          <h6 class="heading">A Smith</h6>
          <em>Consectetur gravida</em>
          <footer><a href="#">Full Profile</a></footer>
        </div>
      </article>
      <article class="one_quarter"><img src="images/demo/320x320.png" alt="">
        <div class="txtwrap">
          <h6 class="heading">B Smith</h6>
          <em>Lorem laoreet vitae</em>
          <footer><a href="#">Full Profile</a></footer>
        </div>
      </article>
      <article class="one_quarter"><img src="images/demo/320x320.png" alt="">
        <div class="txtwrap">
          <h6 class="heading">C Smith</h6>
          <em>Phasellus ac nisi</em>
          <footer><a href="#">Full Profile</a></footer>
        </div>
      </article>
      <article class="one_quarter"><img src="images/demo/320x320.png" alt="">
        <div class="txtwrap">
          <h6 class="heading">D Smith</h6>
          <em>Gravida ultrices sapien</em>
          <footer><a href="#">Full Profile</a></footer>
        </div>
      </article>
    </div>
    
    <!-- ################################################################################################ -->
  </section>
</div>
<!-- ################################################################################################ -->

<div class="wrapper row4 bgded overlay" style="background-image:url('images/demo/backgrounds/04.png');">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    
    <div class="one_quarter">
      <p class="heading">Our Contact:</p>
      <ul class="nospace linklist contact">
        <li><i class="fa fa-map-marker"></i>
          <address>
          Jl. Hamparan Perak Pulo Agas Kecamatan Hamparan Perak Kabupaten Deli Serdang</address>
        </li>
        <li><i class="fa fa-phone"></i> 085760550100<br>
          085373348365</li>
        <li><i class="fa fa-fax"></i>(061) 22336509 </li>
        <li><i class="fa fa-envelope-o"></i> supra.ponsel@gmail.com</li>
      </ul>
    </div>
    
     <div class="gam">
     <img src="images/ako.jpg" alt=""></div>
    
    <!-- ################################################################################################ -->
  </footer>
</div>
