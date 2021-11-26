/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package callcenter.model;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/**
 *
 * @author zuagu
 */
public class ModelDataCuentaCame {
    
    
    public static String datos_cuenta_came(String cuenta) {
        try {
            StartConexion ic = new StartConexion();
            String sql = "select * from came_base_general a left join azteca_estatus_cuenta b on a.ID_ESTATUS = b.id_estatus_cuenta where ID_CUENTA = '" + cuenta +"';";
            System.out.println("datos_cuenta_came: " + sql);
            ic.rs = ic.st.executeQuery(sql);
            JSONObject objCuenta = new JSONObject();
            
            // ID_CUENTA  
            while (ic.rs.next()) {
                objCuenta.put("ID_CUENTA", ic.rs.getString("ID_CUENTA"));
                objCuenta.put("id_socio", ic.rs.getString("id_socio"));
                objCuenta.put("producto", ic.rs.getString("producto"));
                objCuenta.put("sbdir", ic.rs.getString("sbdir"));
                objCuenta.put("zona", ic.rs.getString("zona"));
                objCuenta.put("nombre_zona", ic.rs.getString("nombre_zona"));
                objCuenta.put("suc", ic.rs.getString("suc"));
                objCuenta.put("nombre_sucursal", ic.rs.getString("nombre_sucursal"));
                objCuenta.put("asignacion", ic.rs.getString("asignacion"));
                objCuenta.put("nombre_despacho", ic.rs.getString("nombre_despacho"));
                objCuenta.put("no_ggi", ic.rs.getString("no_ggi"));
                objCuenta.put("nombre_ggi", ic.rs.getString("nombre_ggi"));
                objCuenta.put("no_ciclo_grupo_no_vez", ic.rs.getString("no_ciclo_grupo_no_vez"));
                objCuenta.put("dias_atraso", ic.rs.getString("dias_atraso"));
                objCuenta.put("cartera_vigente", ic.rs.getString("cartera_vigente"));
                objCuenta.put("cartera_vencida_estadistica", ic.rs.getString("cartera_vencida_estadistica"));
                objCuenta.put("ahorro_consumido", ic.rs.getString("ahorro_consumido"));
                objCuenta.put("cartera_vencida_total", ic.rs.getString("cartera_vencida_total"));
                objCuenta.put("id_socio_sec", ic.rs.getString("id_socio_sec"));
                objCuenta.put("nombre_socio", ic.rs.getString("nombre_socio"));
                objCuenta.put("rfc", ic.rs.getString("rfc"));
                objCuenta.put("referencia_BANAMEX", ic.rs.getString("referencia_BANAMEX"));
                objCuenta.put("referencias_BBVA", ic.rs.getString("referencias_BBVA"));
                objCuenta.put("calle", ic.rs.getString("calle"));
                objCuenta.put("no_exterior", ic.rs.getString("no_exterior"));
                objCuenta.put("colonia", ic.rs.getString("colonia"));
                objCuenta.put("delegacion", ic.rs.getString("delegacion"));
                objCuenta.put("estado", ic.rs.getString("estado"));
                objCuenta.put("cp", ic.rs.getString("cp"));
                objCuenta.put("telefono", ic.rs.getString("telefono"));
                objCuenta.put("telefono_2", ic.rs.getString("telefono_2"));
                objCuenta.put("cargo", ic.rs.getString("cargo"));
                objCuenta.put("monto_credito_x_socio", ic.rs.getString("monto_credito_x_socio"));
                objCuenta.put("monto_credito_came", ic.rs.getString("monto_credito_came"));
                objCuenta.put("importe_pagare_grupal", ic.rs.getString("importe_pagare_grupal"));
                objCuenta.put("fecha_credito", ic.rs.getString("fecha_credito"));
                objCuenta.put("plazo", ic.rs.getString("plazo"));
                objCuenta.put("pagos_por_vencer", ic.rs.getString("pagos_por_vencer"));
                objCuenta.put("semanas_pagadas", ic.rs.getString("semanas_pagadas"));
                objCuenta.put("fecha_de_ultimo_pago", ic.rs.getString("fecha_de_ultimo_pago"));
                objCuenta.put("saldo_individualizado", ic.rs.getString("saldo_individualizado"));
                objCuenta.put("ID_ESTATUS", ic.rs.getString("ID_ESTATUS"));
                objCuenta.put("ID_ESTATUS_LLAMADA", ic.rs.getString("ID_ESTATUS_LLAMADA"));
                objCuenta.put("REFERENCIA_1", ic.rs.getString("REFERENCIA_1"));
                objCuenta.put("REFERENCIA_2", ic.rs.getString("REFERENCIA_2"));
                objCuenta.put("REFERENCIA_3", ic.rs.getString("REFERENCIA_3"));
                objCuenta.put("TEL_REF_1", ic.rs.getString("TEL_REF_1"));
                objCuenta.put("TEL_REF_2", ic.rs.getString("TEL_REF_2"));
                objCuenta.put("TEL_REF_3", ic.rs.getString("TEL_REF_3"));
                objCuenta.put("ESTATUS", ic.rs.getString("ESTATUS"));
                objCuenta.put("ESTATUS_POSIBLES_TXT", ic.rs.getString("ESTATUS_POSIBLES_TXT"));
                objCuenta.put("CUENTAS_DOBLES", ic.rs.getString("CUENTAS_DOBLES"));
                objCuenta.put("SALDO_C_DOBLES", ic.rs.getString("SALDO_C_DOBLES"));
            }
            ic.rs.close();
            ic.st.close();
            ic.conn.close();
//            System.out.println(objCuenta.toString());
            return objCuenta.toString();
        } catch (SQLException e) {

            System.out.println(e);
            return "SQL: Error al traer los datos de la cuenta stanhome Code Error: " + e;
        }
    }
    
    
    
