//Gloabal Variables
String URLCurrentBatman;//Batman
String URLForcastBatman;//Batman
String URLCurrentGuangzhou;//guangzhou
String URLForcastGuangzhou;//guangzhou
String URLCurrentWashington; //washington
String URLForcastWashington; //washington
//JSONObjects
JSONObject jsonCurrentBatman;//Batman
JSONObject jsonForcastBatman;//Batman
JSONObject jsonCurrentGuangzhou;//guangzhou
JSONObject jsonForcastGuangzhou;//guangzhou
JSONObject jsonCurrentWashington; //washington
JSONObject jsonForcastWashington; //washington
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
  String BatmanId = "id=321836";//Batman
  String guangzhouId = "id=1809858";//guangzhou
  String WashingtonId = "id=5815135";
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  //concatination of the URL
  URLCurrentBatman = baseURL_Current+BatmanId+and+apiKey+and+mode+and+unitMetric;//Batman
  URLForcastBatman = baseURL_Forcast+BatmanId+and+apiKey+and+mode+and+unitMetric;//Batman
  URLCurrentGuangzhou = baseURL_Current+guangzhouId+and+apiKey+and+mode+and+unitMetric;//guangzhou
  URLForcastGuangzhou = baseURL_Forcast+guangzhouId+and+apiKey+and+mode+and+unitMetric;//guangzhou
  URLCurrentWashington = baseURL_Current+WashingtonId+and+apiKey+and+mode+and+unitMetric;//Washington
  URLForcastWashington = baseURL_Forcast+WashingtonId+and+apiKey+and+mode+and+unitMetric;//Washington
  println(URLForcastWashington);
  println(URLCurrentWashington);
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
  jsonCurrentBatman = loadJSONObject(URLCurrentBatman);//Batman
  jsonForcastBatman = loadJSONObject(URLForcastBatman);//Batman
  jsonCurrentGuangzhou = loadJSONObject(URLCurrentGuangzhou);//guangzhou
  jsonForcastGuangzhou = loadJSONObject(URLForcastGuangzhou);//guangzhou
  jsonCurrentWashington = loadJSONObject(URLCurrentWashington);//Washington
  jsonForcastWashington = loadJSONObject(URLForcastWashington);//washington
}//end API call
//end BuildingURL subProgram
