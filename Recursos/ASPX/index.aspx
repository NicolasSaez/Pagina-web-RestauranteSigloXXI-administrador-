<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PaginaPortafolioWeb.Recursos.ASPX.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0"/>

    <!-- Site Metas -->
    
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png"/>

    <!-- Bootstrap CSS -->
    <link href="../CSS2/bootstrap.min.css" rel="stylesheet" />
    <!-- Site CSS -->
    <link href="../CSS2/style.css" rel="stylesheet" />
    <!-- Responsive CSS -->
    <link href="../CSS2/responsive.css" rel="stylesheet" />
    <!-- color -->
    

    <!-- Modernizer -->
    <script src="../js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
    <div id="site-header">
        <header id="header" class="header-block-top">
            <div class="container">
                <div class="row">
                    <div class="main-menu">
                        <!-- navbar -->
                        <nav class="navbar navbar-default" id="mainNav">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <div class="logo">
                                    <a class="navbar-brand js-scroll-trigger logo-header" href="#">
                                        <img src="images/logo.png" alt="">
                                    </a>
                                </div>
                            </div>
                            <div id="navbar" class="navbar-collapse collapse">
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="active"><a href="#banner">Home</a></li>
                                    <li><a href="#about">Sobre nosotros</a></li>
                                    <li><a href="#menu">Menu</a></li>
                                    <li><a href="#our_team">Equipo</a></li>
                                    <li><a href="#gallery">Galeria</a></li>
                                    <li><a href="#blog">Precios</a></li>
                                    <li><a href="#reservation">Reservacion</a></li>
                                    <li><a href="#footer">Contactanos</a></li>
                                    <li><a href="Login.aspx">Iniciar sesion</a></li>
                                </ul>
                            </div>
                            <!-- end nav-collapse -->
                        </nav>
                        <!-- end navbar -->
                    </div>
                </div>
                <!-- end row -->
            </div>
            <!-- end container-fluid -->
        </header>
        <!-- end header -->
    </div>
	<!-- end site-header -->
	
    <div id="banner" class="banner full-screen-mode parallax">
        <div class="container pr">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="banner-static">
                    <div class="banner-text">
                        <div class="banner-cell">
                            <h1>Ven con tus  <span class="typer" id="some-id" data-delay="200" data-delim=":" data-words="Amigos:Familiares" data-colors="red"></span><span class="cursor" data-cursorDisplay="_" data-owner="some-id"></span></h1>
                           <p>Bienvenidos a restaurante Siglo XXI</p>
                            <div class="book-btn">
                                <a href="#reservation" class="table-btn hvr-underline-from-center">Reservar mi mesa</a>
                            </div>
                            <a href="#about">
                                <div class="mouse"></div>
                            </a>
                        </div>
                        <!-- end banner-cell -->
                    </div>
                    <!-- end banner-text -->
                </div>
                <!-- end banner-static -->
            </div>
            <!-- end col -->
        </div>
        <!-- end container -->
    </div>
    <!-- end banner -->

    <div id="about" class="about-main pad-top-100 pad-bottom-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <h2 class="block-title"> Sobre nosotros </h2>
                          <h3>Satisfacer tu paladar con nuestras clasicas recetas que cautivan a todos!</h3>
                        <p> Proporcionar una experiencia inolvidable, en conjunto con profesionales, que, con dedicacion y pasion logran entregar un sabor para tu gusto. Gracias a nuestros 
                            50 años en el rubro, podemos ortorgar una garantia de un buen plato junto a tus seres queridos.
                        </p>

                    </div>
                </div>
                <!-- end col -->
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <div class="about-images">
                            <img class="about-main" src="../images/about-main.jpg" alt="About Main Image"/>
                            <img class="about-inset" src="../images/about-inset.jpg" alt="About Inset Image"/>
                        </div>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>

    <div class="special-menu pad-top-100 parallax">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <h2 class="block-title color-white text-center"> Especial del dia </h2>
                    </div>
                    <div class="special-box">
                        <div id="owl-demo">
                            <div class="item item-type-zoom">
                                <a href="#" class="item-hover">
                                    <div class="item-info">
                                        <div class="headline">
                                           BISTEC DE SALMON EN TROZOS
                                            <div class="line"></div>
                                            <div class="dit-line">Salmon asado, cortado en trozos, junto con palta y un acompañamiento. Ideal para los amantes de los platos que nos entrega el mar</div>
                                        </div>
                                    </div>
                                </a>
                                <div class="item-img">
                                    <img src="../images/special-menu-1.jpg" alt="sp-menu"/>
                                </div>
                            </div>
                            <div class="item item-type-zoom">
                                <a href="#" class="item-hover">
                                    <div class="item-info">
                                        <div class="headline">
                                            PIZZA ITALIANA
                                            <div class="line"></div>
                                            <div class="dit-line">Con una variedad de ingredientes, totalmente frescos y del huerto, se busca satisfacer las necesidades de los clientes... especialmente,
                                                los que prefieren no comer animales
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <div class="item-img">
                                    <img src="../IMAGES/special-menu-2.jpg" alt="sp-menu"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end special-box -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end special-menu -->>

    <div id="menu" class="menu-main pad-top-100 pad-bottom-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <h2 class="block-title text-center">
						Menu 	
					</h2>
                    </div>
                    <div class="tab-menu">
                        <div class="slider slider-nav">
                            <div class="tab-title-menu">
                                <h2>Entrada</h2>
                                <p> <i class="flaticon-canape"></i> </p>
                            </div>
                            <div class="tab-title-menu">
                                <h2>Comida principal</h2>
                                <p> <i class="flaticon-dinner"></i> </p>
                            </div>
                            <div class="tab-title-menu">
                                <h2>Postres</h2>
                                <p> <i class="flaticon-desert"></i> </p>
                            </div>
                            <div class="tab-title-menu">
                                <h2>Bebidas</h2>
                                <p> <i class="flaticon-coffee"></i> </p>
                            </div>
                        </div>
                        <div class="slider slider-single">
                            <div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <img src="../IMAGES/menu-item-thumbnail-01.jpg" alt="" class="img-responsive">
                                        <div>
                                            <h3>Pan de ajo</h3>
                                            <p>
                                                Pan amasado, con la variedad de ajo negro, blanco y morado, para obtener mayor concentracion del sabor proveniente de la solicitada especie
                                            </p>
                                        </div>                                        
                                    </div>
                                </div>
                                <!-- end col -->
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <img src="../IMAGES/menu-item-thumbnail-02.jpg" alt="" class="img-responsive"/>
                                        <div>
                                            <h3>Ensalada cesar</h3>
                                            <p>
                                                Clasica ensalada de lechuga romana y croutons, con jugo de limon, aceite de oliva, huevo, ajo, mostaza de Dijon, queso parmecano, pimienta negra
                                                y salsda worcestershire (preparacion con toque del local!)
                                            </p>
                                        </div>                                        
                                    </div>
                                </div>
                                <!-- end col -->
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <img src="../IMAGES/menu-item-thumbnail-03.jpg" alt="" class="img-responsive"/>
                                        <div>
                                            <h3>Alitas de pollo</h3>
                                            <p>
                                               Ideal para personas amante de las carnes blancas, preparacion de las clasicas alitas de pollo, con un salsa preparada en el local.
                                            </p>
                                        </div>                                        
                                    </div>
                                </div>
                                <!-- end col -->
                            </div>
                            <div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <img src="../IMAGES/menu-item-thumbnail-04.jpg" alt="" class="img-responsive"/>
                                        <div>
                                            <h3>Pizza Vegetariana</h3>
                                            <p>
                                                Plato con especial dedicacion para quienes llevan un estilo de vida diferente a nuestra cultura clasica,
                                                donde solo obtendra verduras frescas proveniente de nuestros huertos
                                            </p>
                                        </div>                                        
                                    </div>
                                </div>
                                <!-- end col -->
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <img src="../IMAGES/menu-item-thumbnail-05.jpg" alt="" class="img-responsive"/>
                                        <div>
                                            <h3>Guiso de Carne</h3>
                                            <p>
                                                Preparacion casera, ideal para los amantes de las carnes, ya que con este plato, podras disgustar una gran variedad de carnes premium que ofrece el local
                                            </p>
                                        </div>                                       
                                    </div>
                                </div>
                                <!-- end col -->
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <img src="../IMAGES/menu-item-thumbnail-06.jpg" alt="" class="img-responsive"/>
                                        <div>
                                            <h3>Albondigas picantes</h3>
                                            <p>
                                               Ideal para los amantes de lo picante y con un buen paladar, quienes desean experimentar un sabor intenso
                                            </p>
                                        </div>                                        
                                    </div>
                                </div>
                                <!-- end col -->
                            </div>
                            <div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <img src="../IMAGES/menu-item-thumbnail-07.jpg" alt="" class="img-responsive"/>
                                        <div>
                                            <h3>Torta de Chocolate</h3>
                                            <p>
                                                Un toque dulce para finalizar la degustacion y que mejor que un trozo de una torta de chocolate, para todos aquellos amantes de los sabores dulces.
                                            </p>
                                        </div>                                        
                                    </div>
                                </div>
                                <!-- end col -->
                            </div>
                            <div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <img src="../IMAGES/menu-item-thumbnail-10.jpg" alt="" class="img-responsive"/>
                                        <div>
                                            <h3>Vinos</h3>
                                            <p>
                                               Gran variedad de vinos, todos directamente desde las viñas chilenas y francesas, todas estas opciones son vinos de reserva.
                                            </p>
                                        </div>                                        
                                    </div>
                                </div>
                                <!-- end col -->
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <img src="../IMAGES/menu-item-thumbnail-09.jpg" alt="" class="img-responsive"/>
                                        <div>
                                            <h3>Cerveza</h3>
                                            <p>
                                               Caceras, artesanales, o las clasicas marcas de cervezas, puedes encontrar en nuestro local.
                                            </p>
                                        </div>                                        
                                    </div>
                                </div>
                                <!-- end col -->
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <img src="../IMAGES/menu-item-thumbnail-08.jpg" alt="" class="img-responsive"/>
                                        <div>
                                            <h3>Cafe</h3>
                                            <p>
                                                Cafe en grano, excelente opcion como bajativo de lo que se consumio durante la velada.
                                            </p>
                                        </div>                                        
                                    </div>
                                </div>
                                <!-- end col -->
                            </div>
                        </div>
                    </div>
                    <!-- end tab-menu -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end menu -->

    <div id="our_team" class="team-main pad-top-100 pad-bottom-100 parallax">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <h2 class="block-title text-center">
						Personal		
					</h2>
                       <p class="title-caption text-center">Encargados de areas</p>
                    </div>
                    <div class="team-box">

                        <div class="row">
                            <div class="col-md-4 col-sm-6">
                                <div class="sf-team">
                                    <div class="thumb">
                                        <a href="#"><img src="../images/staff-01.jpg" alt=""></a>
                                    </div>
                                    <div class="text-col">
                                        <h3>Juan Doggett</h3>
                                        <p>Encargado de la cocina, aquel ambiente en el cual mejor se desenvuelve. Juan ha trabajo junto a nosotros durante los ultimos 20 años, por lo cual, conoce a la perfeccion
                                            las recetas y cada uno de sus ingredientes.
                                        </p>
                                        <ul class="team-social">
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-md-4 col-sm-6">
                                <div class="sf-team">
                                    <div class="thumb">
                                        <a href="#"><img src="../images/staff-02.jpg" alt=""></a>
                                    </div>
                                    <div class="text-col">
                                        <h3>Francisco Spender</h3>
                                        <p>Con una gran lado paternal, su lado filantropo muy desarrollado, junto con querer un bien comun para todos, Fracisco es el encargado de los garzones que trabajan el local
                                            quienes son las primera cara de nuestro restaurante.
                                        </p>
                                        <ul class="team-social">
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-md-4 col-sm-6">
                                <div class="sf-team">
                                    <div class="thumb">
                                        <a href="#"><img src="../images/staff-03.jpg" alt=""></a>
                                    </div>
                                    <div class="text-col">
                                        <h3>Monica Reyes</h3>
                                        <p>La recepcion es de suma importancia, ya que es con quien se comunica los clientes en primera instancia cuando ingresan al local, tambien permite solucionar dudas, como
                                           tambien asignar y cancelar mesas. La encarga llamada Monica
                                        </p>
                                        <ul class="team-social">
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->

                    </div>
                    <!-- end team-box -->

                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end team-main -->

    <div id="gallery" class="gallery-main pad-top-100 pad-bottom-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <h2 class="block-title text-center">
						Galeria
					</h2>
                        
                    </div>
                    <div class="gal-container clearfix">
                        <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#1">
                                    <img src="../IMAGES/gallery_01.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="1" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="../IMAGES/gallery_01.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 1 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#2">
                                    <img src="../IMAGES/gallery_02.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="2" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="../IMAGES/gallery_02.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 2 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#3">
                                    <img src="../IMAGES/gallery_03.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="3" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="../IMAGES/gallery_03.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 3 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#4">
                                    <img src="../IMAGES/gallery_04.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="4" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="../IMAGES/gallery_04.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 4 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#5">
                                    <img src="../IMAGES/gallery_05.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="5" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="../IMAGES/gallery_05.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 5 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#9">
                                    <img src="../IMAGES/gallery_06.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="9" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="../IMAGES/gallery_06.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 6 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#10">
                                    <img src="../IMAGES/gallery_07.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="10" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="../IMAGES/gallery_07.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 7 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#11">
                                    <img src="../IMAGES/gallery_08.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="11" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="../IMAGES/gallery_08.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 8 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#12">
                                    <img src="../IMAGES/gallery_09.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="12" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="../IMAGES/gallery_09.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 9 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#13">
                                    <img src="../IMAGES/gallery_10.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="13" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="../IMAGES/gallery_10.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 10 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end gal-container -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end gallery-main -->

    <div id="blog" class="blog-main pad-top-100 pad-bottom-100 parallax">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <h2 class="block-title text-center">
					Precios 
				</h2>
                    
                </div>
                <div class="panel-pricing-in">
                    <!-- item -->
                    <div class="col-md-4 col-sm-4 text-center">
                        <div class="panel panel-pricing">
                            <div class="panel-heading">
                                <div class="pric-icon">
                                    <img src="../IMAGES/store.png" alt="" />
                                </div>
                                <h3>Basic</h3>
                            </div>
                            <div class="panel-body text-center">
                                <p><strong>Entradas<span></span></strong></p>
                            </div>
                            <ul class="list-group text-center">
                                <li class="list-group-item"><i class="fa fa-check"></i> Pan de Ajo $1.300</li>
                                <li class="list-group-item"><i class="fa fa-check"></i> Alitas de Pollo - $2.000</li>
                                <li class="list-group-item"><i class="fa fa-check"></i> Ceviche de Pescado al Olivar - $10.450</li>
                                <li class="list-group-item"><i class="fa fa-check"></i> Cicharron de Camaron - $10.500</li>
                                <li class="list-group-item"><i class="fa fa-check"></i> Surtido de Empanadas Criollas - $8.750</li>
                                <li class="list-group-item"><i class="fa fa-check"></i> Ensalada Cesar - $4.990</li>
                            </ul>
                            <div class="panel-footer">
                             
                            </div>
                        </div>
                    </div>
                    <!-- /item -->

                    <!-- item -->
                    <div class="col-md-4 col-sm-4 text-center">
                        <div class="panel panel-pricing">
                            <div class="panel-heading">
                                <div class="pric-icon">
                                    <img src="../IMAGES/food.png" alt="" />
                                </div>
                                <h3>Pro</h3>
                            </div>
                            <div class="panel-body text-center">
                                <p><strong>Platos<span></span></strong></p>
                            </div>
                            <ul class="list-group text-center">
                                <li class="list-group-item"><i class="fa fa-check"></i>Pizza Vegetariana - $4.950</li>
                                <li class="list-group-item"><i class="fa fa-check"></i>Albondigas Picantes - $6.950</li>
                                <li class="list-group-item"><i class="fa fa-check"></i>Lasagna Bolognesa/Crema - $6.999</li>
                                <li class="list-group-item"><i class="fa fa-check"></i>Guizo de Carne  - $7.950</li>
                                <li class="list-group-item"><i class="fa fa-check"></i>Atun Marinero - $11.950</li>
                                <li class="list-group-item"><i class="fa fa-check"></i>Risotto de Camarones con Azafrán - $10.550</li>
                            </ul>
                            <div class="panel-footer">
                                
                            </div>
                        </div>
                    </div>
                    <!-- /item -->

                    <!-- item -->
                    <div class="col-md-4 col-sm-4 text-center">
                        <div class="panel panel-pricing">
                            <div class="panel-heading">
                                <div class="pric-icon">
                                    <img src="../IMAGES/coffee.png" alt="" />
                                </div>
                                <h3>Platinum</h3>
                            </div>
                            <div class="panel-body text-center">
                                <p><strong>Bebestibles<span></span></strong></p>
                            </div>
                            <ul class="list-group text-center">
                                <li class="list-group-item"><i class="fa fa-check"></i> Cerveza Austral Calafate - $3.290</li>
                                <li class="list-group-item"><i class="fa fa-check"></i> Cerveza Austral Lager - $3.290</li>
                                <li class="list-group-item"><i class="fa fa-check"></i> Cerveza Escudo - $1.890</li>
                                <li class="list-group-item"><i class="fa fa-check"></i> Vino Las Mulas Reserva - $11.990</li>
                                <li class="list-group-item"><i class="fa fa-check"></i> Tasa de Cafe - $1.500</li>
                                <li class="list-group-item"><i class="fa fa-check"></i> Bebidas - $1.850</li>
                            </ul>
                            <div class="panel-footer">
                             
                            </div>
                        </div>
                    </div>
                    <!-- /item -->
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end pricing-main -->

   

    <div id="reservation" class="reservations-main pad-top-100 pad-bottom-100">
        <div class="container">
            <div class="row">
                <div class="form-reservations-box">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                            <h2 class="block-title text-center">
						Datos Cliente
					</h2>
                        </div>
                        <h4 class="form-title">FORMULARIO DE CLIENTES</h4>
                        <p>Por favor llene todos los campos del siguiente formulario. ¡Gracias!</p>

                        <form id="contact-form" method="post" class="reservations-box" name="contactform" action="mail.php"/>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:TextBox ID="txtnombrecliente" runat="server" placeholder="Nombre"></asp:TextBox>   
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:TextBox ID="Txtapellidocliente" runat="server" placeholder="Apellido"></asp:TextBox>  
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:TextBox ID="Txtcorreo" runat="server" placeholder="Correo"></asp:TextBox>  
                                </div>
                            </div>

                       

                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:TextBox ID="Txtdireccion" runat="server" placeholder="Direccion"></asp:TextBox>  
                                </div>
                            </div>

                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:TextBox ID="Txtrut" runat="server" placeholder="rut"></asp:TextBox>  
                                </div>
                            </div>

                           <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:TextBox ID="Txttelefono" runat="server" placeholder="telefono"></asp:TextBox>  
                                </div>
                            </div>
                             <!-- end col -->
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="reserve-book-btn text-center">
                                    <asp:Button  type="submit" value="SEND" id="Button1" runat="server" Text="Registrarse como cliente" CssClass="hvr-underline-from-center" OnClick="submit_Click" OnClientClick="return confirm('¿Desea realizar esta accion?');"></asp:button>
                                </div>


                        
                                <h2 class="block-title text-center">
						Datos Reserva
					</h2>

                         <h4 class="form-title">FORMULARIO DE RESERVA</h4>
                        <p>POR FAVOR LLENE TODOS LOS CAMPOS REQUERIDOS. ¡GRACIAS!</p>

                            <!-- end col -->
                           
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:TextBox ID="txtidclienteReserva" runat="server" placeholder="Ingrese su id de cliente o su id de reserva"></asp:TextBox>  
                                </div>
                            </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:DropDownList ID="cmbmesas" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cmbmesas_SelectedIndexChanged" PlaceHolder="Seleccione su mesa"></asp:DropDownList>
                                </div>
                            </div>

                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:TextBox ID="txtidmesa" runat="server" placeholder="Ingrese su id de cliente" AutoPostBack="true" Visible="false"></asp:TextBox>  
                                </div>
                            </div>


                                 <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                   <asp:TextBox ID="txtFechaSol" runat="server" > </asp:TextBox>
                                    <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/RECURSOS/IMAGES/calendario.png" Height="45px" Width="43px" OnClick="ImageButton1_Click" />
                                    <asp:Calendar ID="Calendario1" runat="server" OnSelectionChanged="Calendario1_SelectionChanged" ></asp:Calendar>
                                    
                                </div>

                                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="reserve-book-btn text-center">
                                    <asp:Button  type="submit" value="SEND" id="btnreserva" runat="server" Text="Realizar reserva" CssClass="hvr-underline-from-center" OnClick="btnreserva_Click" OnClientClick="return confirm('¿Desea realizar su reserva?');"></asp:button>
                                    <asp:TextBox ID="txtidreserva" runat="server" placeholder="Ingrese su id de reserva" AutoPostBack="true" Visible="false"></asp:TextBox>  
                                    <asp:Button  type="submit" value="SEND" id="bntcancelar" runat="server" Text="Cancelar reserva" CssClass="hvr-underline-from-center" OnClick="bntcancelar_Click"  OnClientClick="return confirm('¿Desea cancelar su reserva?');"></asp:button>
                                </div>

                                      </div>  



                                 </div>
                                    
                                    
                                
                          

                       

                                
                           

                            <!-- end col -->
                        </form>

                        <!-- end form -->
                    </div>
                    <!-- end col -->
                </div>
                <!-- end reservations-box -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end reservations-main -->


    <div id="footer" class="footer-main">
        <div class="footer-news pad-top-100 pad-bottom-70 parallax">
            <div class="container">
                <div class="row">
                   
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end footer-news -->
        <div class="footer-box pad-top-70">
            <div class="container">
                <div class="row">
                    <div class="footer-in-main">
                        <div class="footer-logo">
                            <div class="text-center">
                            <!--     <img src="../IMAGES/logo.png" alt="" /> -->
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="footer-box-a">
                                <h3>Sobre nosotros</h3>
                                <p>Restorante con recetas clasicas del local, con 50 años de aprobacion de todos sus clientes!</p>
                                <ul class="socials-box footer-socials pull-left">
                                    <li>
                                        <a href="#">
                                            <div class="social-circle-border"><i class="fa  fa-facebook"></i></div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="social-circle-border"><i class="fa fa-twitter"></i></div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="social-circle-border"><i class="fa fa-google-plus"></i></div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="social-circle-border"><i class="fa fa-pinterest"></i></div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="social-circle-border"><i class="fa fa-linkedin"></i></div>
                                        </a>
                                    </li>
                                </ul>

                            </div>
                            <!-- end footer-box-a -->
                        </div>
                        <%--<!-- end col -->
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="footer-box-b">
                                <h3>Nuestro Menu</h3>
                                <ul>
                                    <li><a href="#">descripcion</a></li>
                                    <li><a href="#">descripcion</a></li>
                                    <li><a href="#">descripcion</a></li>
                                    <li><a href="#">descripcion</a></li>
                                </ul>
                            </div>
                            <!-- end footer-box-b -->
                        </div>--%>
                        <!-- end col -->
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="footer-box-c">
                                <h3>Contactanos</h3>
                                <p>
                                    <i class="fa fa-map-signs" aria-hidden="true"></i>
                                    <span>Barrio Italia #435, Ñuñoa, Santiago</span>
                                </p>
                                <p>
                                    <i class="fa fa-mobile" aria-hidden="true"></i>
                                    <span>
									+569 61580806
								</span>
                                </p>
                                <p>
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <span><a href="#">RestauranteSiglo21@contacto.com</a></span>
                                </p>
                            </div>
                            <!-- end footer-box-c -->
                        </div>
                        <!-- end col -->
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="footer-box-d">
                                <h3>Horario </h3>

                                <ul>
                                    <li>
                                        <p>lunes a viernes </p>
                                        <span> 11:00 - 22:00</span>
                                    </li>
                                    <li>
                                        <p>sabado y domingo </p>
                                        <span>  11:00 - 23:00 PM</span>
                                    </li>
                                </ul>
                            </div>
                            <!-- end footer-box-d -->
                        </div>
                        <!-- end col -->
                    </div>
                    <!-- end footer-in-main -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
            <div id="copyright" class="copyright-main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            
                        </div>
                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
            </div>
            <!-- end copyright-main -->
        </div>
        <!-- end footer-box -->
    </div>
    <!-- end footer-main -->

    

    
    <!-- ALL JS FILES -->
    <script src="../js/all.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="../js/custom.js"></script>
   

</body>
</html>