    public static String datos_cuenta_siguiente() {
        try {
            StartConexion ic = new StartConexion();
            String sql = "select * from came_base_general a left join azteca_estatus_cuenta b on a.ID_ESTATUS = b.id_estatus_cuenta where IDENTIFICADOR != 0 order by rand() limit 1;";
            System.out.println(sql);
            ic.rs = ic.st.executeQuery(sql);
            JSONObject objCuenta = new JSONObject();
            
            // ID_CUENTA, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
            while (ic.rs.next()) {
                objCuenta.put("ID_CUENTA", ic.rs.getString("ID_CUENTA"));
                objCuenta.put("id_socio", ic.rs.getString("id_socio"));
                objCuenta.put("producto", ic.rs.getString("producto"));
                objCuenta.put("sbdir", ic.rs.getString("sbdir"));
                objCuenta.put("zona", ic.rs.getString("zona"));
                objCuenta.put("nombre_zona", ic.rs.getString("nombre_zona"));
                objCuenta.put("suc", ic.rs.getString("suc"));
                objCuenta.put("nombre_sucursal", ic.rs.getString("nombre_sucursal"));
                objCuenta.put("asignacion", ic.rs.getString("asignacion"));
                objCuenta.put("nombre_despacho", ic.rs.getString("nombre_despacho"));
                objCuenta.put("no_ggi", ic.rs.getString("no_ggi"));
                objCuenta.put("nombre_ggi", ic.rs.getString("nombre_ggi"));
                objCuenta.put("no_ciclo_grupo_no_vez", ic.rs.getString("no_ciclo_grupo_no_vez"));
                objCuenta.put("dias_atraso", ic.rs.getString("dias_atraso"));
                objCuenta.put("cartera_vigente", ic.rs.getString("cartera_vigente"));
                objCuenta.put("cartera_vencida_estadistica", ic.rs.getString("cartera_vencida_estadistica"));
                objCuenta.put("ahorro_consumido", ic.rs.getString("ahorro_consumido"));
                objCuenta.put("cartera_vencida_total", ic.rs.getString("cartera_vencida_total"));
                objCuenta.put("id_socio_sec", ic.rs.getString("id_socio_sec"));
                objCuenta.put("nombre_socio", ic.rs.getString("nombre_socio"));
                objCuenta.put("rfc", ic.rs.getString("rfc"));
                objCuenta.put("referencia_BANAMEX", ic.rs.getString("referencia_BANAMEX"));
                objCuenta.put("referencias_BBVA", ic.rs.getString("referencias_BBVA"));
                objCuenta.put("calle", ic.rs.getString("calle"));
                objCuenta.put("no_exterior", ic.rs.getString("no_exterior"));
                objCuenta.put("colonia", ic.rs.getString("colonia"));
                objCuenta.put("delegacion", ic.rs.getString("delegacion"));
                objCuenta.put("estado", ic.rs.getString("estado"));
                objCuenta.put("cp", ic.rs.getString("cp"));
                objCuenta.put("telefono", ic.rs.getString("telefono"));
                objCuenta.put("telefono_2", ic.rs.getString("telefono_2"));
                objCuenta.put("cargo", ic.rs.getString("cargo"));
                objCuenta.put("monto_credito_x_socio", ic.rs.getString("monto_credito_x_socio"));
                objCuenta.put("monto_credito_came", ic.rs.getString("monto_credito_came"));
                objCuenta.put("importe_pagare_grupal", ic.rs.getString("importe_pagare_grupal"));
                objCuenta.put("fecha_credito", ic.rs.getString("fecha_credito"));
                objCuenta.put("plazo", ic.rs.getString("plazo"));
                objCuenta.put("pagos_por_vencer", ic.rs.getString("pagos_por_vencer"));
                objCuenta.put("semanas_pagadas", ic.rs.getString("semanas_pagadas"));
                objCuenta.put("fecha_de_ultimo_pago", ic.rs.getString("fecha_de_ultimo_pago"));
                objCuenta.put("saldo_individualizado", ic.rs.getString("saldo_individualizado"));
                objCuenta.put("ID_ESTATUS", ic.rs.getString("ID_ESTATUS"));
                objCuenta.put("ID_ESTATUS_LLAMADA", ic.rs.getString("ID_ESTATUS_LLAMADA"));
                objCuenta.put("REFERENCIA_1", ic.rs.getString("REFERENCIA_1"));
                objCuenta.put("REFERENCIA_2", ic.rs.getString("REFERENCIA_2"));
                objCuenta.put("REFERENCIA_3", ic.rs.getString("REFERENCIA_3"));
                objCuenta.put("TEL_REF_1", ic.rs.getString("TEL_REF_1"));
                objCuenta.put("TEL_REF_2", ic.rs.getString("TEL_REF_2"));
                objCuenta.put("TEL_REF_3", ic.rs.getString("TEL_REF_3"));
                objCuenta.put("ESTATUS", ic.rs.getString("ESTATUS"));
                objCuenta.put("ESTATUS_POSIBLES_TXT", ic.rs.getString("ESTATUS_POSIBLES_TXT"));
                objCuenta.put("CUENTAS_DOBLES", ic.rs.getString("CUENTAS_DOBLES"));
                objCuenta.put("SALDO_C_DOBLES", ic.rs.getString("SALDO_C_DOBLES"));
            }
            ic.rs.close();
            ic.st.close();
            ic.conn.close();
//            System.out.println(objCuenta.toString());
            return objCuenta.toString();
        } catch (SQLException e) {

            System.out.println(e);
            return "SQL: Error al traer los datos de la cuenta stanhome Code Error: " + e;
        }
    }
    
