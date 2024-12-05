import 'package:api_integration/load_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: FutureBuilder(
        future: LoadData.getData(),
        builder: (context, snapshot) {
          final dm_2 = snapshot.data;
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: dm_2!.length,
                  itemBuilder: (context, index) {
                    final dm_3 = dm_2[index];
                    return Container(
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.all(8),
                      color: Colors.amber,
                      child: Column(
                        children: [
                          Text(dm_3.id.toString()),
                          Text(dm_3.name),
                          Text(dm_3.comments),
                          Text(dm_3.createAt.toString()),
                          Text(dm_3.updatedAt.toString()),
                          Text(dm_3.deleted.toString()),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
