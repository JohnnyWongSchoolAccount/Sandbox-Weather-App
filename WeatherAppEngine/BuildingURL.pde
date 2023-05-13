//Gloabal Variables
String URLCurrentAlberta;//alberta
String URLForcastAlberta;//alberta
//JSONObjects
JSONObject jsonCurrentAlberta;//alberta
JSONObject jsonForcastAlberta;//alberta
void buildingURL() {
  String domain = "http://api.openweathermap.org";//http is non secure https is secure
  String baseURL_data = "/data/2.5/";//opens openweathermap folders
  String folderWeather = "weather?";//opens weathermap folder weather
  String folderForecast = "forecast?";//opens weathermap folder forecast
  //
  String baseURL_Current = domain + baseURL_data + folderWeather;
  String baseURL_Forcast = domain + baseURL_data + folderForecast;
  //
  String apiKey = "APPID=";//delete when public
  String albertaId = "id=5883102";
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  //concatination of the URL
  URLCurrentAlberta = baseURL_Current+albertaId+and+apiKey+and+mode+and+unitMetric;
  URLForcastAlberta = baseURL_Forcast+albertaId+and+apiKey+and+mode+and+unitMetric;
  println(URLForcastAlberta);
  println(URLCurrentAlberta);
}//end buildingURL
void imageBuildingURL(String icon) {
  String baseURL = "https://openweathermap.org";
  String forwardSlash = "/";
  String imgFolder = "img";
  String weatherIconFolder = "wn";
  String atSymbol = "@";
  String size = "2x";
  String fileExtension = ".png";
  //
  String imageURL = baseURL+forwardSlash+imgFolder+forwardSlash+weatherIconFolder+forwardSlash+icon+atSymbol+size+fileExtension;
  PImage weatherImage = loadImage (imageURL);
  image(weatherImage, WeatherX, WeatherY, WeatherWidth, WeatherHeight);
} //end image URL Building
void APIcall() {
  jsonCurrentAlberta = loadJSONObject(URLCurrentAlberta);
  jsonForcastAlberta = loadJSONObject(URLForcastAlberta);
}//end API call
//end BuildingURL subProgram
