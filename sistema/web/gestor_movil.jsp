<%-- 
    Document   : gestor_movil
    Created on : 7/08/2021, 11:22:17 PM
    Author     : zuagu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Gestor Movil</title>
        <link rel="shortcut icon" href="image/logoInco.fw.png">
        <link rel="stylesheet" type="text/css" href="css/css/icons-material.css">
        <link rel="stylesheet" type="text/css" href="css/css/materialize.min.css">
        <style>

            .info > div {
                border: 1px solid rgb(235, 235, 235);
                padding: 3px;
            }
            .margin_top_1rem {
                margin-top: 1rem;
            }
            span {
                font-weight: 500;
            }
            .telefonos_contacto th, .telefonos_contacto td {
                padding: 5px;
            }
            .botones_historial > .btn {
                width: 100%;
                margin-top: 5px;
            }
            .modal.bottom-sheet {
                max-height: 95% !important;
                border-radius: 20px 20px 0 0;
            }
            .modal.bottom-sheet table td div > span {
                background-color: #424242 ;
                color: rgb(231, 231, 231);
                padding: 1px 3px;
                border-radius: 5px;
                margin-top: 4px;
            }
            .modal.bottom-sheet tr {
                border:none;
            }
            .modal.bottom-sheet tr td div {
                padding: 12px 10px;
                border-radius: 5px;
                /* border: 1px solid #424242; */
                background-color: rgba(196, 196, 196, 0.555);
            }
            .contenedor_info {
                overflow: auto;
                height: 70vh;
                border-radius: 12px;
            }
            #_busqueda {
                background-color: rgb(226, 226, 226);
                border: 1px solid rgb(196, 196, 196);
                font-family: monospace;
                font-size: 18px;
                border-radius: 10px;
                text-align: center;
            }

            #btn_buscar {
                background-color: rgb(226, 226, 226);
                border: 1px solid rgb(196, 196, 196);
            }
            .input-field .prefix {
                border-radius: 10px;
                width: 40px;
                top: 0;
                padding: 0.50rem;
            }
            #sec_busqueda {
                margin-bottom: 0.1rem;
            }
        </style>
    </head>
    <body>
        <div class="row">
            <div id="sec_busqueda" class="input-field col s12">
                <i id="btn_buscar" class="material-icons prefix waves-effect">search</i>
                <input id="_busqueda" type="text" class="validate">
            </div>

            <div class="col s12 m12 l12">

                <div id="info_cliente" class="card-panel info">

                    <div class="col s12">
                        <label>TITULAR:</label>
                        <span id="NOMBRE_CTE" class="right"></span>
                    </div>

                    <div class="col s9">
                        <label>CLIENTE UNICO:</label>
                        <span id="CLIENTE_UNICO" class="right"></span>
                    </div>

                    <div class="col s3">
                        <label>EDAD:</label>
                        <span id="EDAD" class="right"></span>
                    </div>

                    <div class="col s12">
                        <label>PRODUCTO:</label>
                        <span id="PRODUCTO" class="right"></span>
                    </div>

                    <div class="col s12">
                        <label>GERENCIA:</label>
                        <span id="GERENCIA" class="right"></span>
                    </div>

                    <div class="col s12">
                        <label>GERENTE:</label>
                        <span id="GERENTE" class="right"></span>
                    </div>

                    <div class="col s12">
                        <label>ZONA:</label>
                        <span id="TERRITORIO" class="right"></span>
                    </div>

                    <div class="col s12">
                        <label>DIRECCION:</label>
                        <span id="DIRECCION_CTE" class="right"></span>
                    </div>


                    <div class="col s12 margin_top_1rem">
                        <label>ESTATUS:</label>
                        <span id="TXT_CODIGO" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>CAPITAL:</label>
                        <span id="SALDO" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>MORATORIOS:</label>
                        <span id="MORATORIOS" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>PLAN:</label>
                        <span id="PLAN" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>ULTIMO PAGO:</label>
                        <span id="IMP_ULTIMO_PAGO" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>SEMANAS:</label>
                        <span id="ATRASO_MAXIMO" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>DIA DE PAGO:</label>
                        <span id="DIA_PAGO" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>FECHA ULTIMO PAGO:</label>
                        <span id="FECHA_ULTIMO_PAGO" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>SALDO TOTAL:</label>
                        <span id="SALDO_TOTAL" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>F. ASIGNACION:</label>
                        <span id="FECHA_INSERT" class="right"></span>
                    </div>

                    <div class="col s12 margin_top_1rem">
                        <label>DIRECCION AVAL</label>
                        <span id="CALLEAVAL" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>NOMBRE AVAL</label>
                        <span id="NOMBRE_AVAL" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>TEL 1 AVAL</label>
                        <span id="TELAVAL" class="right"></span>
                    </div>
                    <div class="col s12">
                        <label>TEL 2 AVAL</label>
                        <span id="TELAVAL2" class="right"></span>
                    </div>



                    <div class="col s12 telefonos_contacto margin_top_1rem">
                        <table>
                            <thead>
                                <tr class="grey darken-3 white-text">
                                    <th>Nombre</th>
                                    <th>telefono</th>
                                </tr>

                            </thead>
                            <tbody id="numeros_cliente">
                                <tr>
                                    <td id="NOM_TEL1"></td>
                                    <td><a id="TELEFONO1"></a></td>
                                </tr>
                                <tr>
                                    <td id="NOM_TEL2"></td>
                                    <td><a id="TELEFONO2"></a></td>
                                </tr>
                                <tr>
                                    <td id="NOM_TEL3"></td>
                                    <td><a id="TELEFONO3"></a></td>
                                </tr>
                                <tr>
                                    <td id="NOM_TEL4"></td>
                                    <td><a id="TELEFONO4"></a></td>
                                </tr>
                                <tr>
                                    <td id="NOM_TEL5"></td>
                                    <td><a id="TELEFONO5"></a></td>
                                </tr>
                            </tbody>

                        </table>
                    </div>

                    <div class="right-align">
                        <a class="btn-flat blue-grey white-text">editar</a>
                    </div>

                    <div class="center botones_historial">
                        <a class="btn grey darken-3 waves-effect modal-trigger" data-target="modal1">GESTIONES</a>
                        <a class="btn grey darken-3 waves-effect modal-trigger">CONVENIOS</a>
                        <a class="btn grey darken-3 waves-effect modal-trigger">PAGOS</a>
                        <a class="btn grey darken-3 waves-effect modal-trigger">VISITAS</a>
                    </div>

                    <div class="col s12 input-field">
                        <select id="estatus" tabindex="-1"><option value="1" selected="">SELECCIONA EL ESTAUS</option>
                            <option value="1">LLAMADA</option>
                            <option value="2">PREDICTIVO</option>
                            <option value="3">WHATS APP</option>
                            <option value="4">SMS</option>
                            <option value="5">IVR</option>
                            <option value="6">VISITA</option>
                            <option value="7">REPORTE PAGO</option></select>
                    </div>

                    <div class="col s12 input-field">
                        <select id="codigo" tabindex="-1"><option value="1" selected="">SELECCIONA EL CODIGO</option>
                            <option value="1">LLAMADA</option>
                            <option value="2">PREDICTIVO</option>
                            <option value="3">WHATS APP</option>
                            <option value="4">SMS</option>
                            <option value="5">IVR</option>
                            <option value="6">VISITA</option>
                            <option value="7">REPORTE PAGO</option></select>
                    </div>

                    <div id="resultado_busqueda" class="modal bottom-sheet">
                        <div class="modal-content">
                            <h5 class="center">RESULTADO BUSQUEDA</h5>
                            <div id="cargando_cuentas">

                            </div>
                            <div class="contenedor_info">
                                <table>
                                    <tbody id="tb_cuentas_encontradas">

                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <div class="modal-footer center col s10 offset-s1">
                            <a href="#!" class="modal-close grey darken-3 col s12 waves-effect waves-green btn">cerrar</a>
                        </div>
                    </div>

                    <div id="modal1" class="modal bottom-sheet">
                        <div class="modal-content">
                            <h5 class="center">GESTIONES</h5>
                            <div class="contenedor_info">
                                <table>
                                    <tbody><tbody>
                                        <tr>
                                            <td>
                                                <div>
                                                    <span>ZUAGU</span>
                                                    <span>LLAMADA</span>
                                                    <span>CLIENTE NO DEFINE</span>
                                                    <hr>
                                                    <span>8125457825</span>
                                                    <span>2021-06-23</span>
                                                    <span>10:37:27</span>
                                                    <hr>
                                                    8125457825 SE COMINICA TITULAR DICE QUE NO PAAGAR POR QUE SE LE HACE 
                                                    BASTENTE RENIEGA QUE NO QUIERE NINGUN CONVENIO
                                                </div>

                                            </td>
                                        </tr>
                                    </tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer center col s10 offset-s1">
                            <a href="#!" class="modal-close grey darken-3 col s12 waves-effect waves-green btn">cerrar</a>
                        </div>
                    </div>



                    <div class="center">
                        <p>.</p>
                    </div>


                </div>

            </div>


        </div>



        <script type="text/javascript" src="js/js/jquery-2.2.4.min.js"></script>
        <script type="text/javascript" src="js/js/materialize.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('.modal').modal();
                $('#modal1').modal({outDuration: 900});
                $('select').formSelect({container: 'body'});
            });

            $("#btn_buscar").click(function () {
                $("#resultado_busqueda").modal("open");
                $("#tb_cuentas_encontradas").empty();
                $("#cargando_cuentas").empty();
                $("#cargando_cuentas").append(`<div class="progress"><div class="indeterminate"></div></div>`);
                let str_busqueda = $("#_busqueda").val();
                buscar_cuentas_gestor(str_busqueda, 1, "tb_cuentas_encontradas");
            });

            $('#tb_cuentas_encontradas').on('click', '.cuenta_encontrada', function () {
//                console.log($('.cuenta_en_CLIENTE_UNICO', this).text());
                let cuenta = $('.cuenta_en_CLIENTE_UNICO', this).text();
                select_datos_cuenta(cuenta);
                $('#resultado_busqueda').modal('close');
            });





            //==================================================================
            function limpiar_datos() {
                $("#info_cliente .info > span").empty();
            }
            //funcion de buscador
            function buscar_cuentas_gestor(_busqueda, _id_puesto, _div) {
                var params = {
                    action: "select_buscar_cuentas",
                    busqueda: _busqueda,
                    id_puesto: _id_puesto
                };
                $.ajax({
                    type: "POST",
                    url: "ControllerDataCuentaAzteca",
                    data: params,
                    dataType: "json",
                    success: function (cuentas) {
                        console.log(cuentas);
                        $('#cargando_cuentas').empty();
                        $('#' + _div).empty();
                        for (let item of cuentas) {
                            $('#' + _div).append('<tr class="cuenta_encontrada"><td><div>' +
                                    '<span  class="cuenta_en_CLIENTE_UNICO">' + item.CLIENTE_UNICO + '</span><hr>' + item.NOMBRE_CTE + '</div></tr>');
                        }
                    },
                    error: function (error) {
                        console.log(error);
                    }
                });
            }

            function select_datos_cuenta(_cuenta) {
                
                $("#info_cliente span").empty();
                var params = {
                    action: "datos_cuenta_azteca",
                    cuenta: _cuenta
                };
                $.ajax({
                    type: "POST",
                    url: "ControllerDataCuentaAzteca",
                    data: params,
                    dataType: "json",
                    success: function (datos_cuenta) {
                        console.log(datos_cuenta);

                        $("#tbody_telefonos").empty();
                        for (var dato in datos_cuenta) {
                            $("#" + dato).empty();
                            $("#" + dato).append(datos_cuenta[dato]);
                        }
                    }
                });
            }
        </script>
    </body>
</html>
