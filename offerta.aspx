<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="System.Web.Routing" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="" />
    <title>IDEE PER VIAGGIARE, OFFERTA</title>
    <meta name="description" content="I viaggi in destinazioni da sogno come: maldive,polinesia,seychelles,giappone,mauritius, thailandia,oman,dubai,stati uniti,messico,caraibi,bali,vietnam e..." />
    <meta name="Keywords" content="offerte maldive,offerte viaggi di nozze,offerte dubai,offerte oceano indiano,offerte messico, offerte stati uniti,offerte caraibi,offerte viaggi" />
    <meta name="google-site-verification" content="Rpg0k8FB7uZkMm6tjwAPnaZynUx--z_yckxaZdK5mW8" />
    <meta http-equiv='expires' content='Mon, 1 Jan 2017 20:30:10 GMT'>
    <link rel="stylesheet" type="text/css" href="/css/init.asset.css?ver=6" />
</head>
<body>
    <input type="hidden" id="detail_txtIdPreventivo" />
    <input type="hidden" id="detail_txtOpzione" />
    <input type="hidden" id="detail_idContenitore" />
<!-- preventivo -->
<div id="detail_preventivo-richiedi" class="modal fade">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <div class="row">
                    <div id="detail_preventivo-richiesta-header" class="row col-xs-empty">
                        <h6 class="col-xs-empty hidden-xs" style="position:absolute; left:94%; z-index:100;">
                            <a href="#" class="btn pull-right fa fa-close fa-lg text-muted" data-dismiss="modal" onclick="$('#chiudi-preventivo').trigger('click');"></a>
                        </h6>
                        
                        <h6 class="col-xs-empty hidden-md hidden-lg text-center">
                            <a href="#" class="btn pull-right fa fa-close fa-lg text-muted hidden-sm hidden-md hidden-lg" onclick="$('#chiudi-preventivo').trigger('click');">
                            </a>
                        </h6>
                        <div class="col-xs-12 col-xs-empty">
                            <div class="hidden-xs">
                                <h5 class="text-center oswald-font text-muted text-uppercase">
                                </h5>
                            </div>
                            <div class="col-xs-12">
                                <h3 class="oswald-font text-uppercase text-center c-marrone col-xs-empty"></h3>
                                <h6></h6>
                            </div>
                            <h6></h6>
                        </div>
                        <div class="col-xs-12 col-xs-empty">
                            <div class="col-xs-4">
                                <div id="detail_preventivo-step-1" class="preventivo-step text-center">
                                    <i class="fa fa-map-marker fa-2x c-rosso"></i>
                                    <sup><i id="detail_preventivo-step-1-icon" class="fa fa-check fa-2x c-rosso"></i></sup>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div id="detail_preventivo-step-2" class="preventivo-step text-center">
                                    <i class="fa fa-address-card fa-2x c-rosso"></i>
                                    <sup><i id="detail_preventivo-step-2-icon" class="fa fa-check fa-2x c-rosso"></i></sup>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div id="detail_preventivo-step-3" class="preventivo-step text-center">
                                    <i class="fa fa-paper-plane fa-2x c-rosso"></i>
                                    <sup><i id="detail_preventivo-step-3-icon" class="fa fa-check fa-2x c-rosso"></i></sup>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-body">
                <div class="col-xs-12 modal-container">
                    <div class="col-xs-12 col-xs-empty">
                        <h6 id="detail_wizard-prev-alert" style="display:none;" class="col-xs-12 alert alert-danger roboto-font line-1-5">
                        </h6>
                    </div>
                    <div class="col-xs-12 col-xs-empty">
                        <div id="detail_wizard-prev-step-1" class="col-xs-12 col-xs-empty">
                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xs-left-empty">
                                <div id="detail_preventivo-riepilogo" class="col-xs-12 col-xs-empty prezzoDettaglio">
                                </div>
                                <div class="col-xs-12">
                                    &nbsp;
                                </div>
                                <div id="detail_preventivo-riepilogo-polizza" class="col-xs-12 col-xs-empty"></div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                <div class="col-xs-12 col-xs-empty">
                                    <h4 class="ipv-title col-xs-empty">
                                        <strong>1.</strong> Riepilogo
                                    </h4>
                                    <hr />
                                </div>
                                <div class="col-xs-12 col-xs-empty">
                                    <div class="col-xs-12 col-xs-empty" id="detail_container-categorie"></div>
                                </div>
                                <div id="detail_wizard-prev-step-3-plus" class="col-xs-12 col-xs-empty">
                                    <h6 class="ipv-subtitle" id="detail-aeroporto-preventivo"></h6>
                                    <input style="display:none;" type="text" id="detail_altroAeroporto" class="form-control" maxlength="75" placeholder="Da dove intendi partire?" />
                                </div>
                                <div class="col-xs-12">
                                    &nbsp;
                                </div>
                                <div id="detail_wizard-prev-step-2-minus">
                                </div>
                                <div id="detail_wizard-prev-step-2-plus">
                                    <div class="col-xs-12 col-xs-empty">
                                        <h5 class="ipv-title">Indica la data di partenza desiderata <span style="color:Red;">*</span></h5>
                                        <div id="warning-alta-stagione" class="col-xs-12 alert alert-danger strutture text-left" style="display:none;">
                                            <h6 class="col-xs-empty ipv-title line-1-5">
                                                <i class="fa fa-exclamation-triangle fa-lg"></i>&nbsp;&nbsp;<strong>ATTENZIONE</strong>: se intendi prenotare il tuo viaggio nel periodo 16 dicembre - 8 gennaio ti consigliamo di consultare direttamente il portale dedicato al capodanno. Se prosegui, l'importo del preventivo che riceverai potrebbe subire variazioni rispetto alla quotazione proposta.
                                            </h6>
                                        </div>
                                        <div id="warning-programmazione" class="col-xs-12 alert alert-danger strutture text-left" style="display:none;">
                                            <h6 class="col-xs-empty ipv-title line-1-5">
                                                <i class="fa fa-exclamation-triangle fa-lg"></i>&nbsp;&nbsp;<strong>ATTENZIONE</strong>: se imposti un periodo non compreso nella programmazione, l'importo del preventivo che riceverai potrebbe subire variazioni rispetto alla quotazione proposta.
                                            </h6>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xs-empty">
                                            <input type="text" id="detail_partenza" class="form-control data" onclick="setPeriodoPartenza_offerta();"
                                                   placeholder="Es: 01/01/2016" readonly style="cursor:pointer;" />
                                            <span class="fa fa-calendar fa-2x form-control-feedback"></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6" style="display:none;">
                                        <h5>Notti</h5>
                                        <div class="col-xs-5 col-xs-left-empty counter-contents">
                                            <input class="form-control dis" type="text" id="detail_txt_notti" disabled minvalue="2" maxvalue="0" defaultvalue="2" value="2" />
                                        </div>
                                        <div class="col-xs-5 col-xs-left-empty detail-counter-actions">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="detail_wizard-prev-step-2" class="col-xs-12 col-xs-empty" style="display:none;">
                            <div class="col-xs-12 col-xs-empty">
                                <h4 class="ipv-title">
                                    <strong>2.</strong> Chi porterai con te in questo meraviglioso viaggio?
                                </h4>
                                <hr />
                            </div>
                            <div class="col-xs-12">
                                &nbsp;
                            </div>
                            <!-- Partecipanti -->
                            <div id="detail_preventivo-partecipanti">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xs-empty ipv-title">
                                    <div class="col-xs-12 col-xs-empty">
                                        <h4 class="ipv-title text-muted col-xs-empty">
                                            Componenti che partiranno
                                        </h4>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <h5><strong>Adulti</strong></h5>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <div class="col-xs-8 col-xs-left-empty counter-contents">
                                            <input class="form-control" type="text" id="detail_txt_preventivo_Adulti" disabled minvalue="2" maxvalue="0" value="2">
                                        </div>
                                        <div class="col-xs-4 col-xs-left-empty detail-counter-actions c-nero">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <h5>
                                            <strong>
                                                Neonati <i class="col-xs-empty fa fa-question-circle" data-toggle="tooltip" title="da 0 a 2 anni non compiuti"></i>
                                            </strong>
                                        </h5>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <div class="col-xs-8 col-xs-left-empty counter-contents">
                                            <input class="form-control" type="text" id="detail_txt_preventivo_neonati" disabled minvalue="0" maxvalue="3" value="0">
                                        </div>
                                        <div class="col-xs-4 col-xs-left-empty detail-counter-actions"></div>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <h5>
                                            <strong>
                                                Bambini <i class="col-xs-empty fa fa-question-circle" data-toggle="tooltip" title="da 2 a 11 anni compiuti"></i>
                                            </strong>
                                        </h5>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <div class="col-xs-8 col-xs-left-empty counter-contents">
                                            <input class="form-control" type="text" id="detail_txt_preventivo_Child" disabled minvalue="0" maxvalue="5" functionname="setPreventiviChild_detail" value="0">
                                        </div>
                                        <div class="col-xs-4 col-xs-left-empty detail-counter-actions">
                                        </div>
                                    </div>
                                    <div id="detail_txt_preventivo_Child_1" class="col-xs-12 col-xs-empty" style="display:none;">
                                        <div class="col-xs-12 col-xs-empty">
                                            <h5><strong>Et&agrave; bambino 1</strong></h5>
                                        </div>
                                        <div class="col-xs-8 col-xs-left-empty counter-contents">
                                            <input class="form-control" type="text" id="detail_txt_preventivo_bambino_1" disabled minvalue="2" maxvalue="11" placeholder="Et&agrave; bambino 1">
                                        </div>
                                        <div class="col-xs-4 col-xs-left-empty detail-counter-actions">
                                        </div>
                                    </div>
                                    <div id="detail_txt_preventivo_Child_2" class="col-xs-12 col-xs-empty" style="display:none;">
                                        <div class="col-xs-12 col-xs-empty">
                                            <h5><strong>Et&agrave; bambino 2</strong></h5>
                                        </div>
                                        <div class="col-xs-8 col-xs-left-empty counter-contents">
                                            <input class="form-control" type="text" id="detail_txt_preventivo_bambino_2" disabled minvalue="2" maxvalue="11" placeholder="Et&agrave; bambino 2">
                                        </div>
                                        <div class="col-xs-4 col-xs-left-empty detail-counter-actions">
                                        </div>
                                    </div>
                                    <div id="detail_txt_preventivo_Child_3" class="col-xs-12 col-xs-empty" style="display:none;">
                                        <div class="col-xs-12 col-xs-empty">
                                            <h5><strong>Et&agrave; bambino 3</strong></h5>
                                        </div>
                                        <div class="col-xs-8 col-xs-left-empty counter-contents">
                                            <input class="form-control" type="text" id="detail_txt_preventivo_bambino_3" disabled minvalue="2" maxvalue="11" placeholder="Et&agrave; bambino 3">
                                        </div>
                                        <div class="col-xs-4 col-xs-left-empty detail-counter-actions">
                                        </div>
                                    </div>
                                    <div id="detail_txt_preventivo_Child_4" class="col-xs-12 col-xs-empty" style="display:none;">
                                        <div class="col-xs-12 col-xs-empty">
                                            <h5><strong>Et&agrave; bambino 4</strong></h5>
                                        </div>
                                        <div class="col-xs-8 col-xs-left-empty counter-contents">
                                            <input class="form-control" type="text" id="detail_txt_preventivo_bambino_4" disabled minvalue="2" maxvalue="11" placeholder="Et&agrave; bambino 4">
                                        </div>
                                        <div class="col-xs-4 col-xs-left-empty detail-counter-actions">
                                        </div>
                                    </div>
                                    <div id="detail_txt_preventivo_Child_5" class="col-xs-12 col-xs-empty" style="display:none;">
                                        <div class="col-xs-12 col-xs-empty">
                                            <h5><strong>Et&agrave; bambino 5</strong></h5>
                                        </div>
                                        <div class="col-xs-8 col-xs-left-empty counter-contents">
                                            <input class="form-control" type="text" id="detail_txt_preventivo_bambino_5" disabled minvalue="2" maxvalue="11" placeholder="Et&agrave; bambino 5">
                                        </div>
                                        <div class="col-xs-4 col-xs-left-empty detail-counter-actions">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-xs-left-empty hidden-sm hidden-md hidden-lg">
                                    <hr />
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xs-empty">
                                    <div class="col-xs-12 col-xs-empty">
                                        <h4 class="ipv-title text-muted col-xs-empty">
                                            Contatto principale
                                        </h4>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty ipv-title">
                                        <h5><strong>Nome</strong> <span style="color:Red;">*</span></h5>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <div class="col-xs-12 col-xs-left-empty">
                                            <input type="text" id="detail_txt_preventivo_Nome" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty ipv-title">
                                        <h5><strong>Cognome</strong> <span style="color:Red;">*</span></h5>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <div class="col-xs-12 col-xs-left-empty">
                                            <input type="text" id="detail_txt_preventivo_Cognome" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty ipv-title">
                                        <h5><strong>E-mail</strong> <span style="color:Red;">*</span></h5>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <div class="col-xs-12 col-xs-left-empty">
                                            <input type="text" id="detail_txt_preventivo_Email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty ipv-title">
                                        <h5><strong>Telefono</strong> <span style="color:Red;">*</span></h5>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <div class="col-xs-12 col-xs-left-empty">
                                            <input type="text" id="detail_txt_preventivo_Telefono" maxlength="20" class="form-control" placeholder="Consigliato!">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="detail_wizard-prev-step-3" class="col-xs-12 col-xs-empty" style="display:none;">
                            <div class="col-xs-12 col-xs-empty ipv-title">
                                <h4>
                                    <strong>3.</strong> Voglia di <span class="titleServiziEsclusivi"><span style="border:1px solid #ea69a0; color:#ea69a0; padding:0.1%; padding-left:6px; padding-right:6px;">SPOSARSI</span> IN VIAGGIO</span> ?
                                </h4>
                                <hr />
                            </div>
                            <div class="col-xs-12">
                                &nbsp;
                            </div>
                            <div class="col-xs-12">
                                <div class="col-xs-12 col-xs-empty">
                                    <span class="btn btn-default btn-cerca" href="#" onclick="serviziEsclusivi = ''; arrServiziEsclusivi = ''; $('#container-idee-gold').empty(); loadCategorieEsclusiveOfferte();">
                                        <strong>
                                            Si
                                        </strong>
                                    </span>
                                    <span class="btn btn-default btn-cerca" href="#" onclick="preventivoNavNext_detail();">
                                        <strong>
                                            No
                                        </strong>
                                    </span>
                                </div>
                                <div class="col-xs-12">
                                    &nbsp;
                                </div>
                                <div class="col-xs-12 alert alert-gold">
                                    <div class="col-xs-12 col-xs-empty">
                                        <i class="fa fa-question-circle fa-lg pull-right"></i>
                                        <h5 class="col-xs-empty" style="text-transform:none;">
                                            Potrai inoltrarci una richiesta di preventivo con innumerevoli opzioni aggiuntive, tutte a Colori, Uniche ed Esclusive.
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    &nbsp;
                                </div>
                                <div id="detail_preventivi-container-idee-gold" class="col-xs-12">
                                </div>
                            </div>
                        </div>
                        <div id="detail_wizard-prev-step-4" class="col-xs-12 col-xs-empty" style="display:none;">
                            <div class="col-xs-12 col-xs-empty">
                                <h4 class="ipv-title">
                                    Pronto per partire?
                                </h4>
                                <hr />
                            </div>
                            <div class="col-xs-12">
                                &nbsp;
                            </div>
                            <div class="col-xs-12 col-xs-empty">
                                <div id="detail_container-idagenzia-from-http">
                                    <div class="col-xs-12 ">
                                        <h5 class="ipv-title">
                                            Se hai un'agenzia di fiducia, indicalo nel campo sottostante.
                                        </h5>
                                        <input type="text" id="detail_txtAgenzia" onkeypress="getAgenzie_detail(this);" onkeyup="getAgenzie_detail(this);" class="form-control col-xs-12" value="" placeholder="Es: Nome Agenzia, Citt&agrave;">
                                        <div id="detail_container-agenzie" class="col-xs-12 col-xs-empty" style="max-height:250px; overflow-y:scroll;">
                                        </div>
                                    </div>
                                    <div class="col-xs-12">
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <h5 class="ipv-title">
                                        Se necessario richiedi informazioni supplementari, ci aiuterà a formulare la migliore offerta possibile. 
                                    </h5>
                                    <textarea name="txtNote" rows="5" cols="20" id="detail_txtNote" class="form-control" placeholder="Es: vorrei sapere se in camera è presente una culla per neonati, oppure, desidero prolungare il mio soggiorno di 5 giorni oltre il periodo previsto dall'offerta, etc."></textarea>
                                </div>
                                <div class="col-xs-12">
                                    &nbsp;
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6" style="display:none;">
                                    <h5>
                                        <input id="detail_chk-anniversario" type="checkbox" value=""><label for="chk-anniversario"></label>
                                        <span class="subTitleDestination">Anniversario?</span>
                                    </h5>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6" style="display:none;">
                                    <h5>
                                        <input id="detail_chk-nozze" type="checkbox" value=""><label for="chk-nozze"></label>
                                        <span class="subTitleDestination">Viaggio di nozze?</span>
                                    </h5>
                                </div>
                                <div class="col-xs-12">
                                    <h4 class="text-primary ipv-title">
                                        Informativa sulla privacy
                                    </h4>
                                    <h5 class="ipv-subtitle" style="text-transform:none !important">
                                        Il sottoscritto presta il suo consenso al trattamento dei dati personali ed all'utilizzo degli stessi per fini indicati nell'<a href="javascript:void(0);" onclick="javascript:showPrivacy();"><strong>INFORMATIVA</strong></a> di <strong>IDEE PER VIAGGIARE</strong>.
                                    </h5>
                                </div>
                                <div class="col-xs-12">
                                    &nbsp;
                                </div>
                                <div class="col-xs-12">
                                    <h5 class="ipv-title">
                                        <input id="detail_rdbInformativaSi" type="radio" value="rdbInformativaSi" name="rdbInformativa"><label for="rdbInformativaSi"></label><span class="subTitleDestination" onclick="$('#detail_rdbInformativaSi').prop('checked', true);">ACCETTO</span>
                                    </h5>
                                    <h5 class="ipv-title">
                                        <input id="detail_rdbInformativaNo" type="radio" value="rdbInformativaNo" name="rdbInformativa" checked="checked"><label for="rdbInformativaNo"></label><span class="subTitleDestination" onclick="$('#detail_rdbInformativaNo').prop('checked', true);">NON ACCETTO</span>
                                    </h5>
                                </div>
                                <div class="col-xs-12">
                                    &nbsp;
                                </div>
                                <div class="col-xs-12">
                                    <hr />
                                    <a id="detail_inviaPreventivo" href="#" class="col-xs-12 btn btn-primary btn-lg page-scroll ipv-title" onclick="return inviaPreventivo_detail();">
                                        INVIA
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 modal-message">
                    <h4>
                        Il tuo preventivo è stato inviato con successo, a breve sarai contattato da un componente del nostro Staff.<br /><br />
                    </h4>
                    <h5>
                        <i>Grazie per averci scelto!</i>
                    </h5>
                </div>
            </div>
            <div class="modal-footer">
                <div class="col-xs-12 col-xs-empty">
                    <hr />
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <div id="detail_container-fields-required" class="col-xs-12 col-xs-empty">
                        <div class="col-xs-12 col-xs-empty u-text-left">
                            <div class="col-xs-12 col-xs-empty">
                                <h6 class="col-xs-empty">
                                    <i class="fa fa-asterisk c-rosso pull-left"></i> <strong>Ricorda</strong>, i campi contrassegnati con l'asterisco rosso sono obbligatori.
                                </h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 hidden-sm hidden-md hidden-lg">
                    &nbsp;
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <a id="chiudi-preventivo" href="#" class="btn btn-default btn-cerca" data-dismiss="modal" onclick="$('#detail_proposta-details').modal('hide'); $('#detail_preventivo-riepilogo').empty(); $('.topToolbar').hide();">
                        <strong>
                            Chiudi
                        </strong>
                    </a>
                    <a id="detail_btn-wizard-preventivo-prev" href="#" onclick="preventivoNavPrev_detail();" class="btn btn-default btn-cerca" style="display:none;">
                        <strong>
                            Indietro
                        </strong>
                    </a>
                    <a id="detail_btn-wizard-preventivo-next" href="#" onclick="preventivoNavNext_detail();" class="btn btn-primary btn-cerca">
                        <strong>
                            Avanti
                        </strong>
                    </a>
                </div>
                <div class="col-xs-12">
                    &nbsp;
                </div>
            </div>
        </div>
    </div>
