import 'package:flutter/material.dart';
import 'package:flutter_application_1/network/api_popular.dart';
import '../models/popular_model.dart';
import '../widgets/item_movie_widget.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {

  ApiPopular? apiPopular;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiPopular = ApiPopular();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Popular Movies'),),
      body: FutureBuilder(
        future: apiPopular!.getAllPopular(),
      builder: (context, AsyncSnapshot<List<PopularModel>?> snapshot) {
          if( snapshot.hasData){
            return GridView.builder(
              padding: const EdgeInsets.all(10),//deja el espaciado entre la imagen y los bordes de la pantalla de la tabla de pelis.
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .9,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return itemMovieWidget(snapshot.data![index],context);
              },
            );
          }else{
            if( snapshot.hasError){
              return Center(child: Text('Algo salió mal :()'));
            }else{
              return CircularProgressIndicator();
            }
          }
        },
      ),
    );
  }
}