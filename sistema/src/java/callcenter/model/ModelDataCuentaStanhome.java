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
public class ModelDataCuentaStanhome {

    public static String datos_cuenta(String cuenta) {
        try {
            StartConexion ic = new StartConexion();
            String sql = "select * from stanhome_base_general a left join azteca_estatus_cuenta b on a.ID_ESTATUS = b.id_estatus_cuenta where DEALER = '" + cuenta + "';";
            System.out.println(sql);
            ic.rs = ic.st.executeQuery(sql);
            JSONObject objCuenta = new JSONObject();
            while (ic.rs.next()) {
                objCuenta.put("ID_CUENTA", ic.rs.getString("ID_CUENTA"));
                objCuenta.put("LV", ic.rs.getString("LV"));
                objCuenta.put("ASIGNACION", ic.rs.getString("ASIGNACION"));
                objCuenta.put("DEALER", ic.rs.getString("DEALER"));
                objCuenta.put("SALDOINICIALASIGNADO", ic.rs.getString("SALDOINICIALASIGNADO"));
                objCuenta.put("CARGOS", ic.rs.getString("CARGOS"));
                objCuenta.put("ABONOS", ic.rs.getString("ABONOS"));
                objCuenta.put("SALDOACTUAL", ic.rs.getString("SALDOACTUAL"));
                objCuenta.put("INTMORATORIOS", ic.rs.getString("INTMORATORIOS"));
                objCuenta.put("GTOSCBZA", ic.rs.getString("GTOSCBZA"));
                objCuenta.put("GTOSXRECUPCBZA", ic.rs.getString("GTOSXRECUPCBZA"));
                objCuenta.put("ACOBRAR", ic.rs.getString("ACOBRAR"));
                objCuenta.put("DESCRIPCION", ic.rs.getString("DESCRIPCION"));
                objCuenta.put("ASIGNACION2", ic.rs.getString("ASIGNACION2"));
                objCuenta.put("ASIGNACION_MOROSO", ic.rs.getString("ASIGNACION_MOROSO"));
                objCuenta.put("FECHAASIGNACION", ic.rs.getString("FECHAASIGNACION"));
                objCuenta.put("FECHAASIGNACIONPSC", ic.rs.getString("FECHAASIGNACIONPSC"));
                objCuenta.put("NUMCAMPANAS", ic.rs.getString("NUMCAMPANAS"));
                objCuenta.put("NOMBRE", ic.rs.getString("NOMBRE"));
                objCuenta.put("DEA_COLONIA", ic.rs.getString("DEA_COLONIA"));
                objCuenta.put("CALLE", ic.rs.getString("CALLE"));
                objCuenta.put("DEA_TELEFONO", ic.rs.getString("DEA_TELEFONO"));
                objCuenta.put("DEA_TEL_MOVIL", ic.rs.getString("DEA_TEL_MOVIL"));
                objCuenta.put("DEA_EMAIL", ic.rs.getString("DEA_EMAIL"));
                objCuenta.put("DEA_REFERENCIA", ic.rs.getString("DEA_REFERENCIA"));
                objCuenta.put("DEA_ENTRE_CALLES", ic.rs.getString("DEA_ENTRE_CALLES"));
                objCuenta.put("NOMPOB", ic.rs.getString("NOMPOB"));
                objCuenta.put("NOMEDO", ic.rs.getString("NOMEDO"));
                objCuenta.put("DEA_COD_POSTAL", ic.rs.getString("DEA_COD_POSTAL"));
                objCuenta.put("ANO", ic.rs.getString("ANO"));
                objCuenta.put("CAMPANA", ic.rs.getString("CAMPANA"));
                objCuenta.put("FECHA_INSERT", ic.rs.getString("FECHA_INSERT"));
                objCuenta.put("FECHA_BAJA", ic.rs.getString("FECHA_BAJA"));
                objCuenta.put("FECHA_REACTIVADO", ic.rs.getString("FECHA_REACTIVADO"));
                objCuenta.put("ID_ESTATUS", ic.rs.getString("ID_ESTATUS"));
                objCuenta.put("ID_ESTATUS_LLAMADA", ic.rs.getString("ID_ESTATUS_LLAMADA"));
                objCuenta.put("F_ULTIMA_GESTION", ic.rs.getString("F_ULTIMA_GESTION"));
                objCuenta.put("ID_GESTOR_ASIGNADO", ic.rs.getString("ID_GESTOR_ASIGNADO"));
                objCuenta.put("DIAS", ic.rs.getString("DIAS"));
                objCuenta.put("IDENTIFICADOR", ic.rs.getString("IDENTIFICADOR"));
                objCuenta.put("IDENTIFICADOR_TXT", ic.rs.getString("IDENTIFICADOR_TXT"));
                objCuenta.put("COMENTARIOS", ic.rs.getString("COMENTARIOS"));
                objCuenta.put("REFERENCIA_1", ic.rs.getString("REFERENCIA_1"));
                objCuenta.put("REFERENCIA_2", ic.rs.getString("REFERENCIA_2"));
                objCuenta.put("REFERENCIA_3", ic.rs.getString("REFERENCIA_3"));
                objCuenta.put("TEL_REF_1", ic.rs.getString("TEL_REF_1"));
                objCuenta.put("TEL_REF_2", ic.rs.getString("TEL_REF_2"));
                objCuenta.put("TEL_REF_3", ic.rs.getString("TEL_REF_3"));
                objCuenta.put("EXISTE", ic.rs.getString("EXISTE"));
                objCuenta.put("ESTATUS", ic.rs.getString("ESTATUS"));
                objCuenta.put("ESTATUS_POSIBLES_TXT", ic.rs.getString("ESTATUS_POSIBLES_TXT"));
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

    public static String cuenta_siguiete(String cuenta) {
        try {
            StartConexion ic = new StartConexion();
            String sql = "select * from stanhome_base_general a \n"
                    + "left join azteca_estatus_cuenta b on a.ID_ESTATUS = b.id_estatus_cuenta\n"
                    + "order by rand()  limit 1;";
            System.out.println(sql);
            ic.rs = ic.st.executeQuery(sql);
            JSONObject objCuenta = new JSONObject();
            while (ic.rs.next()) {
                objCuenta.put("ID_CUENTA", ic.rs.getString("ID_CUENTA"));
                objCuenta.put("LV", ic.rs.getString("LV"));
                objCuenta.put("ASIGNACION", ic.rs.getString("ASIGNACION"));
                objCuenta.put("DEALER", ic.rs.getString("DEALER"));
                objCuenta.put("SALDOINICIALASIGNADO", ic.rs.getString("SALDOINICIALASIGNADO"));
                objCuenta.put("CARGOS", ic.rs.getString("CARGOS"));
                objCuenta.put("ABONOS", ic.rs.getString("ABONOS"));
                objCuenta.put("SALDOACTUAL", ic.rs.getString("SALDOACTUAL"));
                objCuenta.put("INTMORATORIOS", ic.rs.getString("INTMORATORIOS"));
                objCuenta.put("GTOSCBZA", ic.rs.getString("GTOSCBZA"));
                objCuenta.put("GTOSXRECUPCBZA", ic.rs.getString("GTOSXRECUPCBZA"));
                objCuenta.put("ACOBRAR", ic.rs.getString("ACOBRAR"));
                objCuenta.put("DESCRIPCION", ic.rs.getString("DESCRIPCION"));
                objCuenta.put("ASIGNACION2", ic.rs.getString("ASIGNACION2"));
                objCuenta.put("ASIGNACION_MOROSO", ic.rs.getString("ASIGNACION_MOROSO"));
                objCuenta.put("FECHAASIGNACION", ic.rs.getString("FECHAASIGNACION"));
                objCuenta.put("FECHAASIGNACIONPSC", ic.rs.getString("FECHAASIGNACIONPSC"));
                objCuenta.put("NUMCAMPANAS", ic.rs.getString("NUMCAMPANAS"));
                objCuenta.put("NOMBRE", ic.rs.getString("NOMBRE"));
                objCuenta.put("DEA_COLONIA", ic.rs.getString("DEA_COLONIA"));
                objCuenta.put("CALLE", ic.rs.getString("CALLE"));
                objCuenta.put("DEA_TELEFONO", ic.rs.getString("DEA_TELEFONO"));
                objCuenta.put("DEA_TEL_MOVIL", ic.rs.getString("DEA_TEL_MOVIL"));
                objCuenta.put("DEA_EMAIL", ic.rs.getString("DEA_EMAIL"));
                objCuenta.put("DEA_REFERENCIA", ic.rs.getString("DEA_REFERENCIA"));
                objCuenta.put("DEA_ENTRE_CALLES", ic.rs.getString("DEA_ENTRE_CALLES"));
                objCuenta.put("NOMPOB", ic.rs.getString("NOMPOB"));
                objCuenta.put("NOMEDO", ic.rs.getString("NOMEDO"));
                objCuenta.put("DEA_COD_POSTAL", ic.rs.getString("DEA_COD_POSTAL"));
                objCuenta.put("ANO", ic.rs.getString("ANO"));
                objCuenta.put("CAMPANA", ic.rs.getString("CAMPANA"));
                objCuenta.put("FECHA_INSERT", ic.rs.getString("FECHA_INSERT"));
                objCuenta.put("FECHA_BAJA", ic.rs.getString("FECHA_BAJA"));
                objCuenta.put("FECHA_REACTIVADO", ic.rs.getString("FECHA_REACTIVADO"));
                objCuenta.put("ID_ESTATUS", ic.rs.getString("ID_ESTATUS"));
                objCuenta.put("ID_ESTATUS_LLAMADA", ic.rs.getString("ID_ESTATUS_LLAMADA"));
                objCuenta.put("F_ULTIMA_GESTION", ic.rs.getString("F_ULTIMA_GESTION"));
                objCuenta.put("ID_GESTOR_ASIGNADO", ic.rs.getString("ID_GESTOR_ASIGNADO"));
                objCuenta.put("DIAS", ic.rs.getString("DIAS"));
                objCuenta.put("IDENTIFICADOR", ic.rs.getString("IDENTIFICADOR"));
                objCuenta.put("IDENTIFICADOR_TXT", ic.rs.getString("IDENTIFICADOR_TXT"));
                objCuenta.put("COMENTARIOS", ic.rs.getString("COMENTARIOS"));
                objCuenta.put("REFERENCIA_1", ic.rs.getString("REFERENCIA_1"));
                objCuenta.put("REFERENCIA_2", ic.rs.getString("REFERENCIA_2"));
                objCuenta.put("REFERENCIA_3", ic.rs.getString("REFERENCIA_3"));
                objCuenta.put("TEL_REF_1", ic.rs.getString("TEL_REF_1"));
                objCuenta.put("TEL_REF_2", ic.rs.getString("TEL_REF_2"));
                objCuenta.put("TEL_REF_3", ic.rs.getString("TEL_REF_3"));
                objCuenta.put("EXISTE", ic.rs.getString("EXISTE"));
                objCuenta.put("ESTATUS", ic.rs.getString("ESTATUS"));
                objCuenta.put("ESTATUS_POSIBLES_TXT", ic.rs.getString("ESTATUS_POSIBLES_TXT"));
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

    public static String select_buscar_cuentas(String busqueda, int id_puesto) {
        try {
            StartConexion ic = new StartConexion();
            String sql = "call stanhome_buscar_cuentas('%" + busqueda.replace(";", "") + "%');";
//            System.out.println(sql);
            ic.rs = ic.st.executeQuery(sql);
            JSONArray listCuentas = new JSONArray();

            while (ic.rs.next()) { //id_cuenta, CLIENTE_UNICO, NOMBRE_CTE, NOMBRE_AVAL, TELEFONO1, TELEFONO2, TELEFONO3, TELEFONO4, TELAVAL
                JSONObject objCuenta = new JSONObject();
                objCuenta.put("ID_CUENTA", ic.rs.getString("ID_CUENTA"));
                objCuenta.put("DEALER", ic.rs.getString("DEALER"));
                objCuenta.put("NOMBRE", ic.rs.getString("NOMBRE"));
                objCuenta.put("ID_ESTATUS_CUENTA", ic.rs.getString("ID_ESTATUS_CUENTA"));
                listCuentas.add(objCuenta);

            }
            ic.rs.close();
            ic.st.close();
            ic.conn.close();

            return listCuentas.toString();
        } catch (SQLException e) {
            return "SQL: Error al buscar ceuntas Code Error: " + e;
        }
    }

    public static String guardar_gestion(String objGestion) {
        try {
            System.out.println(objGestion);
            JSONParser parser = new JSONParser();
            JSONObject jsonObject = (JSONObject) parser.parse(objGestion);

            Object _ID_CUENTA = jsonObject.get("_ID_CUENTA");
            Object _ID_CLIENTE = jsonObject.get("_DEALER");
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
            String sql = "call stanhome_insert_gestion(" + _ID_CUENTA + ",'" + _ID_CLIENTE + "', '" + _NUMERO_MARCADO + "', " + _ID_ESTATUS_CUENTA + ", " + _ID_ESTATUS_LLAMADA + ", " + _ID_USUARIO + ", '" + _GESTION + "', '" + _DURACION + "', " + _ID_PUESTO + ", " + _PROMESA + ", " + _F_PREDICTIVO + ");";
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

    public static String select_gestiones_cuenta(String cuenta) {
        try {
            StartConexion ic = new StartConexion();
            String sql = "call stanhome_gestiones_cuenta('" + cuenta + "');";
//            System.out.println(sql);
            ic.rs = ic.st.executeQuery(sql);
            JSONArray listGestiones = new JSONArray();

            // FECHA, HORA, NUMERO_MARCADO, GESTOR, ESTATUS, CODIGO, GESTION, DURACION
            while (ic.rs.next()) {
                JSONObject objGestion = new JSONObject();
                objGestion.put("FECHA", ic.rs.getString("FECHA"));
                objGestion.put("HORA", ic.rs.getString("HORA"));
                objGestion.put("NUMERO_MARCADO", ic.rs.getString("NUMERO_MARCADO"));
                objGestion.put("GESTOR", ic.rs.getString("GESTOR"));
                objGestion.put("ESTATUS", ic.rs.getString("ESTATUS"));
                objGestion.put("CODIGO", ic.rs.getString("CODIGO"));
                objGestion.put("GESTION", ic.rs.getString("GESTION"));
                objGestion.put("DURACION", ic.rs.getString("DURACION"));
                listGestiones.add(objGestion);

            }
            ic.rs.close();
            ic.st.close();
            ic.conn.close();

            return listGestiones.toString();
        } catch (SQLException e) {
            return "SQL: Error al buscar ceuntas Code Error: " + e;
        }
    }

    public static String actualizar_informacion_contacto(
            String ref1, String telref1, String ref2, String telref2, String ref3, String telref3, String cuenta
    ) {
        try {
            StartConexion ic = new StartConexion();
            String sql = "UPDATE stanhome_base_general SET\n"
                    + "REFERENCIA_1='" + ref1 + "',\n"
                    + "REFERENCIA_2='" + ref2 + "',\n"
                    + "REFERENCIA_3='" + ref3 + "',\n"
                    + "TEL_REF_1='" + telref1 + "',\n"
                    + "TEL_REF_2='" + telref2 + "',\n"
                    + "TEL_REF_3='" + telref3 + "'\n"
                    + "WHERE DEALER ='" + cuenta + "';";
//            System.out.println(sql);
            ic.st.executeUpdate(sql);

            ic.st.close();
            ic.conn.close();

            return "{\"ress\":\"DATOS ACTUALIZADOS\"}";
        } catch (SQLException e) {
            return "SQL: Error AL ACTUALIZAR LAS REFERENCIAS Code Error: " + e;
        }
    }
}
