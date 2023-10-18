import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/test_provider.dart';
import 'package:provider/provider.dart';

class ProvaiderScreen extends StatelessWidget {
  const ProvaiderScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final userProvider = 
    Provider.of<TestProvider>(context);

    return Scaffold(
      body: Center(
        child: Text(userProvider.user)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userProvider.user = 'Robertin MF :)';
        },
      ),
    );
  }
}