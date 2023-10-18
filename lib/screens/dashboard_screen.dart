import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';

import '../assets/global_values.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenidos :)'),
      ),
      drawer: createDrawer(context),
    );
  }

  Widget createDrawer(context){
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: 
              NetworkImage('https://i.pravatar.cc/300'),
            ),
            accountName: Text('Roberto Munoz Favela'), 
            accountEmail: Text('18030061@itcelaya.edu.mx')
          ),
          ListTile(
            //leading: Image.network('https://cdn3.iconfinder.com/data/icons/street-food-and-food-trucker-1/64/fruit-organic-plant-orange-vitamin-64.png'),
            leading: Image.asset('assets/naranja.png'),
            trailing: Icon(Icons.chevron_right),
            title: Text('FruitApp'),
            subtitle: Text('Carrusel'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.task_alt_outlined),
            trailing: Icon(Icons.chevron_right),
            title: Text('Task Manager'),
            onTap: () => Navigator.pushNamed(context, '/task'),
          ),
          ListTile(
            leading: 
            Hero(
              tag: "productImage", // Etiqueta única para esta imagen
              child: Icon(Icons.bookmark_added),
            ),
            trailing: Icon(Icons.chevron_right),
            title: Text('Practica 2'),
            onTap: () => Navigator.pushNamed(context, '/userinterface1'),
          ),
          ListTile(
            leading: Icon(Icons.task_alt_outlined),
            trailing: Icon(Icons.chevron_right),
            title: Text('Popular Movies'),
            onTap: () => Navigator.pushNamed(context, '/popular'),
          ),
          ListTile(
            leading: Image.asset('assets/imgclassroom.png'),
            trailing: Icon(Icons.chevron_right),
            title: Text('Practica 4'),
            subtitle: Text('Tareas'),
            onTap: () => Navigator.pushNamed(context, '/classroom'),
          ),
          ListTile(
            leading: Icon(Icons.task_alt_outlined),
            trailing: Icon(Icons.chevron_right),
            title: Text('Test Provider'),
            onTap: () => Navigator.pushNamed(context, '/prov'),
          ),
          DayNightSwitcher(
            isDarkModeEnabled: GlobalValues.flagTheme.value,
            onStateChanged: (isDarkModeEnabled) {
                GlobalValues.flagTheme.value = isDarkModeEnabled;
            },
          ),
        ],
      ),
    );
  }
}