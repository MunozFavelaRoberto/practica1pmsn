import 'package:flutter/material.dart';

class ClassroomScreen extends StatelessWidget {
  ClassroomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classroom xd'),
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
            leading: Image.asset('assets/imgtareas.png'),
            trailing: Icon(Icons.chevron_right),
            title: Text('Tareas'),
            onTap: () => Navigator.pushNamed(context, '/task'),
          ),
          ListTile(
            leading: Icon(Icons.task_alt_outlined),
            trailing: Icon(Icons.chevron_right),
            title: Text('Profesor'),
            onTap: () => Navigator.pushNamed(context, '/task'),
          ),
        ],
      ),
    );
  }
}