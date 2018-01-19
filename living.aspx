<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>IDEE PER VIAGGIARE - Viaggi e Destinazioni: vacanze esclusive!</title>
        <meta name="description" content="Scopri la destinazione per il tuo viaggio: prenota online la tua vacanza e vivi la meta dei tuoi sogni!">
        <meta name="keywords" content="tour operator, viaggi, vacanze, volo hotel, pacchetti viaggi, offerte di viaggio, viaggi di nozze">
        <meta name="author" content="" />
        <meta http-equiv='cache-control' content='no-cache'>
        <meta http-equiv='expires' content='0'>
        <meta http-equiv='pragma' content='no-cache'>
        <link href='https://fonts.googleapis.com/css?family=Lato:400,700,800,900|Oswald|Roboto:200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="/css/init.asset.css" />
        <link rel="stylesheet" type="text/css" href="/css/style.css?ver=1" />
        <link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css" />

        <script type='application/ld+json'> 
        {
          "@context": "http://www.schema.org",
          "@type": "WebPage",
          "name": "IDEE PER VIAGGIARE,Destinazioni e Viaggi",
          "url": "http://www.ideeperviaggiare.it/destinazioni",
          "logo": "http://www.ideeperviaggiare.it/images/logoipv.png",
          "image": "http://www.ideeperviaggiare.it/images/logoipv.png",
          "description": "Viaggi su misura per Maldive, Polinesia, Seychelles, Giappone, Mauritius, Thailandia, Australia, Dubai, Stati Uniti, Messico, Caraibi, Bali, Vietnam e tanti altri",
          "address": {
            "@type": "PostalAddress",
            "streetAddress": "viale leonetto cappiello 14",
            "addressLocality": "Roma",
            "addressRegion": "italy",
            "postalCode": "00125",
            "addressCountry": "Italy"
          },
          "openingHours": "Mo, Tu, We, Th, Fr 09:00-19:00 Sa 09:00-13:00",
          "contactPoint": {
            "@type": "ContactPoint",
            "telephone": "+3906520981",
            "contactType": "customer service"
          }
        }
        </script>

        <script type="application/ld+json">{
        "@context": "http://schema.org",
        "@type": "BreadcrumbList",
        "itemListElement": [
        {
        "@type": "ListItem",
        "position": 1,
        "item": {
        "@id": "http://www.ideeperviaggiare.it/destinazioni",
        "name": "IDEE PER VIAGGIARE"
           }
        }]}
        </script>
        <meta property="og:title" content="IDEE PER VIAGGIARE - DESTINAZIONI" />
        <meta property="og:type" content="Destinazioni, Viaggi e Vacanze" />
        <meta property="og:url" content="http://www.ideeperviaggiare.it/destinazioni" />
        <meta property="og:image" content="http://www.ideemaredinverno.it/images/categoria-14.jpg" />
        <meta name="twitter:card" content="summary" />
        <meta name="twitter:site" content="@ideexviaggiare" />
        <meta name="twitter:creator" content="@ideexviaggiare" />
        <meta property="og:url" content="https://twitter.com/ideexviaggiare" />
        <meta property="og:title" content="IDEE PER VIAGGIARE twitter" />
        <meta property="og:description" content="Idee Per Viaggiare sogni e colori verso Maldive,SriLanka,Mauritius,Seychelles,Dubai,Sudafrica,Thailandia,Polinesia,USA,Messico, Caraibi, Australia" />
        <meta property="og:image" content="https://pbs.twimg.com/profile_images/933705391262830592/fr7ds4rk_400x400.jpg" />

    </head>
