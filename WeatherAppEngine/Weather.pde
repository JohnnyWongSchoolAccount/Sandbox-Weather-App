//Global Variables
boolean weather = true;
boolean Washington = true;
boolean Guangzhou = false;
boolean Batman = false;
String textFeelsLikeWeather = "Feels Like: ", textWind = "Wind: ";
String textCelsius = " °C", textcomma = ",", textSpace = "  ", textPeriod = ".", textDegree = "°", textmpers = "m/s";
void setupWeather() {if (weather) {setupWeatherONOFF();} }//end setupWeather()
void drawWeather() { if (weather) {drawWeatherONOFF();} }//end drawWeather()
void keyPressedWeather() {
  if ( key == 'b' || key == 'B' ) { if (weather == false) {weather = true;} else {weather = false;} }
}//end keyPressedWeather()
void mousePressedWeather() {
  if (mousePressed) weatherChange();
}//end mousePressedWeather()
//
//population
//
void setupWeatherONOFF() {}//end setupWeatherONOFF()
void drawWeatherONOFF() {
  if (Batman) {
    weatherRect();
    drawText( height, purpInk, CENTER, CENTER, Font, nameBatman, locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);//location name
    drawText( height, purpInk, CENTER, CENTER, Font, currentAPICallTime, dateTimeWeatherX, dateTimeWeatherY, dateTimeWeatherWidth, dateTimeWeatherHeight);//Date and time
    drawText( height, purpInk, CENTER, CENTER, Font, textcomma+countryBatman, countryWeatherX, countryWeatherY, countryWeatherWidth, countryWeatherHeight);//country
    drawText( height, purpInk, CENTER, CENTER, Font, tempBatman+textCelsius, tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);//temperature
    imageBuildingURL(iconBatman);
    drawText( height, purpInk, CENTER, CENTER, Font, textFeelsLikeWeather+feelsLikeBatman+textCelsius, feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);//feels like
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+descriptionBatman+textSpace, weatherDescriptionX, weatherDescriptionY, weatherDescriptionWidth, weatherDescriptionHeight);//description
    drawText( height, purpInk, CENTER, CENTER, Font, textWind+windSpeedBatman+textmpers+windDegreeBatman+textDegree, weatherWindX, weatherWindY, weatherWindWidth, weatherWindHeight);//wind speed and direction
  }//end batman if
  if (Guangzhou) {
    weatherRect();
    drawText( height, purpInk, CENTER, CENTER, Font, nameGuangzhou, locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);//location name
    drawText( height, purpInk, CENTER, CENTER, Font, currentAPICallTime, dateTimeWeatherX, dateTimeWeatherY, dateTimeWeatherWidth, dateTimeWeatherHeight);//Date and time
    drawText( height, purpInk, CENTER, CENTER, Font, textcomma+countryGuangzhou, countryWeatherX, countryWeatherY, countryWeatherWidth, countryWeatherHeight);//country
    drawText( height, purpInk, CENTER, CENTER, Font, tempGuangzhou+textCelsius, tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);//temperature
    imageBuildingURL(iconGuangzhou);
    drawText( height, purpInk, CENTER, CENTER, Font, textFeelsLikeWeather+feelsLikeGuangzhou+textCelsius, feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);//feels like
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+descriptionGuangzhou+textSpace, weatherDescriptionX, weatherDescriptionY, weatherDescriptionWidth, weatherDescriptionHeight);//description
    drawText( height, purpInk, CENTER, CENTER, Font, textWind+windSpeedGuangzhou+textmpers+windDegreeGuangzhou+textDegree, weatherWindX, weatherWindY, weatherWindWidth, weatherWindHeight);//wind speed and direction
  }//end Guangzhou if
  if (Washington) {
    weatherRect();
    drawText( height, purpInk, CENTER, CENTER, Font, nameWashington, locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);//location name
    drawText( height, purpInk, CENTER, CENTER, Font, currentAPICallTime, dateTimeWeatherX, dateTimeWeatherY, dateTimeWeatherWidth, dateTimeWeatherHeight);//Date and time
    drawText( height, purpInk, CENTER, CENTER, Font, textcomma+countryWashington, countryWeatherX, countryWeatherY, countryWeatherWidth, countryWeatherHeight);//country
    drawText( height, purpInk, CENTER, CENTER, Font, tempWashington+textCelsius, tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);//temperature
    imageBuildingURL(iconWashington);
    drawText( height, purpInk, CENTER, CENTER, Font, textFeelsLikeWeather+feelsLikeWashington+textCelsius, feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);//feels like
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+descriptionWashington+textSpace, weatherDescriptionX, weatherDescriptionY, weatherDescriptionWidth, weatherDescriptionHeight);//description
    drawText( height, purpInk, CENTER, CENTER, Font, textWind+windSpeedWashington+textmpers+windDegreeWashington+textDegree, weatherWindX, weatherWindY, weatherWindWidth, weatherWindHeight);//wind speed and direction
  }//end Washington if
}//end drawWeatherONOFF()
void weatherChange() {
  if (Batman) {
    Batman = false;
    Guangzhou = true;
    Washington = false;
  } else if (Guangzhou) {
    Batman = false;
    Guangzhou = false;
    Washington = true;
  } else {
    Batman = true;
    Guangzhou = false;
    Washington = false;
  }
}//end weatherChange
void weatherRect() {
  weatherLocationRect();//location name
  weatherDateTimeRect();//Date and time
  weatherCountryRect();//country
  weatherTempRect();//temperature
  weatherImageRect();//weather image
  weatherFeelsLikeRect();//feels like
  weatherDescriptionRect();//description
  weatherWindRect();//wind speed and direction
}//end weatherRect()
//end weather subProgram
