import 'package:flutter/material.dart';

class OLDMainScreen extends StatelessWidget {
  const OLDMainScreen({Key? key}) : super(key: key);

  ElevatedButton myButton(
      //alttaki 3 butonun iskeleti
      String text,
      Icon icon,
      Function onPressed,
      double pixelRatio) {
    return ElevatedButton(
      //Harita
      onPressed: () => onPressed(),
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(
          Color.fromARGB(126, 33, 149, 243),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10.0), // Adjust the radius as needed
          ),
        ),
      ),
      child: SizedBox(
        height: pixelRatio * 20,
        width: pixelRatio * 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [icon, Text(text)],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(height: pixelRatio * 3), //vertical spacing
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(82, 131, 129, 129),
                spreadRadius: pixelRatio * 0.5,
                blurRadius: pixelRatio * 30,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Card(
            color: const Color.fromARGB(126, 33, 149, 243),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                color: Colors.white,
                width: pixelRatio * 1.0,
              ),
            ),
            child: Container(
              width: pixelRatio * 150,
              height: pixelRatio * 50,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(
                  8.0), // Optional: Add padding to the text
              child: const Text(
                'Bir sonraki dersiniz: \nAP CHEM MA304',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),

        appsRow(pixelRatio),
        SizedBox(height: pixelRatio * 3),
      ],
    );
  }

  Row appsRow(pixelRatio) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        myButton('Harita', const Icon(Icons.map_outlined), () {}, pixelRatio),
        myButton('Ders \nProgramı', const Icon(Icons.calendar_month), () {},
            pixelRatio),
        myButton(
            'Öğretmenine \nUlaş', const Icon(Icons.person), () {}, pixelRatio),
      ],
    );
  }
}