<body>
    <!-- loader -->
    <div id="searching_Modal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div style="height:auto;">
                        <h6>
                            <img src="images/logoipv.png" class="img-responsive center-block" />
                        </h6>
                        <h3 class="text-center ipv-font c-fucsia space-0-25">
                            Lavoriamo a Colori...
                        </h3>
                        <h2 style="text-align:center;">
                            <span id="searching_spinner_center" style="text-align:center;">
                                <i class="fa fa-spinner fa-spin fa-3x"></i>
                            </span>
                        </h2>
                    </div>
                </div>
                <div class="modal-footer" style="text-align: center"></div>
            </div>
        </div>
    </div>
    <!-- RICHIESTA Preventivo -->
    <div id="container-richiesta-preventivo"></div>
    <!-- Offerte categorie -->
    <div id="offerteCategorieContainer" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-body">
                    <a href="#" class="btn btn-default btn-sm btn-cerca pull-right" data-dismiss="modal">
                        Chiudi
                    </a>
                    <div class="col-xs-12">
                        <h3 class="text-center space-n-0-25" id="offerteCategorieTitle"></h3>
                        <hr />
                    </div>
                    <div class="col-xs-12" id="offerteCategorieContent" style="height:auto;">
                    </div>
                </div>
                <div class="modal-footer" style="text-align: center">
                    <div class="col-xs-12">
                        &nbsp;
                    </div>
                    <a href="#" class="btn btn-default btn-lg btn-cerca" data-dismiss="modal">
                        <strong>
                            Chiudi
                        </strong>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- go2Destinazione -->
    <div id="container-go2Destinazione" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" style="background-image:url('images/catalogo-pattern.png'); background-position-y:-250px; background-repeat:no-repeat;">
                    <div class="container-fluid col-xs-left-empty">
                        <input type="hidden" id="txt-idGo2Destinazione" />
                        <div class="col-xs-12">
                            &nbsp;
                        </div>
                        <div class="col-xs-12">
                            &nbsp;
                        </div>
                        <div class="col-xs-12">
                            <img src="images/staff-milani.jpg" class="img-circle img-responsive center-block" style="border:1px solid #e1e1e1; padding:6px; width:18%;" />
                        </div>
                        <div class="col-xs-12 text-center">
                            <h2 id="go2Destinazione-title" class="text-center ipv-century space-n-0-25"></h2>
                            <h6 class="border-4 b-viola col-xs-2 col-xs-offset-5"></h6>
                            <h3 class="col-xs-12 text-center ipv-title">
                                Insieme, verso la meta.
                            </h3>
                            <h5 class="col-xs-12 ipv-paragraph text-left text-muted line-1-30">
                                Ciao, sono il tuo assistente personale a colori e sono qui per aiutarti a scoprire la destinazione desiderata. In alternativa, se conosci gi&agrave; la tua meta vai direttamente alle offerte.
                            </h5>
                            <div class="col-xs-12">
                                <a href="#" onclick="scopriDestinazione();">
                                    <h5 class="col-xs-12 ipv-title btn-scopri-destinazione text-center">
                                        <i class="fa fa-map-marker c-viola"></i> &nbsp;Desidero scoprire la mia meta
                                    </h5>
                                </a>
                            </div>
                            <div class="col-xs-12">
                                <a href="#" onclick="go2Offerte();">
                                    <h5 class="col-xs-12 ipv-title btn-go2-offerte text-center">
                                        <i class="fa fa-binoculars c-bianco"></i> &nbsp;Vai direttamente alle offerte
                                    </h5>
                                </a>
                            </div>
                            <div class="col-xs-12 text-left">
                                <h6 class="roboto-font">
                                    <i id="ctl-switchGo2" class="fa fa-circle-thin fa-2x btn col-xs-empty" onclick="switchGo2()"></i>&nbsp;
                                    Non farmi pi&ugrave; questa domanda, la prossima volta vai direttamente alle offerte.
                                </h6>
                            </div>
                            <hr class="col-xs-12" />
                            <div class="col-xs-12 text-center">
                                <a href="#" class="btn btn-default btn-sm pull-right" data-dismiss="modal">
                                    Chiudi
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- go2Top -->
    <div id="scrtop" style="display:none;">
        <div style="top:90%; left:90%; width:10%; position:fixed; z-index:999999999999999999999999;">
            <div class="container-fluid col-xs-12">
                <a href="#" class="btn btn-default btn-sm pull-right" id="go2Top">
                    <i class="fa fa-angle-up fa-lg"></i>
                </a>
            </div>
        </div>
    </div>

    <!-- main content -->
    <div id="container-all">
        <!-- main menu -->
        <div id="container-menu"></div>
        <!-- main body -->
        <div class="container-fluid">
            <div class="row">
                <!-- visore centrale -->
                <div id="visore-centrale-empty" class="row" style="background-color:#006ab3;">
                    <div class="row">
                        <h3 class="hidden-xs" style="padding-top:20%; padding-bottom:20%; color:#fff; text-transform:none; font-family:'Roboto'; font-size:16px;">
                            Caricamento in corso...<br />
                            <i class="fa fa-spinner fa-spin fa-2x"></i>
                        </h3>
                    </div>
                </div>
                <div id="visore-centrale" style="display:none;">
                    <div class="row" style="background-image:url('images/la_filosofia.jpg'); background-size:100%; background-position:top; background-repeat:no-repeat;">
                        <div id="bannerHome" class="row">
                            <h2 class="hidden-xs hidden-sm" style="padding-top:12%; padding-bottom:4%;">
                                <b style="border-top:3px solid #fff; color:#fff; padding:0.1%; padding-left:1%; padding-right:1%;">Destinazioni</b>
                                <span style="margin-top:2% !important;">
                                    Esclusive e raffinate
                                </span>
                                <span>
                                    <a href="#about" class="page-scroll btn btn-scopri-categoria fadeIn animated" data-toggle="tooltip"
                                       title="" data-placement="right" data-original-title="Scopri di pi&ugrave;!">
                                        SCOPRI
                                    </a>
                                </span>
                            </h2>
                            <h3 class="hidden-md hidden-lg" style="padding-top:18%; padding-bottom:15%;">
                                <b style="border:2px solid #fff; color:#fff; padding:0.1%; padding-left:1%; padding-right:1%;">Destinazioni</b>
                                <span style="margin-top:3% !important;">
                                    Esclusive e raffinate
                                </span>
                                <span>
                                    <a href="#about" class="page-scroll btn btn-xs btn-scopri-categoria shake animated" data-toggle="tooltip"
                                       title="" data-placement="right" data-original-title="Scopri di pi&ugrave;!">
                                        SCOPRI
                                    </a>
                                </span>
                            </h3>
                        </div>
                    </div>
                </div>
                <!-- about intro -->
                <div class="container-fluid home-section" id="about">
                    <div class="col-xs-12">
                        <h6>&nbsp;</h6>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2">
                        <h1 class="ipv-header text-center space-n-0-25">
                            Viaggi e destinazioni: vacanze esclusive!
                        </h1>
                        <h4 class="col-xs-12 col-sm-12 col-md-12 col-lg-10 col-lg-offset-1 text-muted text-center ipv-title line-1-30">
                            &#171;LIVING&#187; come vivere a pieno la propria meta, una selezione di destinazioni incantevoli, esclusive e raffinate: tutte a colori!
                        </h4>
                    </div>
                    <div class="col-xs-12">
                        <hr />
                    </div>
                    <div class="col-xs-12">
                        &nbsp;
                    </div>
                    <div class="col-xs-12">
                        <noscript>
                            <div id="container-living-content-noscript" class="col-xs-12"><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#86543d;">Living Dubai</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://www.livingdubai.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-1.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">Vivi la città incantata</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#308459;">Living Qatar</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livingqatar.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-11.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">TUTTO DA VIVERE</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#a68863;">Living Abu Dhabi</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livingabudhabi.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-13.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">FUORI DALL'ORDINARIO</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#86543d;">Living New York</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livingnewyork.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-15.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">Mille luci, grandi contrasti</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#464e91;">Living Thailandia</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livingthailandia.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-16.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">ELEGANTE E OSPITALE</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#4b54a1;">Living Maldive</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livingmaldive.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-17.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">Mille sfumature, magica atmosfera</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#a1489e;">Living Messico</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livingmessico.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-20.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">Tutto da vivere, divertimento assicurato</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#359fbc;">Living Mauritius</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livingmauritius.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-21.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">PROFUMI INTENSI, BELLEZZA DIROMPENTE</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#359fbc;">Living Seychelles</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livingseychelles.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-23.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">Le Isole incantate</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#42a161;">Living Giappone</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livinggiappone.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-22.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">GRANDI CONTRASTI, TERRA SORPRENDENTE</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#e4414c;">Living Australia</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livingaustralia.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-25.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">Mille scenari, infiniti colori</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#45b8e6;">Living Polinesia</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livingpolinesia.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-24.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">INCONTAMINATA E PARADISIACA</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div><div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"><h4 class="oswald-font text-uppercase space-0-5" style="color:#4b54a1;">Living Caraibi</h4><div class="col-xs-12 image-box"><div class="row image-box-zoom"><a target="_blank" href="http://livingcaraibi.ideeperviaggiare.it" style="text-decoration:none;"><div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-27.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;"><h6 class="text-center contenitoriTitle space-1">Sogni tra spiagge e cultura</h6></div><div class="col-xs-12">&nbsp;</div></a></div></div></div></div>
                        </noscript>
                        <div id="container-living-content" class="col-xs-12"></div>
                    </div>
                </div>
                <div class="col-xs-12">
                    &nbsp;
                </div>
            </div>
        </div>
        <!-- footer -->
        <div id="container-footer"></div>
    </div>
    <!-- GOOGLE ANALYTICS -->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-444581-5', 'auto');
        ga('send', 'pageview');

    </script>
