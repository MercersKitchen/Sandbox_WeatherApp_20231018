/* Open Weather Map App: Reminders, BUGs and ToDos
- ICON Notes

*/
//
//Libraries and Dependancies
//
// Global Variables
PImage weatherIconImage;
//
void setup() {
  //Geometry
  buildingURL();
  iconBuildingURLSetup(); //Note: encapuslated loading weatherIconImage
  //CAUTION: must answer, what place does the Weather App automatically 
  // Populate variables from?
  // APICall(URLCurrentEdmonton)
  //Population of Variables using Server from Sensor Data
  //DIV rect()
}//End setup()
//
void draw() {
  image (weatherIconImage, 0, 0); //Very simple Image Drawing, no rect()
  //
  //Students to Complete: All Current Weather Variables
  //
  // City Call, see procedure using Boolean & Button
  // Choice of Three Cities: Alberta, Edmonton, Calgary, Red Deer
}//End draw()
//
void keyPressed() {
  // City Call, see procedure using Boolean & Button
  if (key=='A' || key=='a') APICall(URLCurrentAlberta);
  if (key=='E' || key=='e') APICall(URLCurrentEdmonton);
  if (key=='C' || key=='c') APICall(URLCurrentCalgary);
  if (key=='R' || key=='r') APICall(URLCurrentRedDeer);
  //
  // Loading Weather Icon based on which key was pressed
  iconBuildingURLKeyPressed();
  weatherIconImage = loadImage(weatherIconString);
  // Teacher Lessons
}
//
void mousePressed() {
  // City Call, see procedure using Boolean & Button
  // Students to apply key board short cuts
}
//
//End MAIN Program
