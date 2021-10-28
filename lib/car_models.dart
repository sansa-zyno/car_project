import 'package:flutter/material.dart';

class CarModels extends StatelessWidget {
  final res;
  const CarModels({this.res});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Car Details', style: TextStyle(color: Colors.orange)),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8, top: 8, bottom: 15),
              child: ListTile(
                leading: Text((index + 1).toString()),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Year:'),
                        SizedBox(
                          width: 8,
                        ),
                        Text(res[index]['Year'].toString()),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Make:'),
                        SizedBox(
                          width: 8,
                        ),
                        Text(res[index]['Make'].toString()),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Model:'),
                        SizedBox(
                          width: 8,
                        ),
                        Text(res[index]['Model'].toString()),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: res.length,
        ),
      ),
    );
  }
}
