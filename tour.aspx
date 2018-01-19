<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="System.Web.Routing" %>
<!DOCTYPE html>
<html>
    <head runat="server">
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>IDEE PER VIAGGIARE, TOUR</title>
        <meta name="description" content="">
        <meta name="Keywords" content="">
        <meta name="author" content="" />
        <meta http-equiv='cache-control' content='no-cache'>
        <meta http-equiv='expires' content='0'>
        <meta http-equiv='pragma' content='no-cache'>
        <link href='https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700|Lato:300,700,800,900|Oswald|Roboto:200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css' />
        <link rel="stylesheet" type="text/css" href="/css/init.asset.css?ver=4" />
        <link rel="stylesheet" type="text/css" href="/css/init.summernote.css" />
        <link rel="stylesheet" type="text/css" href="/css/style.css?ver=6" />
        <link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css" />
    </head>
<body>
    <div id="container-mixer" class="text-center btn btn-primary collapse" data-html="true" data-toggle="popover" title="<h4 class='ipv-header'>Usa il mixer</h4>" data-content="<span class='roboto-font'>Con il mixer delle IDEE cercare un viaggio è tutta un'altra musica&hellip;</span><h6></h6><a class='btn btn-primary btn-sm roboto-font' onclick='$(&quot;#container-mixer&quot;).popover(&quot;hide&quot;); $(&quot;#ricerca-hotel-loader-smart&quot;).trigger(&quot;click&quot;);'>provalo subito</a>" style="position:fixed; z-index:1000; border:1px solid #f9f9f9; width:40px; height:40px; border-radius:20px; top:45%; left:4px; padding:10px;">
        <i class="fa fa-sliders fa-lg"></i>
    </div>
    <!-- RICHIESTA Preventivo -->
    <div id="container-richiesta-preventivo"></div>
    <!-- loader -->
    <div id="searching_Modal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div style="height:auto;">
                        <h6>
                            <img src="/images/logoipv.png" class="img-responsive center-block" />
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
    <!-- go2top -->
    <div id="scrtop" style="display:none;">
        <div style="top:90%; left:90%; width:10%; position:fixed; z-index:999999999999999999999999;">
            <div class="container-fluid col-xs-12">
                <a href="#" class="btn btn-default btn-sm pull-right" id="go2Top">
                    <i class="fa fa-angle-up fa-lg"></i>
                </a>
            </div>
        </div>
    </div>
    <!-- scegli la tua destinazione -->
    <div id="helpContainerGold" class="hidden-xs collapse">
        <div class="col-xs-12 col-xs-empty">
            <a id="go2Offerte" href="#" class="btn btn-default col-xs-empty">
                <h6 class="text-center col-xs-12 col-xs-empty">
                    <i class="btn fa fa-binoculars fa-lg c-nero"></i>
                </h6>
                <h4 class="col-xs-12 btn col-xs-empty">
                    <span style="color:rgba(0,0,0,0.85); text-transform:none !important;">
                        <span style="font-family:'Oswald'">
                            OFFERTE
                        </span>
                    </span>
                </h4>
            </a>
        </div>
    </div>
    <!-- main content -->
    <div id="container-all">
        <!-- main menu -->
        <div id="container-menu"></div>
        <div id="container-offerta-details"></div>
        <!-- main body -->
        <div class="container-fluid">
            <div class="row">
                <!-- visore centrale -->
                <div id="visore-centrale-empty" class="row" style="background-color:#006ab3;">
                    <div id="bannerHome" class="row">
                        <h3 class="hidden-xs" style="padding-top:20%; padding-bottom:20%; color:#fff; text-transform:none; font-family:'Roboto'; font-size:16px;">
                            Caricamento in corso...<br />
                            <i class="fa fa-spinner fa-spin fa-2x"></i>
                        </h3>
                    </div>
                </div>
                <div class="col-xs-12 hidden-sm hidden-md hidden-lg">
                    <h2 class="tour-title-intro c-marrone oswald-font text-center text-uppercase"></h2>
                </div>
                <div id="ricerca-avanzata" class="row collapse">
                    <div class="col-xs-12 col-xs-empty icon-addon addon-lg" style="position:relative; z-index:99; left:0;">
                        <i id="ricerca-hotel-loader-smart" class="btn fa fa-sliders fa-lg text-muted" style="position:absolute; color:rgba(255, 255, 255, 0.6); z-index:9999999999; padding:10px; margin-left:12px;" onclick="appMenu.ricercaHotel(0);" data-toggle="tooltip" title="Ricerca in base ai tuoi parametri di gradimento" data-placement="bottom"></i>
                        <i id="chiudi-ricerca-hotel-smart" class="btn fa fa-close fa-lg text-muted pull-right c-bianco" style="position:absolute; display:none !important; left:100%; margin-left:-50px; z-index:9999999999; padding:10px;" onclick="clearRicercaStruttureSmart('-smart');"></i>
                        <input id="txt-ricerca-hotel-smart" maxlength="70" class="form-control lato-font space-0-25" placeholder="Ricerca rapida hotel, tour&hellip;" onkeyup="appMenu.ricercaHotel(0, $(this).val());"
                                style="border:0; border-bottom:2px solid #707070; margin-top:0; padding-left:48px; font-style:normal; font-weight:600; box-shadow:none; background: rgba(0, 0, 0, 0.60); color:rgba(255, 255, 255, 0.7);" />
                    </div>
                    <div class="col-xs-12 col-xs-empty" style="position:absolute; z-index:98; left:0;">
                        <div id="container-destinazioni-strutture-smart" class="col-xs-12 col-xs-empty c-bianco" style="display:none; background-color:rgba(102,102,102,0.85); color:rgba(255,255,255,0.7) !important; border-bottom:2px solid #808080; top:33px; width:100%; overflow-y:scroll;">
                        </div>
                    </div>
                </div>
                <div id="visore-centrale" class="row" style="display:none;">
                    <div id="carousel-tour-index" class="carousel slide" data-ride="carousel">
                        <h1 class="tour-title oswald-font hidden-xs col-xs-empty"
                                style="position:absolute; font-weight:100; width:100%; top:0; z-index:1; background: rgba(0, 0, 0, 0.60);
                            color:rgba(255, 255, 255, 0.9); text-align:center;">
                        </h1>
                        <div class="col-xs-12 col-xs-empty" style="position:absolute; top:0; z-index:2;">
                            <div class="col-xs-1">
                                <a id="btnPrev" class="btn" href="#carousel-tour-index" role="button" data-slide="prev">
                                    <i class="fa fa-angle-left fa-2x" aria-hidden="true" style="color:rgba(255, 255, 255, 0.6);"></i>
                                </a>
                            </div>
                            <div class="col-xs-10 text-center">
                            </div>
                            <div class="col-xs-1">
                                <a id="btnNext" class="btn pull-right" href="#carousel-tour-index" role="button" data-slide="next">
                                    <i class="fa fa-angle-right fa-2x" aria-hidden="true" style="color:rgba(255, 255, 255, 0.6);"></i>
                                </a>
                            </div>
                        </div>
                        <div id="container-servizio-carousel-index" class="carousel-inner" role="listbox"></div>
                    </div>

                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                    <div id="container-bottom-gallery-thumbnail" class="col-xs-12 text-left hidden-md hidden-lg"></div>
                    <div class="col-xs-12">
                        &nbsp;
                    </div>
                    <div id="container-servizio-title-anchor"></div>
                    <div id="container-servizio-title">
                        <div class="col-xs-12">
                            <h5 class="tour-isola roboto-font col-xs-empty"></h5>
                        </div>
                        <div class="col-xs-12">
                            <h2 class="tour-title-intro col-xs-empty c-marrone oswald-font text-uppercase"></h2>
                        </div>
                    </div>
                    <div id="container-giudizio" class="col-xs-12">
                        <h6 id="tour-giudizio" class="roboto-font"></h6>
                    </div>
                    <div class="col-xs-12">
                        <h5 id="tour-tipo-macro" class="col-xs-12 col-xs-left-empty oswald-font text-uppercase space-0-5"></h5>
                        <h6 id="tour-tipo" class="col-xs-12 col-xs-empty roboto-font text-muted" style="display:none;"></h6>
                    </div>
                    <div id="tour-Day" class="col-xs-12">
                    </div>
                    <div class="col-xs-12">
                        <hr />
                        <h6 id="tour-note" class="roboto-font col-xs-empty text-muted"></h6>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" style="background-color:#f1f1f1; margin-top: 6px;">
                    <div style="position:absolute; top:0; z-index:10; left:-14px; color:#f1f1f1;">
                        <i class="fa fa-caret-left fa-4x"></i>
                    </div>
                    <div id="container-tour-offerte-loader" class="col-xs-12" style="display:none;">
                        <h5 class="text-center ipv-title">
                            Caricamento offerte in corso...<br />
                            <i class="fa fa-spinner fa-spin fa-2x"></i>
                        </h5>
                    </div>
                    <h6 class="col-xs-12"></h6>
                    <div id="container-detail-gallery-thumbnail" class="col-xs-12 col-xs-empty text-left hidden-xs hidden-sm"></div>
                    <h6 class="col-xs-12"></h6>
                    <div id="container-tour-offerte-anchor" class="col-xs-12"></div>
                    <div class="col-xs-12 bg-bianco" id="container-tour-offerte" style="display:none;">
                    </div>
                    <div class="col-xs-12">
                        &nbsp;
                    </div>
                    <div class="col-xs-12 col-xs-left-empty strutture" style="display:none;">
                        <div class="col-xs-12">
                            <div class="col-xs-12 text-center">
                                <i class="fa fa-headphones fa-4x c-viola"></i>
                                <div class="col-xs-12">
                                    &nbsp;
                                </div>
                            </div>
                            <h3 class="ipv-title col-xs-empty text-center">
                                Contattami subito.
                            </h3>
                            <h5 class="ipv-subtitle line-1-25 space-0-25 text-muted text-justify">
                                Sei interessato ad un&apos;offerta specifica e vuoi ricevere maggiori informazioni? lascia i tuoi dati, un assistente a colori sar&agrave; lieto di contattarti per fornirti tutti i dettagli di cui hai bisogno.
                            </h5>
                            <hr />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer -->
        <div id="container-footer"></div>
    </div>
    <script>
        var idTour = '<%=(string)this.RouteData.Values["idTour"]%>';
    </script>
    <script src="/js/app.config.js"></script>
    <script src="/js/init.asset.js?ver=1"></script>
    <script src="/js/init.readmore.js"></script>
    <script src="/js/init.gestione.editoriale.js"></script>
    <script src="/js/wow.min.js"></script>
    <script src="/js/app.business.js"></script>
    <script src="/views/app.view.richiesta.preventivo.js?ver=5"></script>
    <script src="/views/app.view.menu.js"></script>
    <script src="/views/app.offerta.details.js?ver=19"></script>
    <script src="/json/destinazioni.js?ver=2"></script>
    <script src="/js/tour.js?ver=15"></script>
</body>
</html>
