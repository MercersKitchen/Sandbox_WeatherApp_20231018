/* API Call Based on
 - http://api.openweathermap.org/data/2.5/weather?q=Alberta,CA&APPID=[Key Hidden]&mode=json&units=metric
 - http://api.openweathermap.org/data/2.5/forecast?q=Alberta,CA&APPID=[Key Hidden]&mode=json&units=metric
 */
//
//Global Variable
String URLCurrentAlberta;
String URLCurrentEdmonton;
String URLCurrentCalgary;
String URLCurrentRedDeer;
String URLForecastAlberta;
String URLForecastEdmonton;
String URLForecastCalgary;
String URLForecastRedDeer;
//
void buildingURL() {
  String domain = "http://api.openweathermap.org"; //http vs. https, s for secure
  String baseURL_data = "/data/2.5/"; //Legacy JSON CAll, current is 4.0 using LAT LON
  String currentWeather = "weather?";
  String forecastWeather = "forecast?";
  String baseURL_CurrentWeather = domain + baseURL_data + currentWeather;
  String baseURL_ForecastWeather = domain + baseURL_data + forecastWeather;
  //
  // NOTE: godMode is typing the [PLACE,COUNTRY] into the app
  String place = "q=";
  String alberta = "Alberta,CA"; //using COUNTRY since Alberta, US exists
  String edmonton = "Edmonton,CA"; //using COUNTRY since Edmonton, US exists
  String calgary = "Calgary,CA";
  String redDeer = "Red Deer,CA";
  //
  String apiKey = "APPID=06ee4dfaf9a7c9bdf9024604eda99160"; //API Key is PRIVATE so not included here
  //APPID might need to be uppercase
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  //
  URLCurrentAlberta = baseURL_CurrentWeather + place + alberta + and + apiKey + and + mode + and + unitMetric;
  URLCurrentEdmonton = baseURL_CurrentWeather + place + edmonton + and + apiKey + and + mode + and + unitMetric;
  URLCurrentCalgary = baseURL_CurrentWeather + place + calgary + and + apiKey + and + mode + and + unitMetric;
  URLCurrentRedDeer = baseURL_CurrentWeather + place + redDeer + and + apiKey + and + mode + and + unitMetric;
  URLForecastAlberta = baseURL_ForecastWeather + place + alberta + and + apiKey + and + mode + and + unitMetric;
  URLForecastEdmonton = baseURL_ForecastWeather + place + edmonton + and + apiKey + and + mode + and + unitMetric;
  URLForecastCalgary = baseURL_ForecastWeather + place + calgary + and + apiKey + and + mode + and + unitMetric;
  URLForecastRedDeer = baseURL_ForecastWeather + place + redDeer + and + apiKey + and + mode + and + unitMetric;
  //
  println("Current Alberta URL", URLCurrentAlberta);
  println("Current Edmonton URL", URLCurrentEdmonton);
  println("Current Calgary URL", URLCurrentCalgary);
  println("Current Red Deer URL", URLCurrentRedDeer);
  println("Forecast Alberta URL", URLForecastAlberta);
  println("Forecast Edmonton URL", URLForecastEdmonton);
  println("Forecast Calgary URL", URLForecastCalgary);
  println("Forecast Red Deer URL", URLForecastRedDeer);
  //
} //End Building URL
