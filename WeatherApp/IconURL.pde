String weatherIcon;
//
void iconBuildingURL() {
  //https://openweathermap.org/img/wn/01d@2x.png
  String baseIconURL = "https://openweathermap.org/img/wn/";
  //
  //CAUTION: Populated from JSON, below is testing only
  String icon = "13d"; //Key Value from JSON
  String fileExtension = "@2x.png";
  //
  weatherIcon = baseIconURL + icon + fileExtension;
  println(weatherIcon);
} //End Icon Building URL
