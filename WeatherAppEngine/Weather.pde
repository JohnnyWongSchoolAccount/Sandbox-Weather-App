//Global Variables
boolean weather = true;
void setupWeather() {if (weather) {setupWeatherONOFF();} }//end setupWeather()
void drawWeather() { if (weather) {drawWeatherONOFF();} }//end drawWeather()
void keyPressedWeather() {
  if ( key == 'b' || key == 'B' ) { if (weather == false) {weather = true;} else {weather = false;} }
}//end keyPressedWeather()
void mousePressedWeather() {}//end mousePressedWeather()
//
//population
//
void setupWeatherONOFF() {}//end setupWeatherONOFF()
void drawWeatherONOFF() {
  population();
  rect(locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);
  drawText( height, purpInk, CENTER, CENTER, Font, nameAlberta, locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);//location name
  rect(tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);
  rect(WeatherX, WeatherY, WeatherWidth, WeatherHeight);
  imageBuildingURL(iconAlberta);
  rect(feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);
}//end drawWeatherONOFF()
//end weather subProgram
