import 'package:flutter/material.dart';

class ColorsRounded extends StatefulWidget {
  const ColorsRounded({super.key});

  @override
  State<ColorsRounded> createState() => _ColorsRoundedState();
}

class _ColorsRoundedState extends State<ColorsRounded> {
  int selectedColorIndex = 0; // Índice del color seleccionado

  List<Color> colors = [
    Color.fromRGBO(179, 154, 119, 0.8),
    Color.fromRGBO(210, 208, 206, 0.8),
    Color.fromRGBO(255, 11, 214, 0.8),
    Color.fromRGBO(63, 127, 186, 0.8),
    Color.fromRGBO(19, 19, 19, 0.8),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                colors.length,
                (index) => Padding(
                  padding: EdgeInsets.all(0.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedColorIndex = index;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: colors[index],
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(1),
                    ),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: selectedColorIndex == index
                          ? BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.red, // Color del borde seleccionado
                                width: 4.0,
                              ),
                            )
                          : null,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
  }
}