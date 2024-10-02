import 'package:flutter/material.dart';
import 'dummy_menu (1).dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({Key? key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halo k!"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: foodMenuList.length,
          itemBuilder: (context, index) {
            final foodMenu = foodMenuList[index];
            return Card(
              margin: const EdgeInsets.all(10.0),
              elevation: 5,
              child: ListTile(
                //Image.network(foodMenu.imageUrls[0]),
                leading: Image.asset(
                  foodMenu.imageAsset,
                  width: 20,
                  height: 20,
                ),
                title: Text(foodMenu.name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(foodMenu.category),
                    Text(foodMenu.description),
                    Text(foodMenu.ingredients),
                    Text(foodMenu.cookingTime),
                  ],
                ),
                trailing: Text(foodMenu.price),
              ),
            );
          }),
    );
  }
}