    public static String datos_cuenta_predictivo_came(String id_socio) {
        try {
            StartConexion ic = new StartConexion();
            String sql = "select * from came_base_general a left join azteca_estatus_cuenta b on a.ID_ESTATUS = b.id_estatus_cuenta where IDENTIFICADOR != 0 and id_socio = " + id_socio + " order by rand() limit 1;";
            System.out.println(sql);
            ic.rs = ic.st.executeQuery(sql);
            JSONObject objCuenta = new JSONObject();
            
            // ID_CUENTA, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , 
            while (ic.rs.next()) {
                objCuenta.put("ID_CUENTA", ic.rs.getString("ID_CUENTA"));
                objCuenta.put("id_socio", ic.rs.getString("id_socio"));
                objCuenta.put("producto", ic.rs.getString("producto"));
                objCuenta.put("sbdir", ic.rs.getString("sbdir"));
                objCuenta.put("zona", ic.rs.getString("zona"));
                objCuenta.put("nombre_zona", ic.rs.getString("nombre_zona"));
                objCuenta.put("suc", ic.rs.getString("suc"));
                objCuenta.put("nombre_sucursal", ic.rs.getString("nombre_sucursal"));
                objCuenta.put("asignacion", ic.rs.getString("asignacion"));
                objCuenta.put("nombre_despacho", ic.rs.getString("nombre_despacho"));
                objCuenta.put("no_ggi", ic.rs.getString("no_ggi"));
                objCuenta.put("nombre_ggi", ic.rs.getString("nombre_ggi"));
                objCuenta.put("no_ciclo_grupo_no_vez", ic.rs.getString("no_ciclo_grupo_no_vez"));
                objCuenta.put("dias_atraso", ic.rs.getString("dias_atraso"));
                objCuenta.put("cartera_vigente", ic.rs.getString("cartera_vigente"));
                objCuenta.put("cartera_vencida_estadistica", ic.rs.getString("cartera_vencida_estadistica"));
                objCuenta.put("ahorro_consumido", ic.rs.getString("ahorro_consumido"));
                objCuenta.put("cartera_vencida_total", ic.rs.getString("cartera_vencida_total"));
                objCuenta.put("id_socio_sec", ic.rs.getString("id_socio_sec"));
                objCuenta.put("nombre_socio", ic.rs.getString("nombre_socio"));
                objCuenta.put("rfc", ic.rs.getString("rfc"));
                objCuenta.put("referencia_BANAMEX", ic.rs.getString("referencia_BANAMEX"));
                objCuenta.put("referencias_BBVA", ic.rs.getString("referencias_BBVA"));
                objCuenta.put("calle", ic.rs.getString("calle"));
                objCuenta.put("no_exterior", ic.rs.getString("no_exterior"));
                objCuenta.put("colonia", ic.rs.getString("colonia"));
                objCuenta.put("delegacion", ic.rs.getString("delegacion"));
                objCuenta.put("estado", ic.rs.getString("estado"));
                objCuenta.put("cp", ic.rs.getString("cp"));
                objCuenta.put("telefono", ic.rs.getString("telefono"));
                objCuenta.put("telefono_2", ic.rs.getString("telefono_2"));
                objCuenta.put("cargo", ic.rs.getString("cargo"));
                objCuenta.put("monto_credito_x_socio", ic.rs.getString("monto_credito_x_socio"));
                objCuenta.put("monto_credito_came", ic.rs.getString("monto_credito_came"));
                objCuenta.put("importe_pagare_grupal", ic.rs.getString("importe_pagare_grupal"));
                objCuenta.put("fecha_credito", ic.rs.getString("fecha_credito"));
                objCuenta.put("plazo", ic.rs.getString("plazo"));
                objCuenta.put("pagos_por_vencer", ic.rs.getString("pagos_por_vencer"));
                objCuenta.put("semanas_pagadas", ic.rs.getString("semanas_pagadas"));
                objCuenta.put("fecha_de_ultimo_pago", ic.rs.getString("fecha_de_ultimo_pago"));
                objCuenta.put("saldo_individualizado", ic.rs.getString("saldo_individualizado"));
                objCuenta.put("ID_ESTATUS", ic.rs.getString("ID_ESTATUS"));
                objCuenta.put("ID_ESTATUS_LLAMADA", ic.rs.getString("ID_ESTATUS_LLAMADA"));
                objCuenta.put("REFERENCIA_1", ic.rs.getString("REFERENCIA_1"));
                objCuenta.put("REFERENCIA_2", ic.rs.getString("REFERENCIA_2"));
                objCuenta.put("REFERENCIA_3", ic.rs.getString("REFERENCIA_3"));
                objCuenta.put("TEL_REF_1", ic.rs.getString("TEL_REF_1"));
                objCuenta.put("TEL_REF_2", ic.rs.getString("TEL_REF_2"));
                objCuenta.put("TEL_REF_3", ic.rs.getString("TEL_REF_3"));
                objCuenta.put("ESTATUS", ic.rs.getString("ESTATUS"));
                objCuenta.put("ESTATUS_POSIBLES_TXT", ic.rs.getString("ESTATUS_POSIBLES_TXT"));
                objCuenta.put("CUENTAS_DOBLES", ic.rs.getString("CUENTAS_DOBLES"));
                objCuenta.put("SALDO_C_DOBLES", ic.rs.getString("SALDO_C_DOBLES"));
            }
            ic.rs.close();
            ic.st.close();
            ic.conn.close();
//            System.out.println(objCuenta.toString());
            return objCuenta.toString();
        } catch (SQLException e) {

            System.out.println(e);
            return "SQL: Error al traer los datos de la cuenta stanhome Code Error: " + e;
        }
    }
    
    
    public static String select_buscar_cuentas(String criterio) {
        try {
            StartConexion ic = new StartConexion();
            String sql = "call came_buscar_cuentas('" + criterio + "');";
            System.out.println(sql);
            ic.rs = ic.st.executeQuery(sql);
            
            JSONArray listCuentas = new JSONArray();
             
            while (ic.rs.next()) {
                JSONObject objCuenta = new JSONObject();
                objCuenta.put("ID_CUENTA", ic.rs.getString("ID_CUENTA"));
                objCuenta.put("id_socio", ic.rs.getString("id_socio"));
                objCuenta.put("nombre_socio", ic.rs.getString("nombre_socio"));
                objCuenta.put("nombre_sucursal", ic.rs.getString("nombre_sucursal"));
                listCuentas.add(objCuenta);
            }
            ic.rs.close();
            ic.st.close();
            ic.conn.close();
//            System.out.println(objCuenta.toString());
            return listCuentas.toString();
        } catch (SQLException e) {

            System.out.println(e);
            return "SQL: Error al traer los datos de la cuenta stanhome Code Error: " + e;
        }
    }
    
