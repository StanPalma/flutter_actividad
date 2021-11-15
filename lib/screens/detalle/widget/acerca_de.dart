import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actividad/widgets/acerca_app_bar.dart';
import 'package:flutter_actividad/widgets/custom_app_bar.dart';

class AcercaDe extends StatelessWidget {
  const AcercaDe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AcercaAppBar(
            Icons.arrow_back_ios_outlined,
            leftCallback: () => Navigator.of(context).pop(),
          ),
          Hero(
            tag: 'acerca',
            child:
                Image.asset('assets/images/logo_restaurante.png', width: 150),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Alumno: Bladimir Stanley Palma Portillo\n\nCarnet: 25-0369-2017',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
