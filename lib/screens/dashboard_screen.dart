//import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/global_values.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenidos :)"),
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
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
            accountName: Text('Robertin Munoz Favela'), 
            accountEmail: Text('18030061@itcelaya.edu.mx')
          ),
          ListTile(
            //leading: Image.network('https://cdn3.iconfinder.com/data/icons/street-food-and-food-trucker-1/64/fruit-organic-plant-orange-vitamin-512.png'),
            leading: Image.asset('assets/naranja.png'), //cambia la imagen a una mas pequeña xd
            trailing: Icon(Icons.chevron_right),
            title: Text('FruitApp'),
            subtitle: Text('Carrusel'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.task_alt_outlined),
            trailing: Icon(Icons.chevron_right),
            title: Text("Task Manager"),
            onTap: () => Navigator.pushNamed(context, '/task'),
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