</body>
</html>

<script src="/js/init.asset.js"></script>
<script src="/models/app.model.session.js"></script>
<script src="/js/init.storage.js"></script>
<script src="/js/wow.min.js"></script>
<script src="/js/app.config.js"></script>
<script src="/views/app.view.richiesta.preventivo.js?ver=4"></script>
<script src="/views/app.view.menu.js?ver=3"></script>

<!-- init menu, footer -->
<script>
    $(function () {
        initVisore(); loadContenitoriOfferte();

        appRichiestaPreventivo = new richiestaPreventivo({
            el: $("#container-richiesta-preventivo"),
            collection: {
                id: "container-richiesta-preventivo",
                idContenitore: 9,
                functionName: null,
                templateName: "app.template.richiesta.preventivo",
                selectedItem: -1,
            }
        });
        appMenu = new menu({
            el: $("#container-menu"),
            collection: {
                id: "container-menu",
                functionName: null,
                templateName: "app.template.menu",
                selectedItem: 2,
            }
        });
        appFooter = new menu({
            el: $("#container-footer"),
            collection: {
                id: "container-footer",
                functionName: null,
                templateName: "app.template.footer",
                selectedItem: -1,
            }
        });
    });
</script>
<script>
    $(function () {
        $('#ideeGoldContainer').on('hidden.bs.modal', function () {
            //alert(0);
            $("#helpContainerClose").collapse("show");
        });
        $('.modal').on('hidden.bs.modal', function () {
            //alert(1);
            var win = $(this); $('#container-all').css('width', eval(win.width()) + "px");
        })
        $(window).on('resize', function () {
            //alert(2);
            var win = $(this); $('#container-all').css('width', eval(win.width()) + "px");
        });
    });
