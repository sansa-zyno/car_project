import 'package:car_project/car_models.dart';
import 'package:car_project/service/car_service.dart';
import 'package:flutter/material.dart';

class CarMakes extends StatelessWidget {
  // This widget is the root of your application.

  List<String> carMakes = [
    'Acura',
    'Alfa Romeo',
    'Toyota',
    'Cadillac',
    'Nissan',
    'BMW',
    'Aston Martin',
    'Bentley',
    'Chevrolet',
    'Dodge',
    'Ferari',
    'Ford',
    'Honda',
    'Hyunda',
    'Isuzu',
    'Jaguar',
    'Jeep',
    'Kia',
    'Lamborghini',
    'Land Rover',
    'Lexus',
    'Maserati',
    'Mercedez Benz',
    'Porsche',
    'Susuki',
    'Tesla',
    'Volkswagen',
    'Volvo',
    'Mitsubishi',
    'MAZDA',
    'Hummer',
    'Peugeot'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Car Makes', style: TextStyle(color: Colors.orange)),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: Text((index + 1).toString()),
            title: Text(carMakes[index]),
            trailing: IconButton(
              icon: Icon(Icons.arrow_right),
              onPressed: () async {
                var res = await CarService().getCarDetails(carMakes[index]);
                print(res);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => CarModels(
                              res: res,
                            )));
              },
            ),
          );
        },
        itemCount: carMakes.length,
      ),
    );
  }
}
