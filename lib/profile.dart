import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  Container myContainer(String text, String ans, double pixelRatio) {
    return Container(
      height: pixelRatio * 15,
      width: pixelRatio * 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.5),
        borderRadius: BorderRadius.circular(pixelRatio * 5.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            ans,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    return SizedBox(
      height: pixelRatio * 200,
      width: pixelRatio * 150,
      child: Card(
        //color: const Color.fromARGB(255, 41, 91, 118),
        color: const Color.fromARGB(255, 209, 227, 235),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, //stretch??
          children: [
            Container(
              height: pixelRatio * 50,
              width: pixelRatio * 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              child: Icon(
                Icons.person,
                size: pixelRatio * 35,
                color: Colors.black,
              ),
            ),
            SizedBox(height: pixelRatio * 10),
            myContainer('Kullanıcı adı:', 'Neva Anaç', pixelRatio),
            SizedBox(height: pixelRatio * 10),
            myContainer('Sınıf:', '11A', pixelRatio),
            SizedBox(height: pixelRatio * 15),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 41, 91, 118)),
                //Color.fromARGB(255, 69, 84, 90)),
                //const Color.fromARGB(255, 41, 91, 118)),
                minimumSize: MaterialStatePropertyAll(
                  Size(pixelRatio * 0.1, pixelRatio * 10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.exit_to_app, size: pixelRatio * 10),
                  //SizedBox(width: pixelRatio * 2),
                  const Text(
                    'Log Out',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