    public static String guardar_gestion(String objGestion) {
        try {
            System.out.println(objGestion);
            JSONParser parser = new JSONParser();
            JSONObject jsonObject = (JSONObject) parser.parse(objGestion);

            Object _ID_CUENTA = jsonObject.get("_ID_CUENTA");
            Object _ID_SOCIO = jsonObject.get("_ID_SOCIO");
            Object _NUMERO_MARCADO = jsonObject.get("_NUMERO_MARCADO");
            Object _ID_ESTATUS_CUENTA = jsonObject.get("_ID_ESTATUS_CUENTA");
            Object _ID_ESTATUS_LLAMADA = jsonObject.get("_ID_ESTATUS_LLAMADA");
            Object _ID_USUARIO = jsonObject.get("_ID_USUARIO");
            Object _GESTION = jsonObject.get("_GESTION");
            Object _DURACION = jsonObject.get("_DURACION");
            Object _ID_PUESTO = jsonObject.get("_ID_PUESTO");
            Object _PROMESA = jsonObject.get("_PROMESA");
            Object _F_PREDICTIVO = jsonObject.get("_F_PREDICTIVO");

            StartConexion ic = new StartConexion();
            String sql = "call came_insert_gestion(" + _ID_CUENTA + ",'" + _ID_SOCIO + "', '" + _NUMERO_MARCADO + "', " + _ID_ESTATUS_CUENTA + ", " + _ID_ESTATUS_LLAMADA + ", " + _ID_USUARIO + ", '" + _GESTION + "', '" + _DURACION + "', '00:00:00');";
            System.out.println(sql);
            ic.rs = ic.st.executeQuery(sql);

            JSONObject objRes = new JSONObject();
//            System.out.println(objRes);
            while (ic.rs.next()) {
                objRes.put("response", ic.rs.getString("response"));

            }

            ic.rs.close();
            ic.st.close();
            ic.conn.close();
            return objRes.toJSONString();
        } catch (SQLException e) {
            return "SQL: Error: al insertar datos de gestion Code Error: " + e;
        } catch (org.json.simple.parser.ParseException ex) {
            Logger.getLogger(ModelGestor.class.getName()).log(Level.SEVERE, null, ex);
            return "SQL: Falla en el parser de JSONObject";
        }
    }
    
