<%-- 
    Document   : gestor_multiservicios
    Created on : 10/03/2021, 08:04:46 PM
    Author     : zuagu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Gestor Azteca</title>
        <link rel="shortcut icon" href="image/logoInco.fw.png">
        <link rel="stylesheet" type="text/css" href="css/css/icons-material.css">
        <link rel="stylesheet" type="text/css" href="css/css/materialize.min.css">
        <link rel="stylesheet" type="text/css" href="css/css/style_multi.css">
        <style>
            #modal_capacitacion {
                max-width: 70%;
                width: 70%;
                max-height: 80%;
                height: 80%;
            }
            .slider .slides li img {
                background-size: contain;
            }


        </style>
    </head>

    <body>
        <jsp:include page="header.jsp"/>
        <div class="row gestor_font" id="contenido">
            <div class="container-fluid">
                <div class="col s12 m12 l12 contenido-datos">
                    <input id="id_cuenta" type="hidden">
                    <input id="numero_marcado_deudor" type="hidden">
                    <input id="ID_SUCURSAL" type="hidden">
                    <input id="ID_CLIENTE" type="hidden">
                    <input id="CANAL" type="hidden">
                    <input id="ID_EQUIPO" type="hidden">
                    <div class=" col s12 m7 l7">
                        <div id="info_gestor" class=" col s12 m12 l12 div_input_gestor_info  z-depth-1 white">
                            <div class="col s12 m7 l7">
                                <h6><b>INFORMACION PERSONAL</b></h6>
                            </div>
                            <div class="col s12 m5 l5">
                                <span id="CLASIFICACION_CTE" class="truncate"></span>
                            </div>
                            <div class="input-field col s11 m11 l11">
                                <input id="NOMBRE_CTE" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="NOMBRE_CTE"><b>TITULAR</b></label>
                            </div>
                            <div class="input-field col s1 m1 l1">
                                <input id="EDAD" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="EDAD"><b>EDAD</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="CLIENTE_UNICO" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="CLIENTE_UNICO"><b>CUENTA</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="PRODUCTO" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="PRODUCTO"><b>PRODUCTO</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="GERENCIA" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="GERENCIA"><b>GERENCIA</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="ETAPA" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="ETAPA"><b>TIPO</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="GERENTE" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="GERENTE"><b>GERENTE</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="TERRITORIO" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="TERRITORIO"><b>ZONA</b></label>
                            </div>
                            <div class="input-field col s12 m12 l12">
                                <input id="Direccion" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="Direccion"><b>DIRECCION</b></label>
                            </div>
                        </div>
                    </div>
                    <div class=" col s12 m5 l5">
                        <div id="info_gestor_secundario" class="col s12 m12 l12 z-depth-1 div_input_gestor_info white">
                            <div class="col s12 m12 l12">
                                <h6><b>INFORMACION ECONOMICA</b></h6>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="SALDO" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="SALDO"><b>CAPITAL</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="TXT_CODIGO" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="TXT_CODIGO"><b>ESTATUS</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="MORATORIOS" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="MORATORIOS"><b>MORATORIOS</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="PLAN" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="PLAN"><b>PLAN</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="IMP_ULTIMO_PAGO" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="IMP_ULTIMO_PAGO"><b>ULTIMO PAGO</b></label>
                            </div>
                            <div class="input-field col S6 m6 l6">
                                <input id="ATRASO_MAXIMO" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="ATRASO_MAXIMO"><b>SEMANAS</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="DIA_DE_PAGO" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="DIA_DE_PAGO"><b>DIA DE PAGO</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="FECHA_ULTIMO_PAGO" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="FECHA_ULTIMO_PAGO"><b>FECHA ULTIMO PAGO</b></label>
                            </div>

                            <div class="input-field col s6 m6 l6">
                                <input id="SALDO_TOTAL" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="SALDO_TOTAL"><b>SALDO TOTAL</b></label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="FECHA_INSERT" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="FECHA_INSERT"><b>F. ASIGNACION</b></label>
                            </div>
                        </div>
                    </div>


                    <div class="col s12 m7 l7">
                        <!--componente de datos aval -->
                        <div class="col s12 m12 l12 white div_data_aval marcacion_directa z-depth-1">
                            <h6><b>Informacion Aval</b></h6>
                            <ul id="datos_marcacion_aval" class="collection coll_1 datos_marcacion_directa">
                                <label>Aval Calle: Num: Colonia: Municipio: Estado: </label>
                                <li class="collection-item black-text">Nombre del Aval <a class="right" href="zoiper://">Telefono 2</a><a class="right" href="zoiper://">Telefono 1</a></li>
                            </ul>

                            <div id="edit_datos_marcacion_aval" class="col s9 m9 l9 margin_top_7px hide">
                                <div class="input-field col s6 m6 l6">
                                    <input id="NOMBRE_AVAL" type="text" class="validate" placeholder=""  value="">
                                    <label for="NOMBRE_AVAL">Contacto Aval</label>
                                </div>
                                <div class="input-field col s3 m3 l3">
                                    <input id="TELAVAL" type="text" class="validate" placeholder=""  value="">
                                    <label for="TELAVAL">Tel. 1</label>
                                </div>
                                <div class="input-field col s3 m3 l3">
                                    <input id="TELAVAL2" type="text" class="validate" placeholder=""  value="">
                                    <label for="TELAVAL2">Tel. 2</label>
                                </div>
                                <div class="input-field col s12 m12 l12">
                                    <input id="CALLEAVAL" type="text" class="validate" placeholder=""  value="">
                                    <label for="CALLEAVAL">Direccion Aval </label>
                                </div>
                            </div>

                            <ul class="collection coll_2 datos_marcacion_directa center">
                                <a id="save_info_aval" class="btn-small hide blue">actualizar</a>
                                <a id="editar_info_aval" class="btn-small blue btn_secundario">editar</a>
                            </ul>
                        </div>

                        <!--componente de gestion-->

                        <div id="div_gestor_gestion" class=" col s12 m12 l12  div_gestor_gestion z-depth-1 white">
                            <div class="col s12 m12 l12">
                                <h6>Gestion</h6>
                            </div>

                            <div class=" col s7 m7 l7  div_gestor_gestion z-depth-1">
                                <textarea id="gestion" readonly="" class="materialize-textarea limpiar_texto" data-length="1000" placeholder="Gestion"></textarea>
                            </div>

                            <div class=" col s5 m5 l5 div_gestor_gestion">
                                <div class=" input-field col s12 m12 l12">
                                    <select id="estatus">
                                        <option value="0" selected>Selecciona Estatus</option>
                                    </select>
                                </div> 
                                <div class=" input-field col s12 m12 l12">
                                    <select id="codigo_llamada"></select>
                                </div>
                                <div class=" input-field  col s6 m6 l6">
                                    <a id="guardar_gestion" class="waves-effect waves-light btn green btn_guardar_gestiones"><i class="material-icons right">save</i>Guardar</a>
                                </div> 
                                <div class=" input-field col s6 m6 l6">
                                    <a id="cuenta_siguiente" class="waves-effect waves-light btn red btn_siguiente"><i class="material-icons right">send</i>Sig.</a>
                                </div>
                            </div>
                        </div>

                        <!--componente de vista de tabs-->
                        <div class=" col s12 m12 l12 div_tabs white z-depth-1">
                            <ul id="tabs-swipe-demo" class="tabs hide_print ul_tabs">
                                <li class="tab col s2"><a id="tab_gestiones" class="active gestor_tab tooltipped" data-position="bottom" data-tooltip="Gestiones" href="#div_gestiones" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons black-text">contact_phone</i></a></li>
                                <li class="tab col s2"><a id="tab_pagos" class="gestor_tab tooltipped" data-position="bottom" data-tooltip="Pagos" href="#div_pagos" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons black-text">monetization_on</i></a></li>
                                <li class="tab col s2"><a id="tab_convenios" class="gestor_tab tooltipped" data-position="bottom" data-tooltip="Convenios" href="#div_convenios" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons black-text">stars</i></a></li>
                                <li class="tab col s2"><a id="tab_agendas" class="gestor_tab tooltipped" data-position="bottom" data-tooltip="Agenda" href="#div_agendas" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons black-text">insert_invitation</i></a></li>
                                <li class="tab col s2"><a id="tab_visitas" class="gestor_tab tooltipped" data-position="bottom" data-tooltip="Visitas" href="#div_visitas" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons black-text">location_on</i></a></li>
                                <li class="tab col s2"><a id="tab_saldos" class="gestor_tab tooltipped"data-position="bottom" data-tooltip="Mis Convenios" href="#div_saldos" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons black-text">pie_chart</i></a></li>
                            </ul>
                        </div>

                    </div>

                    <div class="col s12 m5 l5">

                        <!--componente de datos de contactacion directa -->

                        <div class="col s12 l12 m12 marcacion_directa white z-depth-1">
                            <h6><b>Referencias Telefonicas</b></h6>
                            <div id="div_ref_tel" class="inner">
                                <table id="datos_marcacion_directa" class="highlight ">

                                    <thead class="grey darken-3">
                                        <tr class="white-text">
                                            <th>NOMBRE</th>
                                            <th>TIPO</th>
                                            <th>TELEFONO</th>
                                            <th class="center-align">IVR</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbody_telefonos">

                                    </tbody>
                                </table>

                                <div id="editar_marcacion_directa" class="col s12 m12 l12 hide">
                                    <div class="col s12 m12 l12">
                                        <h6>Referencias</h6>
                                    </div>
                                    <div class="input-field col s6 m6 l6">
                                        <input id="NOM_TEL1" type="text" class="validate" placeholder=""  value="">
                                        <label for="NOM_TEL1">Contacto 1</label>
                                    </div>
                                    <div class="input-field col s3 m3 l3">
                                        <input id="TELEFONO1" type="text" class="validate" placeholder=""  value="">
                                        <label for="TELEFONO1">Tel. 1</label>
                                    </div>
                                    <div class="input-field col s3 m3 l3">
                                        <input id="TELEFONO1_2" type="text" class="validate" placeholder=""  value="">
                                        <label for="TELEFONO1_2">Tel. 2</label>
                                    </div>
                                    <div class="input-field col s6 m6 l6">
                                        <input id="NOM_TEL2" type="text" class="validate" placeholder=""  value="">
                                        <label for="NOM_TEL2">Contacto 2</label>
                                    </div>
                                    <div class="input-field col s3 m3 l3">
                                        <input id="TELEFONO2" type="text" class="validate" placeholder=""  value="">
                                        <label for="TELEFONO2">Tel. 1</label>
                                    </div>
                                    <div class="input-field col s3 m3 l3">
                                        <input id="TELEFONO2_2" type="text" class="validate" placeholder=""  value="">
                                        <label for="TELEFONO2_2">Tel. 2</label>
                                    </div>
                                    <div class="input-field col s6 m6 l6">
                                        <input id="NOM_TEL3" type="text" class="validate" placeholder=""  value="">
                                        <label for="NOM_TEL3">Contacto 3</label>
                                    </div>
                                    <div class="input-field col s3 m3 l3">
                                        <input id="TELEFONO3" type="text" class="validate" placeholder=""  value="">
                                        <label for="TELEFONO3">Tel. 1</label>
                                    </div>
                                    <div class="input-field col s3 m3 l3">
                                        <input id="TELEFONO3_2" type="text" class="validate" placeholder=""  value="">
                                        <label for="TELEFONO3_2">Tel. 2</label>
                                    </div>
                                    <div class="input-field col s6 m6 l6">
                                        <input id="NOM_TEL4" type="text" class="validate" placeholder=""  value="">
                                        <label for="NOM_TEL4">Contacto 4</label>
                                    </div>
                                    <div class="input-field col s3 m3 l3">
                                        <input id="TELEFONO4" type="text" class="validate" placeholder=""  value="">
                                        <label for="TELEFONO4">Tel. 1</label>
                                    </div>
                                    <div class="input-field col s3 m3 l3">
                                        <input id="TELEFONO4_2" type="text" class="validate" placeholder=""  value="">
                                        <label for="TELEFONO4_2">Tel. 2</label>
                                    </div>
                                    <div class="input-field col s6 m6 l6">
                                        <input id="NOM_TEL5" type="text" class="validate" placeholder=""  value="">
                                        <label for="NOM_TEL5">Contacto 5</label>
                                    </div>
                                    <div class="input-field col s3 m3 l3">
                                        <input id="TELEFONO5" type="text" class="validate" placeholder=""  value="">
                                        <label for="TELEFONO5">Tel. 1</label>
                                    </div>
                                    <div class="input-field col s3 m3 l3">
                                        <input id="TELEFONO5_2" type="text" class="validate" placeholder=""  value="">
                                        <label for="TELEFONO5_2">Tel. 2</label>
                                    </div>
                                </div>
                            </div>     


                            <div class="col s12 m12 l12 div_btn_act_datos right-align">
                                <a id="edit_num" class="btn-small blue btn_secundario">editar</a>
                                <a id="save_num" class="btn-small blue hide">actualizar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col s12 m10 l10 margin_top_7px">
                        <!--componente de secciones de las tabs de tabs-->
                        <div id="div_gestiones" class="col s12 z-depth-1 div_gestor_contenido white"> 
                            <table class="highlight" id="tabla_gestiones">
                                <thead class="grey lighten-1">
                                    <tr class="">
                                        <td> <b>FECHA</b></td>
                                        <td> <b>HORA</b></td>
                                        <td> <b>NUMERO</b></td>
                                        <td> <b>AGENTE</b></td>
                                        <td> <b>ESTATUS</b></td>
                                        <td> <b>CODIGO</b></td>
                                        <td> <b>DISPOCISION</b></td>
                                        <td> <b>TIEMPO</b></td>
                                    </tr>
                                </thead>
                                <tbody id="tbody_tabla_gestiones">
                                </tbody>
                            </table>
                        </div>
                        <div id="div_pagos" class="col s12 z-depth-1 div_gestor_contenido center center-align white">
                            <table class="highlight" id="tabla_pagos">
                                <thead class="grey lighten-1">
                                    <tr class="">
                                        <td><b>FOLIO</b></td>
                                        <td><b>CLIENTE UNICO</b></td>
                                        <td><b>ZONA</b></td>
                                        <td><b>GERENTE</b></td>
                                        <td><b>FECHA GESTION</b></td>
                                        <td><b>RECUPERACION CAPITAL</b></td>
                                        <td><b>RECUPERACION MORATORIOS</b></td>
                                    </tr>
                                </thead>
                                <tbody id="tbody_tabla_pagos">
                                </tbody>
                            </table>
                        </div>
                        <div id="div_agendas" class="col s12 z-depth-1 div_gestor_contenido white">
                            <input id="id_reg_agenda" type="hidden">
                            <div class="col s12 m9 l9 div_agendas inner">
                                <table>
                                    <thead class="grey lighten-1">
                                        <tr class="white-text">
                                            <th>ID</th>
                                            <th>CLIENTE_UNICO</th>
                                            <th>DESCRIPCION</th>
                                            <th>FECHA</th>
                                            <th>HORA</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tb_list_agenda">

                                    </tbody>
                                </table>
                            </div>
                            <div class="col s12 m3 l3 input-field">
                                <a id="new_agenda" class="btn green lighten-1 col s12 waves-effect waves-light">Agregar</a>
                            </div>
                            <div class="col s12 m3 l3 input-field">
                                <a id="delete_agenda" class="btn red lighten-1 col s12 waves-effect waves-light">Eliminar</a>
                            </div>
                            <div class="col s12 m3 l3 input-field">
                                <a id="ver_modal_agendas" class="btn lighten-1 col s12 blue waves-effect">Ver Agendas</a>
                            </div>

                            <div id="tabla_agendas" class="col s12 m12 l12"></div>
                        </div>
                        <div id="div_visitas" class="col s12 z-depth-1 div_gestor_contenido center center-align white">

                        </div>
                        <div id="div_convenios" class="col s12 z-depth-1 div_gestor_contenido center center-align white">
                            <table class="highlight" id="tabla_convenios">
                                <thead class="grey lighten-1">
                                    <tr class="">
                                        <td><b>CUENTA</b></td>
                                        <td><b>GESTOR</b></td>
                                        <td><b>CONVENIO</b></td>
                                        <td><b>FECHA GESTION</b></td>
                                        <td><b>PLAZO</b></td>
                                        <td><b>FECHA</b></td>
                                        <td><b>PAGOS</b></td>
                                        <td><b>FECHA PAGOS</b></td>
                                        <td><b>EFECTIVIDAD</b></td>
                                        <td><b>STATUS</b></td>
                                    </tr>
                                </thead>
                                <tbody id="tbody_tabla_convenios">
                                </tbody>
                            </table>
                        </div>
                        <div id="div_saldos" class="col s12 z-depth-1 div_gestor_contenido center center-align white inner">
                            <table class="highlight" id="tabla_mis_convenios">
                                <thead class="grey lighten-1">
                                    <tr class="">
                                        <td><b>CUENTA</b></td>
                                        <td><b>GESTOR</b></td>
                                        <td><b>CONVENIO</b></td>
                                        <td><b>FECHA GESTION</b></td>
                                        <td><b>FECHA</b></td>
                                        <td><b>PAGOS</b></td>
                                        <td><b>FECHA PAGO</b></td>
                                        <td><b>EFECTIVIDAD</b></td>
                                        <td><b>STATUS</b></td>
                                    </tr>
                                </thead>
                                <tbody id="tbody_tabla_mis_convenios">
                                </tbody>
                            </table>

                        </div>
                    </div>

                    <div class="col s12 m2 l2 margin_top_7px">
                        <!--componente de tiempos -->
                        <div id="div_input_gestor_tiempos" class="col s12 m12 l12 white z-depth-1 div_input_gestor_tiempos">
                            <div class="col s12 m12 l12">
                                <h6>Tiempos</h6>
                            </div>
                            <div class="input-field col s12">
                                <input id="primera_llamada" type="text" class="validate" placeholder="" readonly="readonly" value="00:00:00">
                                <label for="primera_llamada">P.llamada</label>
                            </div>
                            <div class="input-field col s12">
                                <input id="tiempo_actual" type="text" class="validate" placeholder="" readonly="readonly" value="00:00:00">
                                <label for="tiempo_actual">Actual</label>
                            </div>
                            <div class="input-field col s12">
                                <input id="retraso_actual" type="text" class="validate" placeholder="" readonly="readonly" value="00:00:00">
                                <label for="retraso_actual">R. Actual</label>
                            </div>
                            <div class="input-field col s12">
                                <input id="cuentas_tocadas" type="text" class="validate" placeholder="" readonly="readonly" value="0000">
                                <label for="cuentas_tocadas">Cuentas</label>
                            </div>
                            <div class="input-field col s12">
                                <input id="llamadas_realizadas" type="text" class="validate" placeholder="" readonly="readonly" value="0000">
                                <label for="llamadas_realizadas" class="centro">Llamadas</label>
                            </div>
                            <div class="input-field col s12">
                                <input id="convenios" type="text" class="validate" placeholder="" readonly="readonly" value="0000">
                                <label for="convenios">Convenios</label>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


            <div id="reportar_pago" class="modal scale-transition">
                <div id="div_reportar_pago" class="modal-content col s12 m10 l10 offset-l1 offset-m1">
                    <h3 class="center">Reportar Pago</h3>
                    <h6 id="alerta_reportar_pago" class="center"></h6>

                    <div class="input-field col s12 m8 l8 offset-m2 offset-l2">
                        <input id="rp_cliente_unico" type="text" readonly placeholder="N#" class="validate">
                        <label for="rp_cliente_unico">Cliente Unico</label>
                    </div>
                    <div class="input-field col s12 m8 l8 offset-m2 offset-l2">
                        <input id="rp_id_tiket" type="text" placeholder="N#" class="validate">
                        <label for="rp_id_tiket">N# Folio Pago</label>
                    </div>
                    <div class="input-field col s12 m8 l8 offset-m2 offset-l2">
                        <input id="rp_monto_tiket" type="text" placeholder="$ 0.00" class="validate">
                        <label for="rp_monto_tiket">Monto Ticket</label>
                    </div>
                    <div class="input-field col s12 m8 l8 offset-m2 offset-l2">
                        <input id="rp_fecha_pago" type="text" class="datepicker" placeholder="AAAA-MM-DD">
                        <label for="rp_fecha_pago">Fecha Pago</label>
                    </div>
                    <div class="input-field col s12 m8 l8 offset-m2 offset-l2">
                        <select id="rp_tipo_pago">
                            <option value="25">PROMESA DE PAGO</option>
                            <option value="19">LIQUIDACION</option>
                            <option value="22">RECURRENTE</option>
                            <option value="23">PAGO PARCIAL</option>
                            <option value="24">PAGO INICIAL</option>
                        </select>
                        <label for="rp_tipo_pago">Tipo Pago</label>
                    </div>
                    <div class="col s12 m8 l8 offset-m2 offset-l2 center">
                        <a class="col s12 m4 l4 red btn accent-2 waves-effect waves-light modal-close">Cancelar</a>
                        <a id="enviar_reporte_pago" class="col s12 m4 l4 offset-l4 offset-m4 blue btn white-text darken-4 waves-effect waves-light">Resgistrar Pago</a>
                    </div>

                </div>
            </div>



            <div id="modal_convenio" class="modal scale-transition">
                <div class="modal-content">
                    <h3 class="center">Generar Convenio</h3>
                    <h6 id="alerta_convenio" class="red-text center"></h6>
                    <div class="input-field col s12 m4 l4 offset-m2 offset-l2">
                        <input id="importe_convenio" type="text" class="validate limpiar_numero">
                        <label for="importe_convenio">Importe</label>
                    </div>
                    <div class="input-field col s12 m4 l4 offset-m1 offset-l1">
                        <input id="fecha_convenio" type="text" class="datepicker" placeholder="Fecha del convenio">
                    </div>
                    <div class="input-field col s12 m4 l4 offset-m2 offset-l2">
                        <input id="password_convenio" type="password" class="" placeholder="Ingresa Password">
                    </div>
                    <div class="input-field col s12 m4 l4 offset-m1 offset-l1">
                        <select id="TIPO_CONVENIO">
                            <option value="0" disabled selected>TIPO CONVENIO</option>
                            <option value="1">PAGO UNICO</option>
                            <option value="2">PAGO PARCIAL</option>
                            <option value="3">PLAN PAGO INICIAL</option>
                            <option value="4">PLAN PAGO RECURENTE</option>
                        </select>
                    </div>
                    <div id="CAJA_SEMANAS_PAGO" class="input-field col s12 m4 l4 offset-m2 offset-l2 hide">
                        <select id="SEMANAS_PAGO">
                            <option value="0" disabled selected>SELECIONA LAS SEMANAS</option>
                            <option value="1">1 SEMANA</option>
                            <option value="2">2 SEMANAS</option>
                            <option value="3">3 SEMANAS</option>
                            <option value="4">4 SEMANAS</option>
                            <option value="5">5 SEMANAS</option>
                            <option value="6">6 SEMANAS</option>
                            <option value="7">7 SEMANAS</option>
                            <option value="8">8 SEMANAS</option>
                            <option value="9">9 SEMANAS</option>
                            <option value="10">10 SEMANAS</option>
                            <option value="11">11 SEMANAS</option>
                            <option value="12">12 SEMANAS</option>
                            <option value="13">13 SEMANAS</option>
                            <option value="14">14 SEMANAS</option>
                            <option value="15">15 SEMANAS</option>
                            <option value="16">16 SEMANAS</option>
                            <option value="17">17 SEMANAS</option>
                            <option value="18">18 SEMANAS</option>
                            <option value="19">19 SEMANAS</option>
                            <option value="20">20 SEMANAS</option>
                            <option value="21">21 SEMANAS</option>
                            <option value="22">22 SEMANAS</option>
                            <option value="23">23 SEMANAS</option>
                            <option value="24">24 SEMANAS</option>
                            <option value="25">25 SEMANAS</option>
                            <option value="26">26 SEMANAS</option>
                            <option value="27">27 SEMANAS</option>
                            <option value="28">28 SEMANAS</option>
                            <option value="29">29 SEMANAS</option>
                            <option value="30">30 SEMANAS</option>
                            <option value="31">31 SEMANAS</option>
                            <option value="32">32 SEMANAS</option>
                            <option value="33">33 SEMANAS</option>
                            <option value="34">34 SEMANAS</option>
                            <option value="35">35 SEMANAS</option>
                            <option value="36">36 SEMANAS</option>
                            <option value="37">37 SEMANAS</option>
                            <option value="38">38 SEMANAS</option>
                            <option value="39">39 SEMANAS</option>
                            <option value="40">40 SEMANAS</option>
                            <option value="41">41 SEMANAS</option>
                            <option value="42">42 SEMANAS</option>
                            <option value="43">43 SEMANAS</option>
                            <option value="44">44 SEMANAS</option>
                            <option value="45">45 SEMANAS</option>
                            <option value="46">46 SEMANAS</option>
                            <option value="47">47 SEMANAS</option>
                            <option value="48">48 SEMANAS</option>
                            <option value="49">49 SEMANAS</option>
                            <option value="50">50 SEMANAS</option>
                            <option value="51">51 SEMANAS</option>
                            <option value="52">52 SEMANAS</option>
                            <option value="53">53 SEMANAS</option>
                            <option value="54">54 SEMANAS</option>
                            <option value="55">55 SEMANAS</option>
                        </select>
                    </div>
                    <div class="col s12 center">
                        <br>
                        <a id="cancelar_convenio" class="waves-effect waves-light btn red modal-close btn_gestiones "><i class="material-icons right">cancel</i>Cancel</a>
                        <a id="insert_convenio" class="waves-effect waves-light btn green btn_gestiones"><i class="material-icons right">save</i>Ok</a>
                        <br>
                        <br>
                    </div>
                </div>
            </div>
            <div id="modal_alerta" class="modal col s12 m6 l6 offset-m3 offset-l3">
                <div class="modal-content">
                    <h3 class="center">...</h3>
                    <h5 id="mensaje_alerta" class="mensaje_alerta center">

                    </h5>
                </div>
            </div>

            <div id="modal_agregar_agenda" class="modal">
                <div class="modal-content">
                    <h4 class="center">Nuevo Recordatorio</h4>
                    <div class="col s12">
                        <div class="col s12 div_btn right-align"><p id="mensaje_error_agenda" class="red-text"></p></div>
                        <div class="input-field col s6">
                            <input id="cliente_unico_agenda" type="text" class="validate">
                            <label for="cliente_unico_agenda">Numero de Cuenta</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="descripcion_agenda" type="text" class="validate">
                            <label for="descripcion_agenda">Descripcion</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="fecha_agenda" type="text" class="datepicker">
                            <label for="fecha_agenda">Fecha</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="hora_agenda" type="text" class="timepicker">
                            <label for="hora_agenda">Hora</label>
                        </div>
                        <div class="col s12 right-align input-field">
                            <a class="btn red waves-effect modal-close">Cancelar</a>
                            <a id="insertar_agenda" class="btn green waves-effect">Aceptar</a>
                        </div>

                    </div>
                </div>
            </div>

            <div id="modal_gestion" class="modal">
                <div class="modal-content">
                    <h3 class="center">Gestion</h3>
                    <div class="col s12 ">
                        <h6 id="mod_gestion">
                        </h6>
                    </div>
                </div>
            </div>

            <div id="modal_busqueda" class="modal">
                <div class="modal-content">
                    <h3 class="center">Resutado</h3>
                    <div class="input-field col s6 offset-s3">
                        <input id="buqueda_relacionada" type="text" class="validate">
                        <label for="buqueda_relacionada">Busqueda</label>
                    </div>
                    <div class="col s12 tabla_resultado_busqueda inner">
                        <table>
                            <thead>
                                <tr>
                                    <th>CLIENTE_UNICO</th>
                                    <th>NOMBRE</th>
                                    <th>AVAL</th>
                                    <th>ESTATUS</th>
                                </tr>
                            </thead>
                            <tbody id="tb_cont_busqueda">
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>


            <div class="fixed-action-btn">
                <a class="btn-floating btn-large red">
                    <i class="large material-icons">mode_edit</i>
                </a>
                <ul>
                    <li><a id="m_familiar" class="btn-floating red tooltipped" data-position="left" data-tooltip="Mensaje con familiar"><i class="material-icons">insert_chart</i></a></li>
                    <li><a id="m_tercero" class="btn-floating yellow darken-1 tooltipped" data-position="left" data-tooltip="Mensaje a Tercero"><i class="material-icons">format_quote</i></a></li>
                    <li><a id="m_aval" class="btn-floating green tooltipped" data-position="left" data-tooltip="Mensaje a Aval"><i class="material-icons">publish</i></a></li>
                    <li><a id="m_tt"class="btn-floating blue tooltipped" data-position="left" data-tooltip="Mensaje a Cliente"><i class="material-icons">attach_file</i></a></li>
                    <li><a id="m_speach"class="btn-floating orange tooltipped" data-position="left" data-tooltip="Speach"><i class="material-icons">announcement</i></a></li>
                    <li><a id="m_capacitacion"class="btn-floating purple tooltipped" data-position="left" data-tooltip="Capacitacion"><i class="material-icons">book</i></a></li>
                </ul>
            </div>
            <div id="modal_mensaje_familiar" class="modal">
                <div class="modal-content">
                    <h3 class="center">Mensaje a Familiar</h3>
                    <div class="col s12 m12 l12">
                        <h6>•	¿Con quién tengo el gusto?</h6>
                        <h6>•	¿Que parentesco tiene con el tt?</h6>
                        <h6>•	¿A qué hora puedo localizarlo?</h6>
                        <h6>•	¿Algún teléfono para comunicarme directamente con  él?</h6>
                        <h6>•	¿Usted sabe cuál es el motivo  por el cuál ha incumplido en su contrato?</h6>
                        <h6>•	¿Se encuentra trabajando actualmente?</h6>
                        <h6>•	¿Conoce si tiene  alternativas de pago ? (tarjetas de crédito, débito o transferencia)</h6>
                        <h6>•	¿Usted sabe si actualmente vive en?</h6>
                    </div>
                </div>
            </div>
            <div id="modal_mensaje_tercero" class="modal">
                <div class="modal-content">
                    <h3 class="center">Mensaje Tercero</h3>
                    <div class="col s12 m12 l12">
                        <h6>•	¿Es usted familiar de el tt. o solamente es  conocido?</h6>
                        <h6>•	¿Hace cuánto  tiempo lo conoce ?</h6>
                        <h6>•	En que horario se le puede localizar</h6>
                        <h6>•	¿Tiene manera de comunicármelo más tarde?</h6>
                        <h6>•	¿Me podría proporcionar un teléfono para comunicarme directamente con él?</h6>
                        <h6>•	¿Usted sabe si actualmente vive en?</h6>
                    </div>
                </div>
            </div>
            <div id="modal_mensaje_aval" class="modal">
                <div class="modal-content">
                    <h3 class="center">Contacto con Aval / Aval No Define</h3>
                    <div class="col s12 m12 l12">
                        <h6>•	¿Qué parentesco tiene  con el tt?</h6>
                        <h6>•	Sabe usted es el obligado solidario de esta cuenta.</h6>
                        <h6>•	Sabe que con la falta de pago del tt la deuda es responsabilidad de usted?</h6>
                        <h6>•	Proporcióneme algún teléfono donde me pueda comunicar directamente con el tt.</h6>
                        <h6>•	¿Cuál fue el motivo por el cuál aceptó ser aval del TT?</h6>
                        <h6>•	Esta consciente de que su persona esta involucrada en un proceso de demanda por la falta de pago del tt?</h6>
                    </div>
                </div>
            </div>
            <div id="modal_mensaje_tt" class="modal">
                <div class="modal-content">
                    <h3 class="center">Contacto con TT / Cliente No Define</h3>
                    <div class="col s12 m12 l12">
                        <h6>•	¿Cual fue el motivo por el cual dejo de pagar?</h6>
                        <h6>•	¿Algún teléfono adicional donde me pueda comunicar con usted?</h6>
                        <h6>•	¿Maneja alguna tarjeta de debito o cuenta de guardadito?</h6>
                        <h6>•	Sabe que tiene la posibilidad de aperturar un plan de pagos para liquidación ?</h6>
                    </div>
                </div>
            </div>
            <div id="modal_speach" class="modal">
                <div class="modal-content">
                    <h3 class="center">SPEECH MAZ Y ARGUMENTO-OBJECIONES LEGALES</h3>
                    <div class="col s12 m12 l12">
                        <h6>Buenas tardes ¡</h6>
                        <h6>Me puede comunicar con __________________, </h6>
                        <h6>me presento soy el abogado _______________ </h6>
                        <h6>del Despacho Legal _________ en representación de Micronegocio Azteca,</h6>
                        <h6>el motivo de la llamada es por la deuda que tiene como DEUDOR Y AVAL DE LOS INTEGRANTES del grupo de Micronegocio Azteca denominado________</h6>
                        <h6>que solicito con las siguientes personas de nombre____________________,</h6>
                        <h6>por un saldo total  grupal de $_____________</h6>
                        <h6>con un periodo de atraso de _____ semanas.</h6>
                        <h6>En este momento nos ponemos en contacto para demandarle el pago del adeudo total grupal,</h6>
                        <h6>¿Esta consiente del adeudo y la responsabilidad legal?..................................................(SI O NO)</h6>
                        </h6>
                        <h6>•   Recuerde que usted también firmo como AVAL de todos los integrantes (PAGARE y CONTRATO), QUE, A FALTA DEL PAGO DE LOS INTEGRANTES DEL GRUPO, USTED TIENE LA RESPONSABILIDAD DE PAGAR LA DEUDA TOTAL DEL GRUPO, YA QUE FIRMO VARIOS CONTRATOS Y PAGARES, lo cual tiene una responsabilidad legal ante sus firmas.</h6>
                        <h6>•	Por tal motivo le ofrezco las siguientes alternativas de pago:</h6>
                        <h6>•	1.- Liquidar la deuda en una sola exhibición CONDICIONANDO A LA REUNION DE TODOS LOS INTEGRANTES PARA TENER BENEFICIO DE COBRO INDIVIDUAL “Puedes utilizar para obtener datos y te junte a todos los integrantes” (Tienes margen para bonificar del 1% al 100% de moratorios) “Cobra más-bonificando menos”</h6>
                        <h6>•   2.- Liquidación de dos a tres pagos semanales CONDICIONANDO ALA REUNION DE TODOS LOS INTEGRANTES PARA TENER BENEFICIO DE COBRO INDIVIDUAL (Tienes margen para bonificar del 1% al 85% de moratorios) “Cobra más-bonificando menos”</h6>
                        <h6>•   3.- Plan a Plazos CONDICIONANDO A LA REUNION DE TODOS LOS INTEGRANTES PARA TENER BENEFICIO DE COBRO INDIVIDUAL (Trata de solicitar el 50% de enganche, y plazos hasta 24 semanas) Menor plazo aumenta probabilidad de cumplimiento”</h6>
                        <h6>•   4.- ………………………………………………….. Escucha al cliente y objeta en bases sustentables y legales sus argumentos o pretextos para no pagar ………………………………………………….</h6>
                        <h6>•   5.- Menciona beneficios si paga (Buró de crédito, calificación, evita más gastos, abre puertas para adquirir otros crédito en otras instituciones, oportunidades laborables, hay empresas que revisan el historial crediticio, entre otras.)</h6>
                        </h6>
                        <h6><b> Recomendaciones:</b></h6>
                        <h6>• Nunca empezar con el descuento: se inicia solicitando el saldo total del grupo y así mismo la reunión de todos para el cobro GRUPAL.</h6>
                        <h6 style="background:yellow;">• Si se requiere se ofrece un DESCUENTO PARCIAL sobre intereses moratorios para liquidar TOTALIDAD (20, 30, 40, 50% (Tienes un margen muy amplio para negociar y cobrar mucho dinero)</h6>
                        <h6>• ¡El plan a plazos NO se debe ofrecer al inicio! )</h6>
                        <h6>• Inicia con liquidación, o tal vez liquidación en dos partes, pero procura NO usar el plazo de las 40 semanas jamás al inicio o si es el caso pide un pago inicial alto y el menor plazo posible <p style="background:yellow;">MÁXIMO 20 SEMANAS)</p></h6>
                        <h6 style="background:yellow;">• Mencionar documentos proporcionados (Pagaré Contrato) de cada uno de los integrantes como clientes y avales unos de otros)</h6>
                        <h6><p style="background:yellow;">• No dar tiempo, hoy mismo o en su caso 24 horas como máximo, </p>para que no ponga en riesgo su patrimonio familiar por la falta de pago de todo el grupo. )</h6>
                        <h6>• Hacerle mención que defina, programa y formaliza fecha de pago. )</h6>
                        <h6>• Tener confianza en decirle que solo nosotros podemos darle una opción accesible para resolver la situación legal, y los pagos son directamente en ventanillas de sucursales Banco Azteca. )</h6>
                        <h6>• Menciona las consecuencias legales en caso de no llegar a un acuerdo sobre el adeudo y se cumpla. )</h6>
                        <h6>Ten presente el siguiente articulo</h6>
                        <h6 style="background:red;">Artículo 284 Bis. En su último párrafo menciona No se considerará como intimidación ilícita informar aquellas consecuencias posibles y jurídicamente válidas del impago o la capacidad de iniciar acciones legales en contra del deudor, aval, obligado solidario o cualquier tercero relacionado a éstos cuando éstas sean jurídicamente posibles. </h6>
                        <h6 style="background:yellow;">ES DECIR, NO ESTAMOS AMENAZANDO, SINO INFORMANDO.</h6>
                    </div>
                </div> 
            </div>
            <div id="modal_capacitacion" class="modal">
                <div class="modal-content">
                    <h3 class="center">GUIA CAPACITACIÓN  A AGENCIAS Y/O DESPACHOS EXTERNOS</h3>
                    <div class="col s12 m12 l12">
                        <div class="slider">
                            <ul id="cont_de_imagenes" class="slides">

                                <div class="caption center-align">
                                    <h3>This is our big Tagline!</h3>
                                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                                </div>
                                </li>
                                <li>

                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div id="modal_ver_agenda" class="modal">
                <div class="modal-content">
                    <h4 class="center">Alerta de Agenda</h4>

                    <div class="col s12">
                        <div class="col s12 m12 l12 div_agendas inner">
                            <table>
                                <thead class="grey lighten-1">
                                    <tr class="white-text">
                                        <th>ID</th>
                                        <th>CLIENTE_UNICO</th>
                                        <th>DESCRIPCION</th>
                                        <th>FECHA</th>
                                        <th>HORA</th>
                                    </tr>
                                </thead>
                                <tbody id="tb_list_agenda_modal">

                                </tbody>
                            </table>
                        </div>
                        <div class="row"></div>
                        <input id="id_agenda_gestor" value="0" type="hidden">
                        <div class="input-field col s6">
                            <input id="agenta_cliente_unico" type="text" placeholder=" " class="validate">
                            <label for="agenta_cliente_unico">Cliente unico </label>
                        </div>
                        <div class="input-field col s6">
                            <input id="agenta_descripcion" type="text" placeholder=" " class="validate">
                            <label for="agenta_descripcion">Descripcion </label>
                        </div>
                        <div class="input-field col s6">
                            <input id="agenta_fecha" type="text" placeholder=" " class="validate">
                            <label for="agenta_fecha">Fecha </label>
                        </div>
                        <div class="input-field col s6">
                            <input id="agenta_hora" type="text" placeholder=" " class="validate">
                            <label for="agenta_hora">Hora </label>
                        </div>
                        <div class="col s12 input-field right-align">
                            <a class="btn red waves-effect modal-close">Posponer</a>
                            <a id="cuenta_agenda_datos" class="btn blue waves-effect modal-close">Buscar datos Cuenta</a>
                        </div>
                    </div>

                </div>
            </div>

        </div>	

        <script type="text/javascript" src="js/js/jquery-2.2.4.min.js"></script>
        <script type="text/javascript" src="js/js/materialize.min.js"></script>
        <script type="text/javascript" src="js/js/Script_Azteca.js"></script>
    </body>
</html>