</script>
<!-- init visore -->
<script>
    function initVisore() {
        $(['images/la_filosofia.jpg']).preload();
    }
</script>
<!-- load destinazioni contenitori -->
<script>
    function switchGo2() {
        if ($("#ctl-switchGo2").attr("class") == "fa fa-circle-thin fa-2x btn col-xs-empty") {
            $("#ctl-switchGo2").removeClass("fa fa-circle-thin fa-2x btn col-xs-empty").addClass("fa fa-check-circle fa-2x btn col-xs-empty");
        } else {
            $("#ctl-switchGo2").removeClass("fa fa-check-circle fa-2x btn col-xs-empty").addClass("fa fa-circle-thin fa-2x btn col-xs-empty")
        }
    }
    function scopriDestinazione() {
        if ($("#ctl-switchGo2").attr("class") == "fa fa-check-circle fa-2x btn col-xs-empty") {
            setGo2Destinazione();
        }
        document.location.href = 'destinazioni.html?idDestinazione=' + $('#txt-idGo2Destinazione').val();
    }
    function go2Offerte() {
        if ($("#ctl-switchGo2").attr("class") == "fa fa-check-circle fa-2x btn col-xs-empty") {
            setGo2Destinazione();
        }
        document.location.href = 'offerte.html?idContenitore=9&idCategoria=@' + $('#txt-idGo2Destinazione').val();
    }
    function setGo2Destinazione() {
        document.cookie = 'go2Destinazione-' + $('#txt-idGo2Destinazione').val() + ' = 1';
    }
    function go2Destinazione(idCategoria, destinazione) {
        if (document.cookie.indexOf('go2Destinazione-' + idCategoria) == -1) {
            $('#go2Destinazione-title').html(destinazione);
            $('#txt-idGo2Destinazione').val(idCategoria);
            $('#container-go2Destinazione').modal('show');
        } else {
            document.location.href = 'offerte.html?idContenitore=9&idCategoria=@' + idCategoria;
        }
    }

    function loadContenitoriOfferte() {
        $('#searching_Modal').modal('show');
        $("#container-living-content").empty();
        var htmlContent = "";
        try {
            var terms = {
                isChannel: 0
            };
            $.ajax({
                url: appConfig.apiPrefix + 'IPV_contenitori',
                dataType: 'json',
                contentType: 'application/json',
                data: terms,
                type: 'GET',
                headers: {
                    //lang: userStorage.lang,
                    //licencekey: "testLicenceKey0123"
                },
                success: function (data) {
                    data = data.filter(function (i) {
                        return i.isActive === "True";
                    });
                    if (data.length > 0) {
                        var htmlDestination = "";
                        var blnActive = "";
                        var active = "";
                        var item = 0;
                        // IPV color palette
                        var clr = 'a1489e,feca36,ed2b9d,7c4ea1,a68863,359fbc,464e91,f37d45,42a161,45b8e6,e4414c,f58f49,308459,86543d,4b54a1'.split(',');
                        $.each(data, function (key, contenitoreOfferta) {
                            if (contenitoreOfferta.disabled == "False") {
                                var hue = clr[Math.floor(Math.random() * (15 - 0 + 0) + 0)];
                                htmlContent += '<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">';
                                    htmlContent += '<h4 class="oswald-font text-uppercase space-0-5" style="color:#' + hue + ';">' + contenitoreOfferta.descrizione + '</h4>';
                                    htmlContent += '<div class="col-xs-12 image-box">';
                                        htmlContent += '<div class="row image-box-zoom">';
                                            htmlContent += '<a target="_blank" href="' + contenitoreOfferta.siteUrl + '" style="text-decoration:none;">';
                                            htmlContent += '<div class="col-xs-12" style="background-image:url(/images/contenitore-offerte-thumb-' + contenitoreOfferta.idContenitore + '.jpg); background-size:100%; background-position:top; background-repeat:no-repeat;">';
                                            htmlContent += '<h6 class="text-center contenitoriTitle space-1">' + contenitoreOfferta.brand + '</h6>';
                                            htmlContent += '</div>';
                                            htmlContent += '<div class="col-xs-12">&nbsp;</div>';
                                            htmlContent += '</a>';
                                        htmlContent += '</div>';
                                    htmlContent += '</div>';
                                htmlContent += '</div>';
                            }
                        });
                        $("#container-living-content").html(htmlContent);
                    }
                    else {
                        //alert("no data");
                    }
                    $('#searching_Modal').modal('hide');
                },
                error: function () {
                    $('#searching_Modal').modal('hide');
                }
            });
        }
        catch (err) {
            $('#searching_Modal').modal('hide');
        }
    }

    function loadCountProposte(idAreaCategoria) {
        $('#searching_Modal').modal('show');
        $.when(loadCountProposte_promise(idAreaCategoria)).done(function () {
            $('#searching_Modal').modal('hide');
        });
    }
    function loadCountProposte_promise(idAreaCategoria) {
        try {
            var terms = {
                idContenitore: 9,
                idAreaCategoria: idAreaCategoria
            };
            var container = $("#offerteCategorieContent");
            container.empty();
            return $.ajax({
                url: appConfig.apiPrefix + 'IPV_riepilogoProposte',
                dataType: 'json',
                contentType: 'application/json',
                data: terms,
                type: 'GET',
                headers: {
                },
                success: function (data) {
                    // IPV color palette
                    var clr = 'a1489e,feca36,ed2b9d,7c4ea1,a68863,359fbc,464e91,f37d45,42a161,45b8e6,e4414c,f58f49,308459,86543d,4b54a1'.split(',');
                    container.empty();
                    if (data.length > 0) {
                        var count = 1;
                        var strIsMasterCSS = "";
                        $.each(data, function (key, struttura) {
                            var hue = clr[Math.floor(Math.random() * (15 - 0 + 0) + 0)];
                            if (struttura.isMaster == "True") {
                                strIsMasterCSS = "col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3"
                            } else {
                                strIsMasterCSS = "col-xs-12 col-sm-12 col-md-6 col-lg-6";
                            }
                            var content = '';
                            content += '<div alt="Cerca offerte in ' + struttura.descrizione + '" onclick="go2Destinazione(' + struttura.idCategoria + ', &apos;' + struttura.descrizione + '&apos;)" id="destination-' + struttura.idCategoria + '" class="' + strIsMasterCSS + '" style="margin-bottom:30px !important; cursor:pointer;">';
                            if (struttura.isMaster == "True") {
                                content += '<div id="container-destination-' + struttura.idCategoria + '" alt="' + struttura.descrizione + '" class="col-xs-12 col-xs-left-empty CoverImage isMaster image-box-zoom" style="background-image:url(images/categoria-' + struttura.idCategoria + '.jpg); padding-top:75%; background-size: cover;">';
                            } else {
                                content += '<div id="container-destination-' + struttura.idCategoria + '" alt="' + struttura.descrizione + '" class="col-xs-12 col-xs-left-empty CoverImage image-box-zoom" style="background-image:url(images/categoria-' + struttura.idCategoria + '.jpg); padding-top:75%; background-size: cover;">';
                            }
                            content += '<div class="col-xs-12 offerte text-center" style="position:absolute; margin-top:0; top:0;">';
                            content += '<h4 class="col-xs-12">';
                            content += '<span class="ipv-century space-0-25 text-uppercase" style="color:#000 !important;"><strong>' + struttura.descrizione + '</strong></span>';
                            content += '<span class="col-xs-12 text-center">';
                            content += '<span style="font-size:12px"><strong class="">volo, ' + struttura.notti + ' Notti, per persona, a partire da</strong></span>';
                            content += '<span class="ipv-title price col-xs-empty" style="font-size:24px;"><strong><sup>&euro;</sup>&nbsp;' + struttura.prezzo + '</strong></span>';
                            content += '</h4>';
                            //content += '</div>';
                            //content += '</div>';
                            content += '</div>';
                            container.append(content);
                        });
                        $("#offerteCategorieContainer").modal("show");
                        //initLang();
                    }
                    else {
                        //alert("no data");
                    }
                },
                error: function () {
                    //displayError(appMessage.defaultError);
                }
            });
        }
        catch (err) {
            //displayError(appMessage.defaultError);
        }
    }
    function loadCountAreeProposte() {
        try {
            var terms = {
                idContenitore: 9,
                excludedCombinate: 1
            };
            var container = $("#container_countRiepilogoProposte");
            return $.ajax({
                url: appConfig.apiPrefix + 'IPV_riepilogoAreeProposte',
                dataType: 'json',
                contentType: 'application/json',
                data: terms,
                type: 'GET',
                headers: {
                },
                success: function (data) {
                    // IPV color palette
                    var clr = 'a1489e,feca36,ed2b9d,7c4ea1,a68863,359fbc,464e91,f37d45,42a161,45b8e6,e4414c,f58f49,308459,86543d,4b54a1'.split(',');
                    container.empty();
                    if (data.length > 0) {
                        var count = 1;
                        var strIsMasterCSS = "";
                        $.each(data, function (key, struttura) {
                            var hue = clr[Math.floor(Math.random() * (15 - 0 + 0) + 0)];
                            if (struttura.isMaster == "True") {
                                strIsMasterCSS = "col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 wow fadeIn"
                            } else {
                                strIsMasterCSS = "col-xs-12 col-sm-6 col-md-6 col-lg-4 wow fadeIn";
                            }
                            var content = '';
                            content += '<div alt="Cerca offerte in ' + struttura.descrizione + '" onclick="loadCountProposte(' + struttura.idAreaCategoria + '); $(&quot;#offerteCategorieTitle&quot;).html(&quot;' + struttura.descrizione + '.&quot;);" id="destination-' + struttura.idAreaCategoria + '" class="' + strIsMasterCSS + '" style="margin-bottom:30px !important; cursor:pointer">';
                            if (struttura.isMaster == "True") {
                                content += '<div id="container-destination-' + struttura.idAreaCategoria + '" alt="' + struttura.descrizione + '" class="col-xs-12 col-xs-left-empty CoverImage isMaster image-box-zoom" style="background-image:url(images/area-categoria-' + struttura.idAreaCategoria + '.jpg); padding-top:75%; background-size: cover;">';
                            } else {
                                content += '<div id="container-destination-' + struttura.idAreaCategoria + '" alt="' + struttura.descrizione + '" class="col-xs-12 col-xs-left-empty CoverImage image-box-zoom" style="background-image:url(images/area-categoria-' + struttura.idAreaCategoria + '.jpg); padding-top:75%; background-size: cover;">';
                            }
                            content += '<div class="col-xs-12 offerte text-center" style="position:absolute; margin-top:0; top:0;">';

                            content += '<h4 class="col-xs-12">';
                            content += '<span class="destinazione ipv-century space-0-25" style="color:#000 !important;">' + struttura.descrizione + '</span>';
                            content += '<div class="col-xs-12 hidden-xs hidden-sm hidden-md">&nbsp;</div>';
                            content += '<span style="font-size:12px"><strong class="">volo, ' + struttura.notti + ' Notti, per persona, a partire da</strong></span>';
                            content += '<span class="ipv-title price col-xs-empty" style="font-size:24px;"><strong><sup>&euro;</sup>&nbsp;' + struttura.prezzo + '</strong></span>';
                            content += '</h4>';
                            content += '</div>';
                            content += '</div>';
                            content += '</div>';
                            container.append(content);
                        });
                        //initLang();
                    }
                    else {
                        //alert("no data");
                    }
                    $('#searching_Modal').modal('hide');
                },
                error: function () {
                    //displayError(appMessage.defaultError);
                }
            });
        }
        catch (err) {
            //displayError(appMessage.defaultError);
        }
    }

    wow = new WOW({
        boxClass: 'wow', // default
        animateClass: 'animated', // default
        offset: 250, // default
        mobile: true, // default
        live: true // default
    })
    wow.init();
</script>