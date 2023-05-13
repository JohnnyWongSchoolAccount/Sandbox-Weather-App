//Libraries and Dependancies
//
//Global Variables
//
void setup() {
  size( 700, 400 );
  buildingURL();
  APIcall();
  unwrapToVariables();
  setupWeather();
  setupText();
}//end setup()
void draw() {
  drawWeather();
}//end draw()
void keyPressed() {
  //if () APIcall();
  //if () unwrapToVariables();
  //println(apiCurrentCall);
  keyPressedWeather();
}//end keyPressed()
void mousePressed() {
  mousePressedWeather();
  //APIcall();
  //unwrapToVariables();
  //println(apiCurrentCall);
  //city call procedure using boolean and button
}//end mousePressed()
//
//end mainProgram
