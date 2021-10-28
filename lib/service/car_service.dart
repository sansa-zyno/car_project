import 'dart:convert';

import 'package:http/http.dart' as http;

class CarService {
  getCarDetails(String carMake) async {
    var res = await http.get(
        Uri.parse(
            'https://parseapi.back4app.com/classes/Car_Model_List_${carMake}?limit=10'),
        headers: {
          'X-Parse-Application-Id': 'hlhoNKjOvEhqzcVAJ1lxjicJLZNVv36GdbboZj3Z',
          'X-Parse-Master-Key': 'SNMJJF0CZZhTPhLDIqGhTlUNV9r60M2Z5spyWfXW'
        });
    var jsonRes = jsonDecode(res.body)['results'];
    return jsonRes;
  }
}
