<%-- 
    Document   : gestor_teleono
    Created on : 2/11/2020, 09:06:46 AM
    Author     : zuagu, lowenz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Gestor Came</title>
        <link rel="shortcut icon" href="image/logoInco.fw.png">
        <link rel="stylesheet" type="text/css" href="css/css/icons-material.css">
        <link rel="stylesheet" type="text/css" href="css/css/materialize.min.css">
        <link rel="stylesheet" type="text/css" href="css/css/style_gestor.css">
        <style>
            input[type="text"]:not(.browser-default).validate + label {
                color: #000;
                font-weight: bold;
            }
            .importante {
                background-color: #69f0ae !important;
            }
            #div_gestor_gestion {
                margin-top: 7px;
                height: 196px;
            }
        </style>
    </head>

    <body class="grey lighten-3">
        <jsp:include page="header.jsp"/>
        <div class="row gestor_font" id="contenido">
            <div class="container-fluid">
                <div class="col s12 m12 l12 contenido-datos">

                    <input id="ID_CUENTA" type="hidden">
                    <input id="numero_marcado_deudor" type="hidden">

                    <div class=" col s7 m7 l7">
                        <div id="info_gestor" class=" col s12 m12 l12 div_input_gestor_info  z-depth-1 white">

                            <div class="col s12 m12 l12">
                                <h6>Informacion del cliente</h6>
                            </div>
                            <div class="input-field col s12 m12 l12">
                                <input id="nombre_socio" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="nombre_socio">NOMBRE SOCIO</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="id_socio_sec" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="id_socio_sec">ID SOCIO</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="nombre_ggi" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="nombre_ggi">NOMBRE GGI</label>
                            </div>
                            
                            <div class="input-field col s6 m6 l6">
                                <input id="rfc" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="rfc">RFC</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="nombre_zona" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="nombre_zona">NOMBRE ZONA</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="nombre_sucursal" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="nombre_sucursal">NOMBRE SUCURSAL</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="no_ciclo_grupo_no_vez" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="no_ciclo_grupo_no_vez">NO CICLO GRUPO/NO VEZ</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="fecha_credito" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="fecha_credito">FECHA CREDITO</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="plazo" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="plazo">PLAZO</label>
                            </div>
                            

                            <div class="input-field col s12 m12 l12">
                                <input id="direc_came" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="direc_came">DIRECCION</label>
                            </div>
                        </div>
                    </div>
                    <div class=" col s5 m5 l5">
                        <div id="info_gestor_secundario" class="col s12 m12 l12 z-depth-1 div_info_secundaria white">
                            <div class="col s12 m12 l12">
                                <h6>Informacion Economica</h6>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="cartera_vigente" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="cartera_vigente">CARTERA VIGENTE</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="monto_minimo_a_pagar" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="monto_minimo_a_pagar">LIQUIDACION GRUPAL</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="ahorro_consumido" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="ahorro_consumido">AHORRO CONSUMIDA</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="cartera_vencida_total" type="text" class="validate" placeholder="" readonly="readonly"  value="">
                                <label for="cartera_vencida_total">MORA TOTAL</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="monto_credito_x_socio" type="text" class="validate importante" placeholder="" readonly="readonly"  value="">
                                <label for="monto_credito_x_socio">CREDITO X SOCIO</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="monto_credito_came" type="text" class="validate importante" placeholder="" readonly="readonly"  value="">
                                <label for="monto_credito_came">CREDITO CAME</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="importe_pagare_grupal" type="text" class="validate importante" placeholder="" readonly="readonly"  value="">
                                <label for="importe_pagare_grupal">PAGARE GRUPAL</label>
                            </div>
                            
                            <div class="input-field col s6 m6 l6">
                                <input id="saldo_individualizado" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="saldo_individualizado">INDIVIDUALIZADO</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="referencia_BANAMEX" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="referencia_BANAMEX">REFERENCIA BANAMEX</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="referencias_BBVA" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="referencias_BBVA">REFERENCIA BBVA</label>
                            </div>
                            
                            <div class="input-field col s6 m6 l6">
                                <input id="dias_atraso" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="dias_atraso">DIAS ATRASO</label>
                            </div>
                            <div class="input-field col s6 m6 l6">
                                <input id="cuentas_dobles" type="text" class="validate" placeholder="" readonly="readonly" value="">
                                <label for="cuentas_dobles">CUENTAS DOBLES</label>
                            </div>
                        </div>
                        
                    </div>


                    <div class="col s7 m7 l7">
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
                                <li class="tab col s2"><a id="tab_gestiones" class="active gestor_tab tooltipped" data-position="bottom" data-tooltip="Gestiones" href="#div_gestiones" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons">contact_phone</i></a></li>
                                <li class="tab col s2"><a id="tab_pagos" class="gestor_tab tooltipped" data-position="bottom" data-tooltip="Pagos" href="#div_pagos" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons">monetization_on</i></a></li>
                                <li class="tab col s2"><a id="tab_convenios" class="gestor_tab tooltipped" data-position="bottom" data-tooltip="Convenios" href="#div_convenios" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons">stars</i></a></li>
                                <li class="tab col s2"><a id="tab_agendas" class="gestor_tab tooltipped" data-position="bottom" data-tooltip="Agenda" href="#div_agendas" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons">insert_invitation</i></a></li>
                                <li class="tab col s2"><a id="tab_visitas" class="gestor_tab tooltipped" data-position="bottom" data-tooltip="Visitas" href="#div_visitas" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons">location_on</i></a></li>
                                <li class="tab col s2"><a id="tab_saldos" class="gestor_tab tooltipped"data-position="bottom" data-tooltip="Saldos" href="#div_saldos" style="color:#db040e"><i class="icon_gestor_tab tiny material-icons">pie_chart</i></a></li>
                            </ul>
                        </div>

                    </div>

                    <div class="col s5 m5 l5">

                       

                        <!--componente de datos de contactacion directa -->

                        <div class="col s12 l12 m12 marcacion_directa white z-depth-1">
                            
                            <table id="datos_marcacion_directa">
                                <thead>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Numero</th>
                                    </tr>
                                </thead>
                                <tbody id="tb_numeros">
                                    
                                </tbody>
                            </table>

                            <!--componente de editar_marcacion_directa-->
                            <div id="editar_marcacion_directa" class="col s12 m12 l12 hide">
                                <div class="col s12 m12 l12">
                                    <h6>Referencias</h6>
                                </div>

                                <div class="input-field col s6 m6 l6">
                                    <input id="telefono" type="text" class="validate" placeholder=""  value="">
                                    <label for="telefono">TELEFONO</label>
                                </div>
                                <div class="input-field col s6 m6 l6">
                                    <input id="telefono_2" type="text" class="validate" placeholder=""  value="">
                                    <label for="telefono_2">TELEFONO 2</label>
                                </div>
                                <div class="input-field col s6 m6 l6">
                                    <input id="REFERENCIA_1" type="text" class="validate" placeholder=""  value="">
                                    <label for="REFERENCIA_1">REFERENCIA 2</label>
                                </div>
                                <div class="input-field col s6 m6 l6">
                                    <input id="TEL_REF_1" type="text" class="validate" placeholder=""  value="">
                                    <label for="TEL_REF_1">Telefono</label>
                                </div>
                                <div class="input-field col s6 m6 l6">
                                    <input id="REFERENCIA_2" type="text" class="validate" placeholder=""  value="">
                                    <label for="REFERENCIA_2">REFERENCIA 2</label>
                                </div>
                                <div class="input-field col s6 m6 l6">
                                    <input id="TEL_REF_2" type="text" class="validate" placeholder=""  value="">
                                    <label for="TEL_REF_2">Telefono</label>
                                </div>
                                <div class="input-field col s6 m6 l6">
                                    <input id="REFERENCIA_3" type="text" class="validate" placeholder=""  value="">
                                    <label for="REFERENCIA_3">REFERENCIA 3</label>
                                </div>
                                <div class="input-field col s6 m6 l6">
                                    <input id="TEL_REF_3" type="text" class="validate" placeholder=""  value="">
                                    <label for="TEL_REF_3">Teleleno</label>
                                </div>
                            </div>


                            <div class="col s12 m12 l12 div_btn_act_datos right-align">
                                <a id="edit_num" class="btn-small blue">editar</a>
                                <a id="save_num" class="btn-small blue hide">actualizar</a>
                            </div>

                        </div>
                        <!--componente de editar_marcacion_directa-->



                    </div>

                    <div class="col s12 m10 l10 margin_top_7px">
                        <!--componente de secciones de las tabs de tabs-->
                        <div id="div_gestiones" class="col s12 z-depth-1 div_gestor_contenido white"> 
                            <table class="highlight" id="tabla_gestiones">
                                <thead class="blue">
                                    <tr class="text-white">
                                        <td> <b>FECHA</b></td>
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
                                <thead class="blue">
                                    <tr class="text-white">
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
                            <div class="col s12 m9 l9">
                                <table>
                                    <thead>
                                        <tr class="blue">
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
                            <div class="col s12 m3 l3 div_btn">
                                <a id="new_agenda" class="btn green waves-effect waves-light">Agregar</a>
                            </div>
                            <div class="col s12 m3 l3 div_btn">
                                <a id="delete_agenda" class="btn red waves-effect waves-light">Eliminar</a>
                            </div>
                            <div class="col s12 m3 l3 div_btn">
                                <a id="ver_modal_agendas" class="btn blue waves-effect">Ver Agendas</a>
                            </div>

                            <div id="tabla_agendas" class="col s12 m12 l12"></div>
                        </div>
                        <div id="div_visitas" class="col s12 z-depth-1 div_gestor_contenido center center-align white">

                        </div>
                        <div id="div_convenios" class="col s12 z-depth-1 div_gestor_contenido center center-align white">
                            <table class="highlight" id="tabla_convenios">
                                <thead class="blue">
                                    <tr class="text-white">
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
                        <div id="div_saldos" class="col s12 z-depth-1 div_gestor_contenido center center-align white">

                        </div>
                    </div>

                    <div class="col s2 m2 l2 margin_top_7px">
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
                    <div id="CAJA_SEMANAS_PAGO" class="input-field col s12 m4 l4 hide">
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
            <div id="modal_alerta" class="modal">
                <div class="modal-content">
                    <h3 class="center">Alerta</h3>
                    <h5 id="mensaje_alerta" class="mensaje_alerta">

                    </h5>
                </div>
            </div>

            <div id="modal_agregar_agenda" class="modal">
                <div class="modal-content">
                    <h3 class="center">Nuevo Recordatorio</h3>
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
                        <div class="input-field col s12 div_btn right-align">
                            <a class="btn red waves-effect modal-close">Cancelar</a>
                            <a id="insertar_agenda" class="btn blue waves-effect">Aceptar</a>
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
                    <h4 class="center">Resutado Busqueda</h4>
                    <div class="input-field col s6 offset-s3">
                        <input id="buqueda_relacionada" type="text" class="validate">
                        <label for="buqueda_relacionada">Busqueda</label>
                    </div>
                    <div class="col s12 tabla_resultado_busqueda">
                        <table>
                            <thead>
                                <tr>
                                    <th>CUENTA</th>
                                    <th>ID SOCIO</th>
                                    <th>NOMBRE SOCIO</th>
                                    <th>NOMBRE SUCURSAL</th>
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

            <div id="modal_ver_agenda" class="modal">
                <div class="modal-content">
                    <h3 class="center">Alerta de Agenda</h3>

                    <div class="col s12">
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
                        <div class="col s12 div_btn center-align input-field">
                            <a class="btn red waves-effect modal-close">Posponer</a>
                            <a id="cuenta_agenda_datos" class="btn blue waves-effect modal-close">Buscar datos Ceunta</a>
                        </div>
                    </div>

                </div>
            </div>

        </div>	

        <script type="text/javascript" src="js/js/jquery-2.2.4.min.js"></script>
        <script type="text/javascript" src="js/js/materialize.min.js"></script>
        <script type="text/javascript" src="js/js/gestor_came.js"></script>
    </body>
</html>