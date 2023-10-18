import 'package:flutter/material.dart';
import '../models/popular_model.dart';

Widget itemMovieWidget(PopularModel movie, context){
  return GestureDetector(
    onTap: ()=>Navigator.pushNamed(
      context, '/detail',
      arguments: movie
      ),
    child: FadeInImage(
      fit: BoxFit.fill,//hace que se estire la imagen de la lista de pelis.
      fadeInDuration: const Duration(milliseconds: 500),
      placeholder: const AssetImage('assets/loading2.gif'), 
      image: NetworkImage('https://image.tmdb.org/t/p/w500/${movie.posterPath}')
    ),
  );
}