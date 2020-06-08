import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:marvel_heroes/models/application.dart';

String urlApplication =
    'https://raw.githubusercontent.com/Lorenalgm/marvel-heroes/master/assets/application.json';

String urlMovies =
    'https://raw.githubusercontent.com/Lorenalgm/marvel-heroes/master/assets/movies/ant-man-and-the-wasp.jpg';

Future<Application> getData() async {
  var response = await http.get(urlApplication);
  var responseJson = jsonDecode(response.body);
  Application application = Application.fromJson(responseJson);
  return application;
}
