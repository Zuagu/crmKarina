
var options_estatus_llamadas = "";
var options_estatus_cuenta = "";

$(document).ready(function () {
    //iniciar el dropdown del menu
    $('.fixed-action-btn').floatingActionButton();
    $('select').formSelect({container: 'body'});
    $('.modal').modal();
    $(".dropdown-trigger").dropdown({constrainWidth: false});
    $('.sidenav').sidenav();

    $(".sidenav").empty();
    $(".sidenav").append(`<li class="center"><img src="image/icon-user.png"><li>`);
    // funcion que pinta el menu

    for (let indice in menu) {
        let submenu_text = '';
        for (let i in menu[indice].submenus) {
            submenu_text += `<a href="${menu[indice].jsp[i]}" class="collection-item"><i class="material-icons left">${menu[indice].iconosSubmenus[i]}</i>${menu[indice].submenus[i]}</a>`;
        }
        $(".sidenav").append(`<li>
            <div class="collapsible-header"><i class="material-icons">${menu[indice].icono}</i>${menu[indice].name}</div>
            <div class="collapsible-body collection">${submenu_text}</div>
        </li>`);
    }

    $('.collapsible').collapsible();
    $('.tooltipped').tooltip({margin: 20});
    $("#info_gestor").fadeIn(1500);
    $('.tabs').tabs();
    $('.datepicker').datepicker({
        container: "body",
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15, // Creates a dropdown of 15 years to control year,
        today: 'Today',
        clear: 'Clear',
        close: 'Ok',
        autoClose: true,
        closeOnSelect: true, // Close upon selecting a date,
        format: "yyyy-mm-dd"
    });
    $('.timepicker').timepicker({
        default: 'now',
        twelveHour: false,
        container: 'body'
    });
    $("#tiempo_actual").val("00:00:00");
    $("#retraso_actual").val("00:00:00");
    
});

window.onload = function () {
    select_cuenta_siguiente(id_usuario);
    options_estatus_llamadas = `<option value="0" selected>Selecciona Codigo</option>
        <option value="1">SIN CLASIFICAR</option>
        <option value="2">SIN DATOS</option>
        <option value="3">NO EXISTE</option>
        <option value="4">NO DISPONIBLE</option>
        <option value="5">NO CONTESTA</option>
        <option value="6">NUMERO OCUPADO</option>
        <option value="7">NO LO CONOCE</option>
        <option value="8">FUERA DE SERVICIO</option>
        <option value="9">CUELGA LLAMADA</option>
        <option value="10">CLIENTE NO VIVE AHÍ</option>
        <option value="11">MENSAJE EN BUZON</option>
        <option value="12">MENSAJE TERCERO</option>
        <option value="13">MENSAJE FAMILIAR</option>
        <option value="14">CLIENTE COLGO</option>
        <option value="15">NEGATIVA DE PAGO</option>
        <option value="16">SEGUIMIENTO</option>
        <option value="17">AVAL NO DEFINE</option>
        <option value="18">CLIENTE NO DEFINE</option>
        <option value="19">LIQUIDACION</option>
        <option value="20">REESTRUCTURA</option>
        <option value="21">PLAN ACTIVO</option>
        <option value="22">PROMESA RECURRENTE</option>
        <option value="23">PROMESA PAGO PARCIAL</option>
        <option value="24">PROMESA PAGO INICIAL</option>
        <option value="25">PROMESA DE PAGO</option>
        <option value="26">PLAN CANCELADO</option>
        <option value="27">PLAN INCUMPLIDO</option>
        <option value="28">PROMESA INCUMPLIDA</option>
        <option value="29">DEFUNCION</option>
        <option value="30">CUENTA LIQUIDADA</option>
        <option value="31">ACLARACION</option>`;
    $("#codigo_llamada").append(options_estatus_llamadas);

    $('select').formSelect();

};

