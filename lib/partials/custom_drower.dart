import 'package:flutter/material.dart';

class CustomDrower extends StatelessWidget {
  const CustomDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('user name'),
              accountEmail: Text('user@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('sz'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha conta"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Meus pedidos"),
              onTap: () {
                  print('compras');
              },
            ),
            ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favoritos"),
                onTap: () {
                  print('favoritos');
                })
          ],
        ),
      );
  }
}