    public static String select_gestiones_cuenta(String id_cliente) {
        try {
            StartConexion ic = new StartConexion();
            String sql = "call came_gestiones_cliente('" + id_cliente + "');";
            System.out.println(sql);
            ic.rs = ic.st.executeQuery(sql);
            
            JSONArray listGestiones = new JSONArray();
            // , , , , , , , , DURACION, ID_CUENTA
            while (ic.rs.next()) {
                JSONObject objGestion = new JSONObject();
                objGestion.put("ID_GESTION", ic.rs.getString("ID_GESTION"));
                objGestion.put("FECHA_GESTION", ic.rs.getString("FECHA_GESTION"));
                objGestion.put("ID_SOCIO", ic.rs.getString("ID_SOCIO"));
                objGestion.put("NUMERO_MARCADO", ic.rs.getString("NUMERO_MARCADO"));
                objGestion.put("ESTATUS_GESTION", ic.rs.getString("ESTATUS_GESTION"));
                objGestion.put("ESTATUS_LLAMADA", ic.rs.getString("ESTATUS_LLAMADA"));
                objGestion.put("GESTOR", ic.rs.getString("GESTOR"));
                objGestion.put("GESTION", ic.rs.getString("GESTION"));
                objGestion.put("DURACION", ic.rs.getString("DURACION"));
                listGestiones.add(objGestion);
            }
            ic.rs.close();
            ic.st.close();
            ic.conn.close();
//            System.out.println(objCuenta.toString());
            return listGestiones.toString();
        } catch (SQLException e) {

            System.out.println(e);
            return "SQL: Error al traer las gestiones de la cuenta stanhome Code Error: " + e;
        }
    }
    
    
    