// =============================================================================
$("#gestion").keyup(function () {
    var cadena = $(this).val().replace(/[&\/\#,+()$~%'":*?<>{}|]/g, '');
    cadena = cadena.toUpperCase();
    $(this).val(cadena);
});
// =============================================================================
$("#cerrar").click(function () {
    Cerrar(id_usuario);
});
function Cerrar(id) {
    $.ajax({
        type: "POST",
        url: "/sistema/ControllerUsuario",
        data: {action: "cerrar_sesion", id_usuario: id}
    });
}
// =============================================================================
// funcion que lanza el menu lateral
$(".img_log").click(function () {
    $('.sidenav').sidenav('open');
});

// =============================================================================

$("#edit_num").click(function () {
//    console.log("Funcion no disponible");
    $('#edit_num').addClass('hide');
    $('#save_num').removeClass('hide');

    $('#datos_marcacion_directa').addClass('hide');
    $('#editar_marcacion_directa').removeClass('hide');

});

$("#save_num").click(function () {

    $('#save_num').addClass('hide');
    $('#edit_num').removeClass('hide');

    $('#datos_marcacion_directa').removeClass('hide');
    $('#editar_marcacion_directa').addClass('hide');
    let id_socio_sec = $("#id_socio_sec").val();

    if (id_socio_sec.length > 5) {
        actualizar_informacion_contacto();
    }

});


$("#editar_info_aval").click(function () {

    $('#editar_info_aval').addClass('hide');
    $('#save_info_aval').removeClass('hide');

    $('#datos_marcacion_aval').addClass('hide');
    $('#edit_datos_marcacion_aval').removeClass('hide');

});

$("#save_info_aval").click(function () {

    $('#save_info_aval').addClass('hide');
    $('#editar_info_aval').removeClass('hide');

    $('#edit_datos_marcacion_aval').addClass('hide');
    $('#datos_marcacion_aval').removeClass('hide');
    let cliente_unico = $("#CUENTA").val();
    console.log(cliente_unico.length);
    if (cliente_unico.length > 5) {
        actualizar_informacion_cont_principal();
    }

});
// =============================================================================
$("#buscar_cuentas, #buscador_cuentas_gestor").click(function () {
    $('#modal_busqueda').modal('open');
    $('#tb_cont_busqueda').empty();
});
// =============================================================================
$("#buscador_cuentas_gestor").keyup(function (e) {

    if (e.keyCode === 13) {
        if ($("#buscador_cuentas_gestor").val().length > 5) {
            select_datos_cuenta($("#buscador_cuentas_gestor").val());
        } else {
            $("#modal_alerta").modal("open");
            $("#mensaje_alerta").empty();
            $("#mensaje_alerta").append("<br>El criterio de busqueda es muy corto");
        }
    }
});

// =============================================================================
$(".limpiar_texto").keyup(function () {
    var cadena = $(this).val().replace(/[&\/\#,+()$~%'":*?<>{}|]/g, '');
    $(this).val(cadena);
});
// =============================================================================
$("#datos_marcacion_directa").delegate(".num_phone", "click", function () {
    $("#numero_marcado_deudor").val($(this).text().replace('phone_iphone', '').replace('local_phone', ''));
    $(".num_phone").removeClass("numero_marcado");
    $(this).addClass("numero_marcado");
    let num = $(this).text().replace('phone_iphone', '').replace('local_phone', '');
    if (num.length >= 8) {
        $("#gestion").val($(this).text().replace('phone_iphone', '').replace('local_phone', ''));
        $("#gestion").removeAttr("readonly");
    } else {
        alert("El dato selecionado no es numero");
    }
});

$("#datos_marcacion_aval").delegate(".num_phone", "click", function () {
    $("#numero_marcado_deudor").val($(this).text().replace('phone_iphone', '').replace('local_phone', ''));
    $(".num_phone").removeClass("numero_marcado");
    $(this).addClass("numero_marcado");
    let num = $(this).text().replace('phone_iphone', '').replace('local_phone', '');
    if (num.length >= 8) {
        $("#gestion").val($(this).text().replace('phone_iphone', '').replace('local_phone', ''));
        $("#gestion").removeAttr("readonly");
    } else {
        alert("El dato selecionado no es numero");
    }
});
// =============================================================================
$("#guardar_gestion").click(function () {
    let c_llamda = $("#codigo_llamada").val() || "0";
    let ges = $("#gestion").val() || "0";
    let num_mar = $("#numero_marcado_deudor").val() || "0";
    let c_est = $("#estatus").val() || "0";
    console.table([c_llamda, ges, num_mar, c_est]);

    if (c_llamda !== "0" && ges !== "0" && num_mar !== "" && c_est !== "") {
        var myObjGestion = {
            _ID_CUENTA: $('#ID_CUENTA').val(),
            _ID_SOCIO: $('#id_socio_sec').val(),
            _NUMERO_MARCADO: $('#numero_marcado_deudor').val(),
            _ID_ESTATUS_CUENTA: $('#estatus').val(),
            _ID_ESTATUS_LLAMADA: $('#codigo_llamada').val(),
            _ID_USUARIO: id_usuario,
            _GESTION: $('#gestion').val(),
            _DURACION: $('#tiempo_actual').val(),
            _ID_PUESTO: id_puesto_usuario,
            _PROMESA: 0,
            _F_PREDICTIVO: 0
        };

        $('#guardar_gestion').addClass('disabled');
        console.table([myObjGestion]);
        insertar_gestion(myObjGestion);
    } else {
        $("#modal_alerta").modal("open");
        $("#mensaje_alerta").empty();
        $("#mensaje_alerta").append('Favor de rellenar los sigientes campos<br><br>' +
                '- Disposicion <br>- Codigo de llamada <br>- Numero marcado');
    }
});
// =============================================================================
$('#buqueda_relacionada').keyup(function (e) {
    if (e.keyCode === 13) {
        let busqueda = $(this).val();
        if (busqueda.length > 6) {
            buscar_cuentas_gestor(busqueda, id_usuario, 'tb_cont_busqueda');
        } else {
            $('#modal_alerta').modal('open');
            $('#mensaje_alerta').empty();
            $('#mensaje_alerta').append(`El criterio de busqueda es muy corto ingrese mas de 6 letras`);
        }
    }
});
// =============================================================================
$('#tb_cont_busqueda').on('click', '.cuenta_encontrada', function () {
//    console.log( $('.cuenta_en_CLIENTE_UNICO',this).text() );
    let cuenta = $('.cuenta_en_CLIENTE_UNICO', this).text();
    select_datos_cuenta(cuenta);
    $('#modal_busqueda').modal('close');
});

// =============================================================================
$("#cuenta_siguiente").click(function () {
    select_cuenta_siguiente(id_usuario);
});
// =============================================================================
$("#VENCIDO").click(function () {
    $("#modal_vencido_b").modal('open');
});
// =============================================================================
// Seccion de Agendas
$("#new_agenda").click(function () {
    $('#modal_agregar_agenda').modal('open');
});


$('#insertar_agenda').click(function () {
    insertar_agenda();
});

$('#tab_agendas').click(function () {
    select_agendas();
});

$('#agenta_hora').click(function () {
    $('#mensaje_error_agenda').empty();
});

$("#tb_list_agenda").on("click", ".row_reg_agenda", function () {
    $(".row_reg_agenda").removeClass("selected");
    $("#id_reg_agenda").val($(this).attr("id").replace("row_agenda_", ""));
    $(this).addClass("selected");
});

$("#cuenta_agenda_datos").click(function () {
    let cliente_unico = $("#agenta_cliente_unico").val();
    let id_reg_agenda = $("#id_agenda_gestor").val();
    select_datos_cuenta(cliente_unico);
    descartar_agenda_gestor(id_reg_agenda);
});

$("#ver_modal_agendas").click(function () {
    $('#modal_ver_agenda').modal('open');
});

// =============================================================================

// =============================================================================

// =============================================================================

// =============================================================================
// =============================================================================
// =============================================================================
// =============================================================================
// ============================== Funciones ====================================
// =============================================================================
// =============================================================================
// =============================================================================
function limpiar_datos() {
    $("#info_gestor input").val("");
    $("#info_gestor_secundario input").val("");
    $("#ID_CUENTA").val("");
    $("#numero_marcado_deudor").val("");
    console.log("limpieza de datos");
}

function select_cuenta_siguiente(_id_usuario) {
    var params = {
        action: "cuenta_siguiete",
        id_usuario: _id_usuario
    };
//    console.log(params);
    $.ajax({
        type: "POST",
        url: "ControllerDataCuentaCame",
        data: params,
        dataType: "json",
        success: function (d_c) {
            console.log(d_c);
            limpiar_datos();
            if (d_c.IDENTIFICADOR === '0') {
                alert('Esta cuenta ya esta inactiva y asignada a otro despacho');
            }
            for (var dato in d_c) {
                $("#" + dato).empty();
                $("#" + dato).val(d_c[dato]);
            }
            
            $("#cuentas_dobles").val(`N# ${d_c.CUENTAS_DOBLES} - $${d_c.SALDO_C_DOBLES}`);

            $("#direc_came").val(`${d_c.calle} ${d_c.no_exterior}  ${d_c.colonia}, ${d_c.cp}, ${d_c.delegacion} ${d_c.estado}`);
            $("#tb_numeros").empty();
            $("#tb_numeros").append(`<tr><td>${d_c.nombre_socio}</td><td><a class="num_phone">${d_c.telefono}<a></td></tr>`);
            $("#tb_numeros").append(`<tr><td>${d_c.nombre_socio}</td><td><a class="num_phone">${d_c.telefono_2}<a></td></tr>`);
            $("#tb_numeros").append(`<tr><td>${d_c.REFERENCIA_1}</td><td><a class="num_phone">${d_c.TEL_REF_1}<a></td></tr>`);
            $("#tb_numeros").append(`<tr><td>${d_c.REFERENCIA_2}</td><td><a class="num_phone">${d_c.TEL_REF_2}<a></td></tr>`);
            $("#tb_numeros").append(`<tr><td>${d_c.REFERENCIA_3}</td><td><a class="num_phone">${d_c.TEL_REF_3}<a></td></tr>`);

            $("#estatus").empty();
            $("#estatus").append('<option value="0"  selected>Selecciona Estatus</option>' + d_c["ESTATUS_POSIBLES_TXT"]);
            $("#codigo_llamada").empty();
            $("#codigo_llamada").append(options_estatus_llamadas);
            $('select').formSelect();

            $("#numero_marcado_deudor, #gestion").val("");
            $("#tiempo_actual").val("00:00:00");
            $("#retraso_actual").val("00:00:00");

            select_gestiones_cuenta(d_c.id_socio_sec, "0000-00-00", "tbody_tabla_gestiones");
        },
        error: function (error) {
            console.log(error);
        }
    });
}

// =============================================================================

function select_datos_cuenta(_cuenta) {
    var params = {
        action: "datos_cuenta_came",
        cuenta: _cuenta
    };
    console.log(params);
    $.ajax({
        type: "POST",
        url: "ControllerDataCuentaCame",
        data: params,
        dataType: "json",
        success: function (d_c) {

            console.log(d_c);
            limpiar_datos();
            
            if (d_c.IDENTIFICADOR === '0') {
                alert('Esta cuenta ya esta inactiva y asignada a otro despacho');
            }
            for (var dato in d_c) {
                $("#" + dato).empty();
                $("#" + dato).val(d_c[dato]);
            }
            
            $("#cuentas_dobles").val(`N# ${d_c.CUENTAS_DOBLES} - $${d_c.SALDO_C_DOBLES}`);
            
            $("#direc_came").val(`${d_c.calle} ${d_c.no_exterior}  ${d_c.colonia}, ${d_c.cp}, ${d_c.delegacion} ${d_c.estado}`);
            $("#tb_numeros").empty();
            $("#tb_numeros").append(`<tr><td>${d_c.nombre_socio}</td><td><a class="num_phone">${d_c.telefono}<a></td></tr>`);
            $("#tb_numeros").append(`<tr><td>${d_c.nombre_socio}</td><td><a class="num_phone">${d_c.telefono_2}<a></td></tr>`);
            $("#tb_numeros").append(`<tr><td>${d_c.REFERENCIA_1}</td><td><a class="num_phone">${d_c.TEL_REF_1}<a></td></tr>`);
            $("#tb_numeros").append(`<tr><td>${d_c.REFERENCIA_2}</td><td><a class="num_phone">${d_c.TEL_REF_2}<a></td></tr>`);
            $("#tb_numeros").append(`<tr><td>${d_c.REFERENCIA_3}</td><td><a class="num_phone">${d_c.TEL_REF_3}<a></td></tr>`);

            $("#estatus").empty();
            $("#estatus").append('<option value="0"  selected>Selecciona Estatus</option>' + d_c["ESTATUS_POSIBLES_TXT"]);
            $("#codigo_llamada").empty();
            $("#codigo_llamada").append(options_estatus_llamadas);
            $('select').formSelect();

            $("#numero_marcado_deudor, #gestion").val("");
            $("#tiempo_actual").val("00:00:00");
            $("#retraso_actual").val("00:00:00");

            select_gestiones_cuenta(d_c.id_socio_sec, "0000-00-00", "tbody_tabla_gestiones");
        },
        error: function (error) {
            console.log('Error en select_datos_cuenta: ', error);
        }
    });
}

// =============================================================================
function insertar_gestion(myObj) {
//    console.log(myObj);

    var params = {
        action: "guardar_gestion",
        datos: JSON.stringify(myObj)
    };
    $.ajax({
        type: "POST",
        url: "ControllerDataCuentaCame",
        data: params,
        dataType: "json",
        success: function (result) {
            alert("Gestion guardada");
            $("#codigo_llamada").empty();
            $("#codigo_llamada").append(options_estatus_llamadas);
            $("#gestion").val("");
            $('select').formSelect();
            $("#numero_marcado_deudor").val("");
            $("#gestion").attr("readonly", "readonly");
            $("#tiempo_actual").val("00:00:00");
            $("#retraso_actual").val("00:00:00");
            $('#guardar_gestion').removeClass('disabled');

            select_gestiones_cuenta(myObj["_ID_SOCIO"], '0000-00-00', "tbody_tabla_gestiones");
        },
        error: function (error) {
            console.log(error);
        }
    });
}
// =============================================================================
function select_gestiones_cuenta(_cuenta, _fecha_inico, _div) {
    $("#" + _div).empty();
    $("#" + _div).append('<div class="progress"><div class="indeterminate"></div></div>');
    var params = {
        action: "select_gestiones_cuenta",
        cuenta: _cuenta,
        fecha_inico: _fecha_inico
    };
//    console.log(params);
    $.ajax({
        type: "POST",
        url: "ControllerDataCuentaCame",
        data: params,
        dataType: "json",
        success: function (gestiones) {

            $("#" + _div).empty();
            for (var i in gestiones) {
                $("#" + _div).append('<tr class="tb_gestion_cuenta">' +
                        '<td class="g_fecha">' + gestiones[i].FECHA_GESTION + '</td>' +
                        '<td class="g_num_marcado">' + gestiones[i].NUMERO_MARCADO + '</td>' +
                        '<td class="g_usuario">' + gestiones[i].GESTOR + '</td>' +
                        '<td class="g_estatus">' + gestiones[i].ESTATUS_GESTION + '</td>' +
                        '<td class="g_codigo">' + gestiones[i].ESTATUS_LLAMADA + '</td>' +
                        '<td class="g_gestion">' + gestiones[i].GESTION + '</td>' +
                        '<td class="g_duracio">' + gestiones[i].DURACION + '</td>' +
                        '</tr>'
                        );
            }
        },
        error: function (error) {
            console.log(error);
        }

    });
}
// =============================================================================
//funcion de buscador
function buscar_cuentas_gestor(_busqueda, _id_puesto, _div) {
    $("#" + _div).empty();
    $("#" + _div).append('<div class="progress"><div class="indeterminate"></div></div>');
    var params = {
        action: "select_buscar_cuentas",
        busqueda: _busqueda,
        id_puesto: _id_puesto
    };
    console.log(params);
    $.ajax({
        type: "POST",
        url: "ControllerDataCuentaCame",
        data: params,
        dataType: "json",
        success: function (cuentas) {
            console.log(cuentas);
            $('#' + _div).empty();
            for (let item of cuentas) {
                $('#' + _div).append(`<tr class="cuenta_encontrada">
                <td class="cuenta_en_CLIENTE_UNICO">${item.ID_CUENTA}</td>
                <td>${item.id_socio}</td>
                <td>${item.nombre_socio}</td>
                <td>${item.nombre_sucursal}</td>
                </tr>`);
            }
//            console.log(cuentas);
        },
        error: function (error) {
            console.log(error);
        }
    });
}

// =============================================================================
function actualizar_informacion_contacto() {
    let myObj = {
        TELEFONO_1: $('#telefono').val(),
        TELEFONO_2: $('#telefono_2').val(),
        REFERENCIA_1: $('#REFERENCIA_1').val(),
        TEL_REF_1: $('#TEL_REF_1').val(),
        REFERENCIA_2: $('#REFERENCIA_2').val(),
        TEL_REF_2: $('#TEL_REF_2').val(),
        REFERENCIA_3: $('#REFERENCIA_3').val(),
        TEL_REF_3: $('#TEL_REF_3').val(),
        ID_CUENTA: $('#ID_CUENTA').val()
    };
    
    let params = {
        action: 'actualizar_informacion_contacto',
        datos: JSON.stringify(myObj)
    };
    console.log(params);
    $.ajax({
        type: "POST",
        url: "ControllerDataCuentaCame",
        data: params,
        dataType: "json",
        success: function (result) {
            window.alert(result.response);
            select_datos_cuenta(myObj.ID_CUENTA);
        },
        error: function (error) {
            console.log(error);
        }
    });
}

// =============================================================================
function actualizar_informacion_cont_principal() {
    let params = {
        action: 'actualizar_informacion_cont_principal',

        CONTACTO_PRINCIAL: $('#CONTACTO_PRINCIAL').val(),
        TELEFONO_PRINCIPAL: $('#TELEFONO_PRINCIPAL').val(),
        TELEFONO_REFERENCIA2: $('#TELEFONO_PRINCIPAL_2').val(),

        CLIENTE_UNICO: $('#CUENTA').val()
    };
    $.ajax({
        type: "POST",
        url: "ControllerDataCuentaAxtel",
        data: params,
        dataType: "json",
        success: function (result) {
            console.log(result);
            select_datos_cuenta(params.CLIENTE_UNICO);
        },
        error: function (error) {
            console.log(error);
        }
    });
}
// Secion de codigo de agenda
// =============================================================================

function select_agendas() {
    $.ajax({
        type: "POST",
        url: "ControllerDataCuentaAxtel",
        data: {action: 'select_agendas', id_gestor: id_usuario},
        dataType: "json",
        success: function (result) {
            console.log(result);
            $('#tb_list_agenda').empty();
            for (let item of result) {
                $('#tb_list_agenda').append(`<tr id='row_agenda_${item.ID_REGISTRO}' class='row_reg_agenda ${item.F_ACTIVE}'>
                <td>${item.ID_REGISTRO}</td>
                <td>${item.CLIENTE_UNICO}</td>
                <td>${item.DESCRIPCION}</td>
                <td>${item.FECHA}</td>
                <td>${item.HORA}</td>
                </tr>`);
                if (parseInt(item.H_EJECUTAR) > 0) {
                    console.log(parseInt(item.H_EJECUTAR));
                    setTimeout(() => {
                        select_list_agendas_modal(item.CLIENTE_UNICO, item.DESCRIPCION, item.FECHA, item.HORA, item.ID_REGISTRO);
                        $('#modal_ver_agenda').modal('open');
                    }, parseInt(item.H_EJECUTAR) * 1000);
                }

            }
        },
        error: function (error) {
            console.log(error);
        }
    });
}

function insertar_agenda() {
    let params = {
        action: 'insertar_agenda',
        cliente_unico: $('#cliente_unico_agenda').val(),
        id_usuario: id_usuario,
        descripcion: $('#descripcion_agenda').val(),
        fecha: $('#fecha_agenda').val(),
        hora: $('#hora_agenda').val()
    };
    console.log(params);
    $.ajax({
        type: "POST",
        url: "ControllerDataCuentaAxtel",
        data: params,
        dataType: "json",
        success: function (result) {
            console.log(result);
            if (result.response === 'OK') {
                $('#cliente_unico_agenda').val('');
                $('#descripcion_agenda').val('');
                $('#fecha_agenda').val('');
                $('#hora_agenda').val('');
                $('#modal_agregar_agenda').modal('close');
                select_agendas();
            } else {
                $('#mensaje_error_agenda').empty();
                $('#mensaje_error_agenda').append(result.response);

            }
        },
        error: function (err) {
            console.log(err);
        }
    });
}

// tb_cont_agenda
function select_list_agendas_modal(_cuenta, _descripcion, _fecha, _hora, _id_reg_agenda) {
    $("#agenta_cliente_unico").val(_cuenta);
    $("#agenta_descripcion").val(_descripcion);
    $("#agenta_fecha").val(_fecha);
    $("#agenta_hora").val(_hora);
    $("#id_agenda_gestor").val(_id_reg_agenda);
}
