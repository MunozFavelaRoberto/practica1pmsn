import 'package:flutter/material.dart';
import 'package:flutter_application_1/database/agendadb.dart';
import 'package:flutter_application_1/models/task_model.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  AgendaDB? agendaDB;

  @override
  void initState() {//inicializacion de variables.
    super.initState();
    agendaDB = AgendaDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Manager"),
        actions: [
          IconButton(
            onPressed: (){}, 
          icon: Icon(Icons.task)
          )
        ],
      ),
      body: FutureBuilder(//mostrar toda la lista de tareas desde la base de datos.
        future: agendaDB!.GETALLTASK(),
        builder: (BuildContext context, AsyncSnapshot<List<TaskModel>> snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.length,//numero de datos que generara la cantidad de items.
              itemBuilder: (BuildContext context, int index){
                return Text('hola');
              }
              );            
          }else{
            if(snapshot.hasError){
              return const Center(
                child: Text('Ya la regaste!'),
              );
            }else{
              return CircularProgressIndicator();//icono de que esta cargando.
            }
          }
        }
        ),
    );
  }
}