//Global Variables
float tempAlberta, tempMinAlberta, tempMaxAlberta;
//
void APICall(String ServerCall) {
  println("Passed URL", ServerCall);
  JSONObject object = loadJSONObject( ServerCall );
  println("Object", object);
  JSONObject mainAlberta = object.getJSONObject("main"); //Unwrap {}
  tempAlberta = mainAlberta.getFloat("temp");
  tempMinAlberta = mainAlberta.getFloat("temp_min");
  tempMaxAlberta = mainAlberta.getFloat("temp_max");
} //End API Call
//
void unwrapToVariables() {
} //End Unwrap To Variables

//Unwrap To Variables
/* Code to Copy, use println() to verify
 
 CAUTION: must verify JSON Object from Browser Console or JSON Lint (Browser) to
 know the structure of how to unwrap varaibles. Examples are below
 
 Note: use APICall() Variables here, for example jsonCurrentAlberta
 Caution: variables should be a mix of global and local variables
 
 JSONArray weather = jsonObject-Variable.getJSONArray("weather"); //Unwrapping
 
 JSONObject all = weather.getJSONObject(0); //Unwrap {}
 String mainWeather = all.getString("main");
 String description = all.getString("description");
 String icon = all.getString("icon");
 
 JSONObject main = jsonObject-Variable.getJSONObject("main"); //Unwrap {}
 float temp = main.getFloat("temp");
 float tempMin = main.getFloat("temp_min");
 float tempMax = main.getFloat("temp_max");
 
 int apiCallTime = jsonObject-Variable.getInt("dt");
 
 JSONObject sys = jsonObject-Variable.getJSONObject("sys"); //Unwrap {}
 String country = sys.getString("country");
 int sunrise = sys.getInt("sunrise");
 int sunset = sys.getInt("sunset");
 
 String name = jsonObject-Variable.getString("name");
 
 */