</div>

    <div id="scrtop" style="display:none;">
    <div style="top:80%; left:92%; width:10%; position:fixed; z-index:999999999999999999999999;">
        <div class="col-xs-12 text-center">
            <a href="#" class="btn btn-default btn-sm" id="go2Top">
                <i class="fa fa-angle-up fa-lg"></i>
            </a>
        </div>
    </div>
    </div>
    <div class="row">
        <div class="container-fluid">
            <div id="container-menu"></div>
            <div id="container-offerta" class="container-fluid">
                <hr class="col-xs-empty" />
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"></div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 c-marrone">
                    <h2 id="travel-title" class="text-center text-uppercase oswald-font col-xs-empty"></h2>
                    <h6 id="map-marker-destinazioni" class="roboto-font text-muted col-xs-empty" style="display:none;"></h6>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"></div>
                <div class="offerta-visore-thumb col-xs-12 col-sm-8 col-md-8 col-lg-8 hidden-xs">
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 col-xs-empty">
                    <div id="container-offerta-price" class="col-xs-empty"></div>
                    <div class="col-xs-12">&nbsp;</div>
                    <div id="container-offerta-left" class="col-xs-12 hidden-xs" style="display:none;">
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 col-xs-empty">
                </div>
                <div id="container-offerta-body" class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                    <div id="container-offerta-visore" class="col-xs-12">
                    </div>
                    <div id="container-offerta-struttura" class="row">
                        <!-- visore centrale -->
                        <div id="offerta-visore-centrale-empty" class="row" style="background-color:#006ab3; display:none;">
                            <div id="bannerHome" class="row">
                                <h3 class="hidden-xs" style="padding-top:20%; padding-bottom:20%; color:#fff; text-transform:none; font-family:'Roboto'; font-size:16px;">
                                    Caricamento in corso...<br />
                                    <i class="fa fa-spinner fa-spin fa-2x"></i>
                                </h3>
                            </div>
                        </div>
                        <div id="offerta-visore-centrale" class="col-xs-12" style="display:block;">
                            <div class="col-xs-12 col-xs-empty">
                                <div id="carousel-detail-index" class="carousel slide" data-ride="carousel" data-interval="false">
                                    <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 col-xs-empty">
                                        <div class="hotel-title oswald-font hidden-xs"
                                             style="position:absolute; width:100%; top:0; z-index:1; background: rgba(0, 0, 0, 0.60);
                                            color:#fff; text-align:center; font-size:24px;">
                                        </div>
                                        <div id="container-detail-carousel-index" class="carousel-inner" role="listbox">
                                        </div>
                                    </div>
                                    <div id="container-detail-gallery-thumbnail" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 col-xs-empty text-left">
                                    </div>
                                </div>
                                <div id="container-hotel">
                                    <h6 class="col-xs-12">&nbsp;</h6>
                                    <div class="col-xs-12 col-xs-empty">
                                        <h5 class="hotel-isola u-text-left roboto-font col-xs-empty"></h5>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <h1 class="hotel-title-intro col-xs-empty c-marrone lato-font u-text-left text-uppercase hidden-sm hidden-md hidden-lg"></h1>
                                    </div>
                                    <div id="container-giudizio">
                                        <div id="container-hotel-giudizio" class="col-xs-12 col-xs-empty">
                                            <h6 id="hotel-giudizio" class="roboto-font text-muted col-xs-left-empty"></h6>
                                        </div>
                                    </div>
                                    <h4 class="container-servizio-tappa col-xs-12 col-xs-left-empty"></h4>
                                    <div id="container-introduzione">
                                        <div id="hotel-rating" class="col-xs-12 col-xs-empty"></div>
                                        <div class="col-xs-12 col-xs-empty">
                                            <h5 id="introduzione" class="text-justify ipv-title line-1-25"></h5>
                                        </div>
                                    </div>
                                    <div id="container-sistemazione">
                                        <div class="col-xs-12 col-xs-empty">
                                            <hr class="col-xs-empty" />
                                            <h5 class="ipv-title text-left c-ipv">
                                                <img src="/images/icon-sistemazioni.png">&nbsp;&nbsp;Sistemazioni
                                            </h5>
                                        </div>
                                        <div class="col-xs-12 col-xs-empty">
                                            <h6 id="sistemazione" class="text-justify text-muted ipv-paragraph space-0-25 line-1-5"></h6>
                                        </div>
                                    </div>
                                    <div id="container-ristorazione">
                                        <div class="col-xs-12 col-xs-empty">
                                            <hr class="col-xs-empty" />
                                            <h5 class="ipv-title text-left c-ipv">
                                                <img src="/images/icon-ristorazione.png">&nbsp;&nbsp;Ristorazione
                                            </h5>
                                        </div>
                                        <div class="col-xs-12 col-xs-empty">
                                            <h6 id="ristorazione" class="text-justify text-muted ipv-paragraph space-0-25 line-1-5"></h6>
                                        </div>
                                    </div>
                                    <div id="container-tempo-libero">
                                        <div class="col-xs-12 col-xs-empty">
                                            <hr class="col-xs-empty" />
                                            <h5 class="ipv-title text-left c-ipv">
                                                <img src="/images/icon-tempo-libero.png">&nbsp;&nbsp;Tempo libero
                                            </h5>
                                        </div>
                                        <div class="col-xs-12 col-xs-empty">
                                            <h6 id="tempoLibero" class="text-justify text-muted ipv-paragraph space-0-25 line-1-5"></h6>
                                        </div>
                                    </div>
                                    <div id="container-bambini">
                                        <div class="col-xs-12 col-xs-empty">
                                            <hr class="col-xs-empty" />
                                            <h5 class="ipv-title text-left c-ipv">
                                                <img src="/images/icon-kids.png">&nbsp;&nbsp;Per i pi&ugrave; piccoli
                                            </h5>
                                        </div>
                                        <div class="col-xs-12 col-xs-empty">
                                            <h6 id="bambini" class="text-justify text-muted ipv-paragraph space-0-25 line-1-5"></h6>
                                        </div>
                                    </div>
                                    <div id="container-all-inclusive">
                                        <div class="col-xs-12 col-xs-empty">
                                            <hr class="col-xs-empty" />
                                            <h5 class="ipv-title text-left c-ipv">
                                                <i class="fa fa-glass"></i>&nbsp;&nbsp;Trattamenti disponibili
                                            </h5>
                                        </div>
                                        <div class="col-xs-12 col-xs-empty">
                                            <h6 id="all-inclusive" class="text-justify text-muted ipv-paragraph space-0-25 line-1-5"></h6>
                                        </div>
                                    </div>
                                    <div class="col-xs-12">
                                        &nbsp;
                                    </div>
                                </div>
                                <div id="container-tour" style="display:none;">
                                    <h6 class="col-xs-12">&nbsp;</h6>
                                    <div class="col-xs-12 col-xs-empty">
                                        <h5 class="tour-isola u-text-left roboto-font col-xs-empty"></h5>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <h2 class="tour-title-intro col-xs-empty c-marrone lato-font u-text-left text-uppercase hidden-sm hidden-md hidden-lg"></h2>
                                    </div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <h6 id="tour-giudizio" class="roboto-font text-muted col-xs-left-empty"></h6>
                                    </div>
                                    <h4 class="container-servizio-tappa col-xs-12 col-xs-left-empty lato-font"></h4>
                                    <div id="tourDayByDay" class="col-xs-12 col-xs-empty"></div>
                                    <div class="col-xs-12 col-xs-empty">
                                        <hr />
                                        <h6 id="tour-note" class="roboto-font col-xs-empty text-muted"></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12">
            <div id="container-footer"></div>
        </div> 
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
<script src="/js/init.asset.js?ver=3"></script>
<script>
    // init callback
    function loadAsyncMultiple(items, callback) {
        this.items = items;
        this.callback = callback;
        this.loaded_items_counter = 0;
        this.items_length = 0;
        this.items_loaders = new Array();
        //inizializza
        this.loadAll = function () {
            //numero di elementi da caricare
            this.items_length = this.items.length;
            //cicla elementi
            for (var i = 0; i < this.items_length; i++) {
                this.loadScript(i, this.items[i].url, this.items[i].type);
            }
        };
        //caricamento singolo elemento
        this.loadScript = function (i, url, type) {
            var tis = this;
            this.items_loaders[i] = { r: false, s: {} };
            switch (type) {
                case 'css':
                    this.items_loaders[i].s = document.createElement('link');
                    this.items_loaders[i].s.rel = 'stylesheet';
                    this.items_loaders[i].s.type = 'text/css';
                    this.items_loaders[i].s.href = url;
                    break;
                case 'js':
                    this.items_loaders[i].s = document.createElement('script');
                    this.items_loaders[i].s.type = 'text/javascript';
                    this.items_loaders[i].s.src = url;
                    break;
            }
            this.items_loaders[i].s.async = true;
            this.items_loaders[i].s.onload = this.items_loaders[i].s.onreadystatechange = function () {
                if (!tis.items_loaders[i].r && (!this.readyState || this.readyState === 'complete')) {
                    tis.items_loaders[i].r = true;
                    tis.incrementCounter();
                }
            };
            document.getElementsByTagName('head')[0].appendChild(this.items_loaders[i].s);
        };
        //counter
        this.incrementCounter = function () {
            this.loaded_items_counter++;
            //quando tutti gli elementi sono stati caricati
            if (this.loaded_items_counter === this.items_length) {
                //se è stata definita una funzione di callback
                if (this.callback && typeof this.callback === "function") {
                    this.callback();
                }
            }
        };
    };
    var selectedMenu = 6;
    var items = [
        { 'type': 'css', 'url': 'https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700|Lato:300,700,800,900|Oswald|Roboto:200,300,400,500,600,700,800,900' },
        { 'type': 'css', 'url': '/css/font-awesome.min.css' },
        { 'type': 'css', 'url': '/css/style.css?ver=14' },
        { 'type': 'js', 'url': '/views/app.view.menu.js?ver=15' },
        { 'type': 'js', 'url': '/views/app.view.richiesta.preventivo.js?ver=4' },
        //{ 'type': 'js', 'url': '/views/app.offerta.details.js?ver=16' },
        { 'type': 'js', 'url': '/views/app.offerte.bestdeal.js?ver=9' },
        { 'type': 'js', 'url': '/models/app.model.session.js' },
        { 'type': 'js', 'url': '/js/init.storage.js' },
        { 'type': 'js', 'url': '/js/wow.min.js' },
        { 'type': 'js', 'url': '/js/app.config.js' },
        { 'type': 'js', 'url': '/json/destinazioni.js' },
    ];
    var callback_func = function () {
        console.log('Tutti gli script sono stati caricati!');
        var items = [
            //{ 'type': 'js', 'url': '/js/app.business.js?ver=1' },
            { 'type': 'js', 'url': '/js/app.business.offerta.js?ver=2' },
        ]
        var loader = new loadAsyncMultiple(items, callback_business);
        loader.loadAll();
    };
    var callback_business = function () {
        console.log('Lo script business é stato caricato!');
        initOfferta(<%=(string)this.RouteData.Values["idpreventivo"]%>, <%=(string)this.RouteData.Values["opzione"]%>, <%=(string)this.RouteData.Values["idcontenitore"]%>);
    };
    var loader = new loadAsyncMultiple(items, callback_func);
    loader.loadAll();
</script>

