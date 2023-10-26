/* API Call Based on
 - api.openweathermap.org/data/2.5/weather?q=London&appid={API key}
 - api.openweathermap.org/data/2.5/forecast?q=London&appid={API key}
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
  // &appid={API key}
  // &appid={API key}
  String domain = "api.openweathermap.org"; //http vs. https, s for secure
  String baseURL_data = "/data/2.5/";
  String currentWeather = "weather?";
  String forecastWeather = "forecast?";
  String baseURL_CurrentWeather = domain + baseURL_data + currentWeather;
  String baseURL_ForecastWeather = domain + baseURL_data + forecastWeather;
  //
  String place = "q=";
  String alberta = "Alberta";
  String edmonton  = "Edmonton";
  String calgary  = "Calgary";
  String redDeer  = "Red Deer";
  //
  String apiKey = "appid=[API Key Here]"; //API Key is PRIVATE so not included here
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  //
  URLCurrentAlberta = baseURL_CurrentWeather + place + alberta + and + apiKey + mode + unitMetric;
  URLCurrentEdmonton = baseURL_CurrentWeather + place + edmonton + and + apiKey + mode + unitMetric;
  URLCurrentCalgary = baseURL_CurrentWeather + place + calgary + and + apiKey + mode + unitMetric;
  URLCurrentRedDeer = baseURL_CurrentWeather + place + redDeer + and + apiKey + mode + unitMetric;
  URLForecastAlberta = baseURL_ForecastWeather + place + alberta + and + apiKey + mode + unitMetric;
  URLForecastEdmonton = baseURL_ForecastWeather + place + edmonton + and + apiKey + mode + unitMetric;
  URLForecastCalgary = baseURL_ForecastWeather + place + calgary + and + apiKey + mode + unitMetric;
  URLForecastRedDeer = baseURL_ForecastWeather + place + redDeer + and + apiKey + mode + unitMetric;
  //
  println(URLCurrentAlberta);
  println(URLCurrentEdmonton);
  println(URLCurrentCalgary);
  println(URLCurrentRedDeer);
  println(URLForecastAlberta);
  println(URLForecastEdmonton);
  println(URLForecastCalgary);
  println(URLForecastRedDeer);
  //
} //End Building URL
