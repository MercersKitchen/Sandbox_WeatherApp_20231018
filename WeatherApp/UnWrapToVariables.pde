//Libraries
import java.util.Date; //Date Conversion Tool, UNIX Time Stamp from January 1, 1970 to the DT Value
//
//Global Variables
String name, country, icon, mainWeather, description;
int lat, lon, sunrise, sunset, timeCall;
float temp, feelsLike, tempMin, tempMax;
int humidity, pressure, seaLevel;
Date apiCurrentDateCall; //Variable ... holds all date functions, see Internet
//
//General Procedure used anytime
Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000);
  return dateHuman;
}// End Date

//
void APICall(String ServerCall) {
  JSONObject object = loadJSONObject( ServerCall );
  JSONObject coord = object.getJSONObject("coord"); //Unwrap {}
  lat = coord.getInt("lat");
  lon = coord.getInt("lon");
  //
  JSONObject main = object.getJSONObject("main"); //Unwrap {}
  temp = main.getFloat("temp");
  feelsLike = main.getFloat("feels_like");
  tempMin = main.getFloat("temp_min");
  tempMax = main.getFloat("temp_max");
  humidity = main.getInt("humidity");
  pressure = main.getInt("pressure");
  //seaLevel = main.getInt("sea_level");
  JSONObject sys = object.getJSONObject("sys"); //Unwrap {}
  country = sys.getString("country");
  sunrise = sys.getInt("sunrise");
  sunset = sys.getInt("sunset");
  //
  JSONArray weather = object.getJSONArray("weather"); //Unwrap {}
  JSONObject weatherObject = weather.getJSONObject(0); //Unwrap {}
  icon = weatherObject.getString("icon");
  mainWeather = weatherObject.getString("main");
  description = weatherObject.getString("description");
  //
  name = object.getString("name"); //Unwrap {}
  timeCall = object.getInt("dt"); //Unwrap {}
  //
  //Current Weather
  println("Passed URL", ServerCall);
  println("Object", object);
  println( name, country, timeCall );
  println("Coordinates", lat, lon);
  println( "Sunrise/Sunset", sunrise, sunset );
  println( "Temperature:", temp, "\tFeels Like:", feelsLike, "\tMin/Mas:", tempMin, tempMax );
  println( icon, mainWeather, description );
  //
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
