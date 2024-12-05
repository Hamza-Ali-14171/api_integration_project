import 'dart:convert';

import 'package:api_integration/model.dart';
import "package:http/http.dart" as http;
import 'package:convert/convert.dart';

// class LoadData {
//   static Future <List<DataModel>> getData()async{
//     String url='https://softcodix.pythonanywhere.com/api/serviceprovider/';
//     var uri=Uri.parse(url);
//     var response= await http.get(uri);
//     List<dynamic> data=[];
//     if(response.statusCode==200){

//       data=jsonDecode(response.body);
//     }
//     else {
//       throw Exception("failed to load data");
//     }
//     return data.map((e)=>DataModel.fromjson(e)).toList();

//   }
// }

class LoadData {
  static Future<List<DataModel>> getData() async {
    String url = 'https://softcodix.pythonanywhere.com/api/serviceprovider/';
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    List<dynamic> data = [];
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
    } else {
      throw Exception("failed to load data");
    }
    return data.map((e) => DataModel.fromjson(e)).toList();
  }
}
