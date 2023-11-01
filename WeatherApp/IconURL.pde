/* Uses API Call (UnWrapToVariables) to draw image
 - See void setup(), keyPressed(), draw() {}
 */
String weatherIconSetup;
String weatherIconString;
//
//Hardcoded Strings for ICON API Calling
//https://openweathermap.org/img/wn/01d@2x.png
String baseIconURL = "https://openweathermap.org/img/wn/";
String sun = "01d";
String fileExtension = "@2x.png";
//
void iconBuildingURLSetup() {
  weatherIconSetup = baseIconURL + sun + fileExtension;
  weatherIconImage = loadImage(weatherIconSetup);
} //End Icon Building URL Setup
//
void iconBuildingURLKeyPressed() {
  weatherIconString = baseIconURL + icon + fileExtension;
} //End Icon Building URL KeyPressed
//
