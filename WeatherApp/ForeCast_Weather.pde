//Global Variables
//CAUTION: all variables here are local
//Students must decide which become global for draw()
//
void forecastAPICall ( String ServerCall ) {
  JSONObject object = loadJSONObject( ServerCall );
  //
  JSONObject city = object.getJSONObject("city"); //Unwrap {}
  String name = city.getString("name");
  String country = city.getString("country");
  int population = city.getInt("population");
  //
  JSONArray array = object.getJSONArray("list"); //Unwrapping
  //
  //Note: about elements of this LIST, see INTEGERS below validated in next two test lines
  //JSONObject allAlberta = weatherAlberta.getJSONObject(INTEGER); //Unwrap {}
  //println(allAlberta);
  // "0": 9 hours ahead, then in increments of every three hours for each integer
  // "5": 24 hours ahead, or 1 days
  // "13": 48 hours ahead, or 2 days (+8)
  // "21": 72 hours ahead, or 3 days (+8)
  // "29": ?? hours ahead, or 4 days (+8)
  // "37": ?? hours ahead, or 5 days (+8)
  // "38": ?? hours ahead, or 5 days + 3 hours
  // "39": ?? hours ahead, or 5 days + 6 hours
  // "39" is last integer or element, thus 40 total elements
  //Unwrapping Forecast Data: Array List Elements by Integer
  //
  int currentTimeInt = 5; //An algorithm exists to find the 3AM, 6AM, 9AM, 12 based on the current time
  // changing the starting index will give you a specific time temp AM or PM into the future
  int j=0; //reseting the numbering for the arrays below
  int futureElements = 6;
  String[] time = new String [futureElements];
  String[] weatherMain = new String [futureElements];
  String[] weatherDescription = new String [futureElements];
  String[] icon = new String [futureElements];
  float[] temp = new float [futureElements];
  float[] feelsLike = new float [futureElements];
  float[] tempMin = new float [futureElements];
  float[] tempMax = new float [futureElements];
  for (int i=currentTimeInt; i<40; i+=8) {
    JSONObject allList = array.getJSONObject(i); //Unwrap {}
    time[j] = allList.getString("dt_txt");
    //
    JSONObject main = allList.getJSONObject("main");
    temp[j] = main.getFloat("temp");
    feelsLike[j] = main.getFloat("feels_like");
    tempMin[j] = main.getFloat("temp_min");
    tempMax[j] = main.getFloat("temp_max");
    //
    JSONArray weather = allList.getJSONArray("weather");
    JSONObject allWeather = weather.getJSONObject(0);
    weatherMain[j] = allWeather.getString("main");
    weatherDescription[j] = allWeather.getString("description");
    icon[j] = allWeather.getString("icon");
    //
    println("\nTime Stamp", j, time[j]);
    println("The forecast weather will be", weatherMain[j], "or specifically", weatherDescription[j]);
    println("Using the weather icon", icon[j]);
    println("Projected Temperature at this time", temp[j], "inbetween", tempMin[j], "and", tempMax[j]);
    println("Which feels like", feelsLike[j]);
    j++;
  }
  //
  // Printing Forcast Data to the CONSOLE
  println("\nForcast Data for", name, country, "with", population, "people");
} //End Forecast Weather
