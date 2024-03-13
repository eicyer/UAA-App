import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: pixelRatio * 5),
        Card(
          color: const Color.fromARGB(255, 41, 91, 118),
          //Color.fromARGB(255, 113, 135, 145),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            /*side: BorderSide(
              color: Colors.white,
              width: pixelRatio * 1.0,
            ),*/
          ),
          child: Container(
            width: pixelRatio * 150,
            height: pixelRatio * 50,
            alignment: Alignment.center,
            padding:
                const EdgeInsets.all(8.0), // Optional: Add padding to the text
            child: const Text(
              'Bir sonraki dersiniz: \nAP CHEM MA304',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: pixelRatio * 5),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 106, 128, 138),
            ),
            //Color.fromARGB(255, 41, 91, 118)),
            minimumSize: MaterialStatePropertyAll(
              Size(pixelRatio * 1, pixelRatio * 15),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.map_outlined, size: pixelRatio * 10),
              //SizedBox(width: pixelRatio * 2),
              const Text(
                'Find on Map',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
