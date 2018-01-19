<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE html>
<html>
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>IDEE PER VIAGGIARE, LO STAFF</title>
        <meta name="description" content="">
        <meta name="Keywords" content="">
        <meta name="author" content="" />
        <meta http-equiv='cache-control' content='no-cache'>
        <meta http-equiv='expires' content='0'>
        <meta http-equiv='pragma' content='no-cache'>
        <link href='https://fonts.googleapis.com/css?family=Lato:300,700,800,900|Oswald|Roboto:200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="/css/init.asset.css" />
        <link rel="stylesheet" type="text/css" href="/css/style.css?ver=1" />
        <link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css" />
    </head>
<body>
    <!-- RICHIESTA Preventivo -->
    <div id="container-richiesta-preventivo"></div>
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

    <!-- go2Top -->
    <div id="scrtop" style="display:none;">
        <div style="top:90%; width:100%; position:fixed; z-index:999999999999999999999999;">
            <div class="container-fluid col-xs-12">
                <a href="#" class="btn btn-default btn-sm pull-right" id="go2Top">
                    <i class="fa fa-angle-up fa-lg"></i>
                </a>
            </div>
        </div>
    </div>

    <!-- staff-zoom -->
    <div id="container-staff-zoom" class="modal fade">
        <div class="modal-dialog modal-lg">
            <div class="modal-content col-xs-empty">
                <div class="modal-body col-xs-empty">
                    
                </div>
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
                    <div id="bannerHome" class="row">
                        <h3 class="hidden-xs" style="padding-top:20%; padding-bottom:20%; color:#fff; text-transform:none; font-family:'Roboto'; font-size:16px;">
                            Caricamento in corso...<br />
                            <i class="fa fa-spinner fa-spin fa-2x"></i>
                        </h3>
                    </div>
                </div>
                <div id="visore-centrale" style="display:none;">
                    <div id="carousel-staff-zoom" class="carousel slide col-xs-empty" data-ride="carousel" data-interval="false">
                        <div class="col-xs-12 col-xs-empty">
                            <hr />
                        </div>
                        <div class="col-xs-6" style="position:absolute; top:20px; width:50%; z-index:10;">
                            <a id="btnPrev" class="btn pull-left" href="#carousel-staff-zoom" role="button" data-slide="prev">
                                <i class="fa fa-angle-left fa-3x c-nero col-xs-left-empty" aria-hidden="true"></i>
                            </a>
                        </div>
                        <div class="col-xs-6" style="position:absolute; top:20px; left:50%; width:50%; z-index:10;">
                            <a id="btnNext" class="btn pull-right" href="#carousel-staff-zoom" role="button" data-slide="next">
                                <i class="fa fa-angle-right fa-3x c-nero col-xs-left-empty" aria-hidden="true"></i>
                            </a>
                        </div>
                        <!-- content -->
                        <div id="carousel-staff-zoom-content" class="carousel-inner col-xs-empty" role="listbox">
                        </div>
                    </div>
                </div>
                <!-- about intro -->
                <div class="row col-xs-empty home-section" id="about">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="background-color:#f5f5f5; padding-top:70px; padding-bottom:85px;">
                        <div class="col-xs-12 wow fadeInUp">
                            <h1 class="ipv-header space-n-0-25 text-center">
                                Ode allo <span class="c-ipv">Staff.</span>
                            </h1>
                        </div>
                        <div class="wow fadeIn col-xs-12 col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3 col-lg-4 col-lg-offset-4">
                            <h5 class="ipv-subtitle text-muted line-1-30 text-center">
                                Agenzie e Clienti, dalla partenza all&apos;arrivo,<br />
                                <b class="c-nero">tutti insieme uniti, é il nostro obiettivo.</b>
                            </h5>
                        </div>
                        <div class="wow fadeIn col-xs-12 col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3 col-lg-4 col-lg-offset-4">
                            <h5 class="ipv-subtitle text-muted line-1-30 text-center">
                                Cento professionisti, stelle nel firmamento,<br />
                                <b class="c-nero">la palma e i colori, l&apos;unico riferimento.</b>
                            </h5>
                        </div>
                        <div class="wow fadeIn col-xs-12 col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3 col-lg-4 col-lg-offset-4">
                            <h5 class="ipv-subtitle text-muted line-1-30 text-center">
                                IDEE PER VIAGGIARE, passione, gioie e dolori,<br />
                                <b class="c-nero">da oltre 25 anni, lavoriamo a colori.</b>
                            </h5>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        &nbsp;
                    </div>
                    <div class="container-fluid" id="container-staff"></div>
                    </div>
            </div>
        </div>
    </div>

    <!-- footer -->
    <div id="container-footer"></div>

    <script src="/js/app.config.js"></script>
    <script src="/js/init.asset.js"></script>
    <script src="/js/wow.min.js"></script>
    <script src="/views/app.view.richiesta.preventivo.js?ver=4"></script>
    <script src="/views/app.view.menu.js?ver=3"></script>
    <script src="/json/staff.js?ver=3"></script>

    <!-- init menu -->
    <script>
        $(function () {
            initVisore();

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
                    selectedItem: 0,
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

        wow = new WOW({
            boxClass: 'wow', // default
            animateClass: 'animated', // default
            offset: 250, // default
            mobile: true, // default
            live: true // default
        })
        wow.init();
    </script>

    <!-- init visore -->
    <script>
        function initVisore() {
            $(['images/staff-danilo.jpg']).preload();
        }
        function load_staff_zoom(index) {
            $('#staff-' + index).attr('src', 'images/' + staff[index].imgzoom);
            $('#carousel-staff-zoom').carousel(index);
            //$('#container-staff-zoom').modal('show');
        }
        var output = '';
        var sectionId = -1;
        $.each(staff, function (i, item) {
            if (sectionId != item.sectionId) {
                if (i > 0) {
                    output += '<div class="col-xs-12"><hr /></div>';
                }
                output += '<div class="col-xs-12">';
                output += '<h4 class="ipv-header">';
                output += '<span class="c-nero">';
                output += '<strong>' + item.sectionName + '</strong>';
                output += '</span>';
                output += '</h4>';
                output += '</div>';
                output += '<div class="col-xs-12">&nbsp;</div>';
                sectionId = item.sectionId;
            }
            output += '<div class="col-xs-4 col-sm-3 col-md-2 col-lg-2 ipv-century">';
                output += '<div class="col-xs-12">';
                    output += '<a href="#" onclick="load_staff_zoom(' + i + ')">';
                        output += '<img src="images/' + item.imgthumb + '?ver=' + $.now() + '" class="img-responsive img-thumbnail center-block" />';
                    output += '</a>';
                output += '</div>';
                output += '<div class="col-xs-12 text-center">';
                    output += '<h5>' + item.nome + ' <strong>' + item.cognome + '</strong></h5>';
                    //output += '<h6>' + item.role + '</h6>';
                    //output += '<h6>'+ item.mail + '@</h6>';
                output += '</div>';
            output += '</div>';
        });
        $('#container-staff').append(output);

        output = '';
        var carouselCss = '';
        $.each(staff, function (i, item) {
            //if (sectionId != item.sectionId) {
            //    output += '<div class="col-xs-12"><hr /></div>';
            //    output += '<div class="col-xs-12">';
            //    output += '<h4 class="ipv-century text-uppercase">';
            //    output += '<span class="c-nero wow fadeInLeft">';
            //    output += '<strong>' + item.sectionName + '</strong>';
            //    output += '</span>';
            //    output += '</h4>';
            //    output += '</div>';
            //    output += '<div class="col-xs-12">&nbsp;</div>';
            //    sectionId = item.sectionId;
            //}
            if (i == 0) {
                carouselCss = 'item active';
            } else {
                carouselCss = 'item';
            }
            output += '<div class="' + carouselCss + ' col-xs-12 col-xs-empty ipv-century">';
                output += '<div class="col-xs-12" style="position:absolute; left:60%; width:40%; top:50px; z-index:100000;">';
                    output += '<img src="images/lavoriamo-a-colori.png" class="img-responsive" />';
                    output += '<h5>&nbsp;</h5>';
                    //output += '<h6 class="text-muted space-0-5 col-xs-empty">' + item.sectionName.toUpperCase() + '</h6>';
                    output += '<h3 class="hidden-xs">' + item.nome + ' <strong>' + item.cognome + '</strong></h3>';
                    output += '<h4 class="hidden-sm hidden-md hidden-lg">' + item.nome + ' <strong>' + item.cognome + '</strong></h4>';
                    output += '<h5 class="hidden-xs"><strong>' + item.role + '</strong></h5>';
                    if (item.mail != undefined) {
                        output += '<h5 class="hidden-xs">' + item.mail + '@</h5>';
                    }
                    output += '<h4>&nbsp;</h4>';
                    if (item.twit != undefined) {
                        output += '<h5 class="col-xs-10 ipv-subtitle hidden-xs col-xs-empty text-muted"><p>' + item.twit + '</p></h5>';
                    } else {
                        output += '<h5 class="col-xs-10 ipv-subtitle hidden-xs col-xs-empty text-muted"><p>Sto ancora pensando alla mia frase celebre...</p></h5>';
                    }
                output += '</div>';
                output += '<div class="col-xs-9 col-xs-empty">';
                output += '<img ';
                if (i == 0) {
                    output += 'src="images/' + item.imgzoom + '?ver=' + $.now() + '"';
                }
                output += 'id="staff-' + i + '" class="img-responsive ';
                if (item.imgalign != undefined) {
                    output += item.imgalign + '" />';
                } else {
                    output += 'center-block" />';
                }
                output += '</div>';
            output += '</div>';
        });
        $('#carousel-staff-zoom-content').append(output);
        $('#carousel-staff-zoom').carousel();

        $('#btnPrev').click(function () {
            $('#staff-' + (eval($("#carousel-staff-zoom div.active").index()) - 1)).attr('src', 'images/' + staff[eval($("#carousel-staff-zoom div.active").index()) - 1].imgzoom);
        });
        $('#btnNext').click(function () {
            $('#staff-' + (eval($("#carousel-staff-zoom div.active").index()) + 1)).attr('src', 'images/' + staff[eval($("#carousel-staff-zoom div.active").index()) + 1].imgzoom);
        });
    </script>

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
