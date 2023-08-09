import 'package:flutter/material.dart';
import 'package:flutter_application/screens/QRCodeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  QRCodeScreen(){}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pokemon-go-wallpaper.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  "ANDRÉ VIEIRA ROCHA JUNIOR",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 550),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => QRCodeScreen(),
                        ),
                        ); // Adicione a ação do botão aqui
                  },
                  child: Text("Scannear QRCODE"),
                ),
                SizedBox(height: 70), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
