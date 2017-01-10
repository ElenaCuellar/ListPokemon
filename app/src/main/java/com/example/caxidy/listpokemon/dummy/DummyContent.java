package com.example.caxidy.listpokemon.dummy;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.util.Log;

import com.example.caxidy.listpokemon.HttpHandler;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Helper class for providing sample content for user interfaces created by
 * Android template wizards.
 * <p>
 * TODO: Replace all uses of this class before publishing your app.
 */
public class DummyContent {

    //Variables relacionadas con la obtencion del JSON
    /////////////////////////////////////////////////////////
    private static String TAG = DummyContent.class.getSimpleName();
    private static ProgressDialog pDialog; //!!
    //url para obtener los pokemon del json
    private static String urlJson = "http://iesayala.ddns.net/ElenaCuellar/jsonElena.php";
    ////////////////////////////////////////////////////////

    /**
     * An array of sample (dummy) items.
     */
    public static final List<DummyItem> ITEMS = new ArrayList<DummyItem>();

    /**
     * A map of sample (dummy) items, by ID.
     */
    public static final Map<String, DummyItem> ITEM_MAP = new HashMap<String, DummyItem>();

    static {
        //Se obtienen los datos del JSON
        //Llenar lista de pokemon
        new getPokemon().execute();
    }

    private static void addItem(DummyItem item) {
        ITEMS.add(item);
        ITEM_MAP.put(item.id, item);
    }

    /**
     * A dummy item representing a piece of content.
     */
    public static class DummyItem {
        public final String id;
        public final String nombre;
        public final String urlimagen;
        public final String descripcion;

        public DummyItem(String id, String nombre, String urlimagen, String descripcion) {
            this.id = id;
            this.nombre = nombre;
            this.urlimagen = urlimagen;
            this.descripcion = descripcion;
        }

        @Override
        public String toString() {
            return nombre;
        }
    }

    /**
     * Hacer una llamada HTTP para obtener el json, mediante una tarea asincrona
     */
    private static class getPokemon extends AsyncTask<Void, Void, Void> {

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            /*!!pDialog = new ProgressDialog(????contexto, 2); //!!?¿?
            pDialog.setMessage("Espere un momento...");
            pDialog.setCancelable(false);
            pDialog.show();*/

        }

        @Override
        protected Void doInBackground(Void... arg0) {
            HttpHandler sh = new HttpHandler();

            // Haciendo peticion a una url y obteniendo la respuesta
            String jsonStr = sh.makeServiceCall(urlJson);

            Log.e(TAG, "Response from url: " + jsonStr);

            if (jsonStr != null) {
                try {
                    Log.e(TAG, "0");
                    JSONObject jsonObj = new JSONObject(jsonStr);
                    Log.e(TAG, "1");

                    // Obteniendo el nodo array del json
                    JSONArray pokemons = jsonObj.getJSONArray("pokemon");

                    Log.e(TAG, "2");

                    for (int i = 0; i < pokemons.length(); i++) {
                        JSONObject p = pokemons.getJSONObject(i);

                        int id = p.getInt("Id");
                        String nombre = p.getString("Nombre");
                        String foto = p.getString("UrlImagen");
                        String descripcion = p.getString("Descripcion");
                        Log.e(TAG, "Pokemon "+i+": "+id+", "+nombre+", "+foto+", "+descripcion);

                        // añadir cada pokemon a la lista
                        addItem(new DummyItem(Integer.toString(id),nombre,foto,descripcion));
                    }
                } catch (final JSONException e) {
                    Log.e(TAG, "Json parsing error: " + e.getMessage());
                }
            } else {
                Log.e(TAG, "No encontro el JSON en el servidor.");
            }

            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);

            /*!!if (pDialog.isShowing())
                pDialog.dismiss();*/
        }
    }
}
