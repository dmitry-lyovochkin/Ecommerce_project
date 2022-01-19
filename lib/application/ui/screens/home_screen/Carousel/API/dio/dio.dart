import 'package:dio/dio.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/api_list.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/http/Models/get_list.dart';
import 'package:flutter/material.dart';

class DioClient {
  final Dio _dio = Dio();

  final _baseUrl = 'https://shopapi-0575.restdb.io/rest/home';

// final response = await http.get(
//         Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
//         headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

  Future<GetApi?> getUser() async {
    GetApi? home;
    try {
      Response userData = await _dio.get(
        'https://shopapi-0575.restdb.io/rest/home',
        options: Options(headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'}));
      // print('User Info: ${userData.data}');
      home = GetApi.fromJson(userData.data);
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return home;
  }
}

// void main() {
//   runApp(
//     MaterialApp( home:  HomePage() ));
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DioClient _client = DioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder<GetApi?>(
            future: _client.getUser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                GetApi? userInfo = snapshot.data;
                if (userInfo != null) {
                  HomeStore userData = userInfo.id as HomeStore;
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 8.0,
                        child: Image.network(userData.picture),
                        // Text(
                        //   '${userInfo.data.firstName} ${userInfo.data.lastName}',
                        //   style: TextStyle(fontSize: 16.0),
                        // ),
                        // Text(
                        //   userData.email,
                        //   style: TextStyle(fontSize: 16.0),
                        // ),
                      )
                    ],
                  );
                }
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}






// Future<List<Reposnsestore>> getHomestore() async {
//     final response = await http.get(
//         Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
//         headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

//     if (response.statusCode == 200) {
//       final List<String> HomestoreJson = json.decode(response.body);
//       return HomestoreJson.map((json) => Reposnsestore.fromJson(json)).toList();
//     } else {
//       throw Exception('Error fetching Homestore');
//     }
//   }