    public static String actualizar_informacion_contacto(String objGestion) {
        try {
            JSONParser parser = new JSONParser();
            JSONObject jsonObject = (JSONObject) parser.parse(objGestion);
            System.out.println(jsonObject);

            Object _ID_CUENTA = jsonObject.get("ID_CUENTA");
            Object _TELEFONO = jsonObject.get("TELEFONO_1");
            Object _TELEFONO_2 = jsonObject.get("TELEFONO_2");
            Object _REFERENCIA_1 = jsonObject.get("REFERENCIA_1");
            Object _TEL_REF_1 = jsonObject.get("TEL_REF_1");
            Object _REFERENCIA_2 = jsonObject.get("REFERENCIA_2");
            Object _TEL_REF_2 = jsonObject.get("TEL_REF_2");
            Object _REFERENCIA_3 = jsonObject.get("REFERENCIA_3");
            Object _TEL_REF_3 = jsonObject.get("TEL_REF_3");

            StartConexion ic = new StartConexion();
            String sql = "call came_update_datos_contacto('"+_TELEFONO+"','"+_TELEFONO_2+"','"+_REFERENCIA_1+"','"+_TEL_REF_1+"','"+_REFERENCIA_2+"','"+_TEL_REF_2+"','"+_REFERENCIA_3+"' ,'"+_TEL_REF_3+"' ,'"+_ID_CUENTA+"')";
            System.out.println(sql);
            ic.rs = ic.st.executeQuery(sql);

            JSONObject objRes = new JSONObject();
//            System.out.println(objRes);
            while (ic.rs.next()) {
                objRes.put("response", ic.rs.getString("response"));

            }

            ic.rs.close();
            ic.st.close();
            ic.conn.close();
            return objRes.toJSONString();
        } catch (SQLException e) {
            return "SQL: Error: al insertar datos de gestion Code Error: " + e;
        } catch (org.json.simple.parser.ParseException ex) {
            Logger.getLogger(ModelGestor.class.getName()).log(Level.SEVERE, null, ex);
            return "SQL: Falla en el parser de JSONObject";
        }
    }
    
}
