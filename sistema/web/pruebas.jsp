
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Cierre Asignacion</title>
        <link rel="shortcut icon" href="image/logoSicsa/icon-sicsa.png">
        <link rel="stylesheet" type="text/css" href="css/css/icons-material.css">
        <link rel="stylesheet" type="text/css" href="css/css/materialize.min.css">
        <link rel="stylesheet" type="text/css" href="css/css/style.css">
    </head>

    <body>
        <jsp:include page="header.jsp" />
        <div class="row" id="contenido">
            <div class="container-fluid">
                <nav class="grey darken-4 nav_gestor" >
                    <div class="nav-wrapper icon_nav_gestor">
                        <a id="menu" href="#!" class="brand-logo left"><i class="material-icons icon_nav icon_menu">menu</i></a>
                        <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons" style="display:none;">menu</i></a>
                        <input id="search_gestor" class="search center-align grey darken-2" type="text" placeholder="Buscar">
                        <ul class="icon_nav right">
                            <li><a href="mobile.html"><i class="material-icons icon_nav">more_vert</i></a></li>
                        </ul>
                    </div>
                </nav>
                <div class="row">
                    <div class="col s12 m12 s12 grey darken-4 marg_control">
                        <div class="input-field col s2 m2 l2">
                            <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                            <label for="icon_prefix">P.llamada</label>
                        </div>
                        <div class="input-field col s2 m2 l2">
                            <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                            <label for="icon_prefix">Actual</label>
                        </div>
                        <div class="input-field col s2 m2 l2">
                            <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                            <label for="icon_prefix">R. Actual</label>
                        </div>
                        <div class="input-field col s2 m2 l2">
                            <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                            <label for="icon_prefix">Cuenta</label>
                        </div>
                        <div class="input-field col s2 m2 l2">
                            <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                            <label for="icon_prefix" class="centro">Llamadas</label>
                        </div>
                        <div class="input-field col s2 m2 l2">
                            <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                            <label for="icon_prefix">Convenios</label>
                        </div>
                    </div>	
                    <div class="col s12 m12 s12">
                        <div class="fixed-action-btn">
                            <a class="btn-floating btn-large red">
                                <i class="large material-icons">menu</i>
                            </a>
                            <ul>
                                <li><a id="m_gestiones" class="btn-floating tooltipped grey darken-2" data-delay="50" data-tooltip="Gestiones"><i class="material-icons">picture_in_picture_alt</i></a></li>
                                <li><a id="m_bancarias" class="btn-floating tooltipped grey darken-2" data-delay="50" data-tooltip="Ref Bancarias"><i class="material-icons">payment</i></a></li>
                                <li><a id="m_pagos" class="btn-floating tooltipped grey darken-2" data-delay="50" data-tooltip="Pagos"><i class="material-icons">monetization_on</i></a></li>
                                <li><a id="m_agendar" class="btn-floating tooltipped grey darken-2" data-delay="50" data-tooltip="Agenda"><i class="material-icons">today</i></a></li>
                                <li><a id="m_visitas" class="btn-floating tooltipped grey darken-2" data-delay="50" data-tooltip="Visitas"><i class="material-icons">location_on</i></a></li>
                                <li><a id="m_convenios" class="btn-floating tooltipped grey darken-2" data-delay="50" data-tooltip="Convenios"><i class="material-icons">people</i></a></li>
                                <li><a  id="m_diarios" class="btn-floating tooltipped grey darken-2" data-delay="50" data-tooltip="Pagos Diarios"><i class="material-icons">local_atm</i></a></li>
                                <li><a id="m_saldos" class="btn-floating tooltipped  grey darken-2" data-delay="50" data-tooltip="Saldos"><i class="material-icons">info</i></a></li>
                                <li><a id="m_estadisticas" class="btn-floating tooltipped grey darken-2" data-delay="50" data-tooltip="Estadisticas"><i class="material-icons">insert_chart</i></a></li>
                            </ul>
                        </div>
                    </div>	
                    <div id="" class="col s12 m12 l12" >
                        <div class="row">
                            <div class="input-field col s12 m4 l4">
                                <i class="material-icons prefix top_icon">person</i>
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Nombre</label>
                            </div>
                            <div class="input-field col s6 m2 l2">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Cuenta</label>
                            </div>
                            <div class="input-field col s6 m2 l2">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Expediente</label>
                            </div>
                            <div class="input-field col s6 m2 l2">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Resto</label>
                            </div>
                            <div class="input-field col s6 m2 l2">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Cancelacion</label>
                            </div>
                        </div>
                    </div>		
                    <div class="col s12 m3 l3">
                        <div class="row">
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Vencido</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Pagado</label>
                            </div>
                        </div>    
                        <div class="row">    
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Pena Fineq</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Pena Kit BP</label>
                            </div>
                        </div>    
                        <div class="row">    
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Ultimo Pago</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Plazo</label>
                            </div>
                        </div>	
                        <div class="row">	
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Ctas. Dobles</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Total Cuentas Dbls</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Inicio</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Devolucion</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Asignacion</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Plan</label>
                            </div>
                        </div>    
                        <div class="row">    
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Equipo</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">M. Baja</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12 m12 l12">
                                <input id="icon_prefix" type="text" class="validate" placeholder="" readonly="readonly">
                                <label for="icon_prefix">Direccion</label>
                            </div>
                        </div>
                    </div>
                    <div class="col s12 m9 l9 padding_gestor">
                        <div class="">
                            <div id="ges" class="col s12 z-depth-4 div_info center-align div_height">
                                <div class="col s12 right-align">
                                    <i id="expand" class="material-icons tiny">expand_more</i>
                                    <i id="reduce" class="material-icons tiny">expand_less</i>
                                </div>
                                <div class="col s12 right-align">
                                    <table class="table highlight">
                                        <thead>
                                            <tr>
                                                <th>Fecha</th>
                                                <th>Hora</th>
                                                <th>Numero</th>
                                                <th>Agente</th>
                                                <th>Estatus</th>
                                                <th>Codigo</th>
                                                <th>Disposicion</th>
                                                <th>Tiempo</th>
                                            <tr>	
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td colspan="8" class="pad">
                                                    <div class="innerb center">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>2</td>
                                                                    <td>3</td>
                                                                    <td>4</td>
                                                                    <td>5</td>
                                                                    <td>6</td>
                                                                    <td>7</td>
                                                                    <td>8</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>2</td>
                                                                    <td>3</td>
                                                                    <td>4</td>
                                                                    <td>5</td>
                                                                    <td>6</td>
                                                                    <td>7</td>
                                                                    <td>8</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>				
                            </div>
                        </div>	
                    </div>
                    <div class="col col s12 m4 l4 padding_gestor">
                        <div class="col s12 z-depth-4 div_info phone_box center-align">
                            <div class="col s12 right-align">
                                <table class="table highlight">
                                    <thead>
                                        <tr>
                                            <th><i class="material-icons">android</i></th>
                                            <th>telefono</th>
                                            <th>Nombre</th>
                                            <th>Disposicion</th>
                                        <tr>	
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td colspan="3">
                                                <div class="innerb">
                                                    <table class="table highlight">
                                                        <tbody>
                                                            <tr>
                                                                <td>T1</td>
                                                                <td>8182567830</td>
                                                                <td>Jose Martin</td>
                                                                <td></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col col s12 m5 l5 padding_gestor">
                        <div class="col s12 z-depth-4 div_info phone_box">
                            <div class="input-field col s6">
                                <select>
                                    <option value="" disabled selected>Selecciona Estatus</option>
                                    <option value="1"></option>
                                    <option value="2"></option>
                                </select>
                                <label>Estatus</label>
                            </div>
                            <div class="input-field col s6">
                                <select id="codigo_select">
                                    <option value="" disabled selected>Selecciona Codigo</option>
                                    <option value="1">1A (promesa de Pago)</option>
                                    <option value="2">3D (Contacto con Titular)</option>
                                    <option value="3">3A (Contacto con Familiar)</option>
                                    <option value="4">3B (No Contacto)</option>
                                    <option value="5">3E (Llamada Entrante)</option>
                                    <option value="6">2A (Gestion de Visita)</option>
                                    <option value="7">1B (Pago Parcial)</option>
                                    <option value="8">1C (Cuenta Liquidada)</option>
                                    <option value="9">1D (Pendiente Reactivar)</option>
                                    <option value="10">3C (No Gestion)</option>
                                    <option value="11">4A (Buzon Voz)</option>
                                    <option value="12">4B (Tel No Existe)</option>
                                    <option value="13">4C (Tel Suspendido)</option>
                                    <option value="14">4D (No Conoce a Titular)</option>
                                    <option value="15">4F (Cambio Domicilio)</option>
                                    <option value="16">4G (Ilocalizable)</option>
                                    <option value="17">4E (A Peticion de Famsa)</option>
                                    <option value="18">4H (Dictaminada)</option>
                                    <option value="19">4J (No Contesta Predictivo)</option>
                                    <option value="20">2B (Segunda Gestion Visita)</option>
                                    <option value="21">3F (Tercera Gestion Visita)</option>
                                </select>
                                <label>Codigo</label>
                            </div>
                            <div class="input-field col s12">
                                <textarea id="gestion" class="materialize-textarea" data-length="500"></textarea>
                                <label for="gestion">Gestion</label>
                            </div>
                            <div class="col s12 center-align">
                                <a class="waves-effect waves-light btn green button_gestor"><i class="material-icons right">save</i>Ok.</a>
                                <a class="waves-effect waves-light btn red button_gestor"><i class="material-icons right">send</i>Sig.</a>	
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Inician Modales -->
                <div id="modal_bancarias" class="modal">
                    <div class="modal-content">
                        <h4 class="center">Referencias Bancarias</h4>
                        <ul class="collection">
                            <li class="collection-item avatar">
                                <img src="images/bancoSicsa/banamex.png" alt="" class="circle">
                                <span class="title">Banamex</span>
                                <h5 class="secondary-content ">No de Cuenta</h5>
                            </li>
                            <li class="collection-item avatar">
                                <img src="images/bancoSicsa/bancomer.png" alt="" class="circle">
                                <span class="title">Bancomer</span>
                                <h5 class="">182251</h5>
                                <h5 class="secondary-content ">No de Cuenta</h5>
                            </li>
                            <li class="collection-item avatar">
                                <img src="images/bancoSicsa/hsbc.png" alt="" class="circle">
                                <span class="title">HSBC</span>
                                <h5 class="">2904</h5>
                                <h5 class="secondary-content ">No de Cuenta</h5>
                            </li>
                            <li class="collection-item avatar">
                                <img src="images/bancoSicsa/banorte.png" alt="" class="circle">
                                <span class="title">Banorte</span>
                                <h5 class="">37478</h5>
                                <h5 class="secondary-content ">No de Cuenta</h5>
                            </li>
                            <li class="collection-item avatar">
                                <img src="images/bancoSicsa/santander.png" alt="" class="circle">
                                <span class="title">Santander</span>
                                <h5 class="">4565</h5>
                                <h5 class="secondary-content ">No de Cuenta</h5>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="modal_pagos" class="modal">
                    <div class="modal-content">
                        <h4 class="center">Pagos</h4>
                        <div class="col l12">
                            <table class="table highlight responsive-table">
                                <thead>
                                    <tr>
                                        <th>Cuenta</th>
                                        <th>Fecha Pago</th>
                                        <th>Origen</th>
                                        <th>Importe</th>
                                        <th>Forma</th>
                                        <th>Estatus</th>
                                        <th>Fecha Aplicacion</th>
                                    <tr>	
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="7">
                                            <div class="innerb">
                                                <table class="table highlight responsive-table">
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>					
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Cerrar</a>
                    </div>
                </div>
                <div id="modal_agendar" class="modal">
                    <div class="modal-content">
                        <h4 class="center">Agendar Llamada</h4>
                        <div class="col s12 m12 l12 center">
                            <label for="">Dia</label>
                            <input id="" name="" type="text" class="validate datepicker input_modal">
                            <label for="">Hora</label>
                            <input id="" name="" type="text" class="validate timepicker input_modal">
                        </div>
                        <div class="col s12 m12 l12">
                            <label for="lunch">Motivo</label>
                            <input id="lunch" name="fecha" type="text" class="validate">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a id="m_agenda" class="waves-effect waves-light btn blue darken-3 button_gestor"><i class="material-icons left"></i>Ver mi agenda</a>
                        <a class="waves-effect waves-light btn green button_gestor">Agendar<i class="material-icons left input_modal center">send</i></a>
                    </div>
                </div>
                <div id="modal_agenda" class="modal">
                    <div class="modal-content">
                        <h4 class="center">Mi Agenda</h4>
                        <div class="col l12">
                            <div class="col l12">
                                <table class="table highlight responsive-table">
                                    <thead>
                                        <tr>
                                            <th>Cuenta</th>
                                            <th>Dìa</th>
                                            <th>Hora</th>
                                            <th>Tel y Motivo</th>
                                        <tr>	
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td colspan="4">
                                                <div class="innerb">
                                                    <table class="table highlight responsive-table">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>					
                            </div>
                        </div>
                    </div>
                </div>
                <div id="modal_visitas" class="modal">
                    <div class="modal-content">
                        <h4>Visitas</h4>
                    </div>
                </div>
                <div id="modal_convenios" class="modal">
                    <div class="modal-content">
                        <h4>Convenios</h4>
                        <div class="col s12 right-align">
                            <table class="table highlight">
                                <thead>
                                    <tr>
                                        <th>Folio</th>
                                        <th>Cuenta</th>
                                        <th>Importe PR</th>
                                        <th>Resto</th>
                                        <th>F.Gestion</th>
                                        <th>Plazo</th>
                                        <th>F. Promesa</th>
                                        <th>Pagado</th>
                                        <th>F.Pagado</th>
                                        <th>Efect.</th>
                                        <th>Aplica</th>
                                    <tr>	
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="11">
                                            <div class="innerb center">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>2</td>
                                                            <td>3</td>
                                                            <td>4</td>
                                                            <td>5</td>
                                                            <td>6</td>
                                                            <td>7</td>
                                                            <td>8</td>
                                                            <td>9</td>
                                                            <td>10</td>
                                                            <td>11</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>		
                    </div>
                </div>
                <div id="modal_diarios" class="modal">
                    <div class="modal-content">
                        <h4 class="center">Escoge rango de Pagos</h4>
                        <div class="col s12 m12 l12 center">
                            <label for="">Desde</label>
                            <input id="" name="" type="text" class="validate datepicker input_modal">
                            <label for="">Hasta</label>
                            <input id="" name="" type="text" class="validate datepicker input_modal">
                        </div>

                    </div>
                    <div class="modal-footer">
                        <a id ="m_tabla_diarios" class="waves-effect waves-light btn  button_gestor blue darken-3">Ver pagos Diarios<i class="material-icons left input_modal center">send</i></a>
                    </div>
                </div>
                <div id="modal_tabla_diarios" class="modal">
                    <div class="modal-content">
                        <h4>Pagos Diarios</h4>
                        <div class="col s12 right-align">
                            <table class="table highlight">
                                <thead>
                                    <tr>
                                        <th>Fecha</th>
                                        <th>Asignacion</th>
                                        <th>Cuenta</th>
                                        <th>Vencido</th>
                                        <th>Resto Ant</th>
                                        <th>Pago</th>
                                        <th>Aplica</th>
                                        <th>Resto Actual</th>
                                    <tr>	
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="8">
                                            <div class="innerb center">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>2</td>
                                                            <td>3</td>
                                                            <td>4</td>
                                                            <td>5</td>
                                                            <td>6</td>
                                                            <td>7</td>
                                                            <td>8</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>		
                    </div>
                </div>
                <div id="modal_saldos" class="modal">
                    <div class="modal-content">
                        <h4>Saldos</h4>
                        <div class="col s12 right-align">
                            <table class="table highlight">
                                <thead>
                                    <tr>
                                        <th>Region</th>
                                        <th>Estatus</th>
                                        <th>Numero de Cuentas</th>
                                        <th>Ultimo Estatus</th>
                                        <th>Grupo</th>
                                    <tr>	
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="11">
                                            <div class="innerb center">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>2</td>
                                                            <td>3</td>
                                                            <td>4</td>
                                                            <td>5</td>
                                                            <td>6</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>		
                    </div>
                </div>
                <div id="modal_estadisticas" class="modal">
                    <div class="modal-content">
                        <h4>Mis Estadisticas</h4>
                        <div class="outer">
                            <div id="container-speed" class="chart-container"></div>
                            <div id="container-rpm" class="chart-container"></div>
                        </div>
                    </div>
                </div>
                <div id="modal_busqueda" class="modal">
                    <div class="modal-content">
                        <div class="col s12 right-align">
                            <table class="table highlight">
                                <thead>
                                    <tr>
                                        <th>Cuenta</th>
                                        <th>Asignacion</th>
                                        <th>Nombre</th>
                                        <th>Estatus</th>
                                        <th>Codigo</th>
                                        <th>Referencias</th>
                                        <th>Expediente</th>
                                    <tr>	
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="7">
                                            <div class="innerb center">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>2</td>
                                                            <td>3</td>
                                                            <td>4</td>
                                                            <td>5</td>
                                                            <td>6</td>
                                                            <td>7</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>		
                    </div>
                </div>
                <div id="modal_convenio" class="modal">
                    <div class="modal-content">
                        <h6>soy el modal</h6>
                    </div>
                </div>
            </div>	
        </div> 
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="https://code.highcharts.com/highcharts-more.js"></script>
        <script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
        <script type="text/javascript" src="js/js/jquery-2.2.4.min.js"></script>
        <script type="text/javascript" src="js/js/materialize.min.js"></script>
        <script src="js/js/menu.js"></script>
        <script type="text/javascript" src="js/js/gestor.js"></script>
    </body>
</html>




 



















