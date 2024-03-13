import 'package:flutter/material.dart';

class Lessons extends StatefulWidget {
  const Lessons({Key? key}) : super(key: key);

  @override
  State<Lessons> createState() {
    return _LessonsState();
  }
}

class _LessonsState extends State<Lessons> {
  @override
  void initState() {
    super.initState();
    //_currentScreen = const MainScreen(changeScreen);
  }

  @override
  Widget build(BuildContext context) {
    //double pixelRatio = MediaQuery.of(context).devicePixelRatio;

    return SizedBox(
      //height: double.infinity,
      child: SingleChildScrollView(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder.all(color: Colors.white),
          children: const [
            TableRow(
              children: [
                TableCell(child: Text('javatpoint')),
                TableCell(
                  child: Text('Flutter'),
                ),
                TableCell(child: Text('Android')),
                TableCell(child: Text('MySQL')),
              ],
            ),
            TableRow(children: [
              TableCell(child: Text('javatpoint')),
              TableCell(
                child: Text('Flutter'),
              ),
              TableCell(child: Text('Android')),
              TableCell(child: Text('MySQL')),
            ]),
          ],
        ),
      ),
    );
  }

  List<String> mondayLessons = [
    //String listesi yerine Ders objesi listesi olsun (isim+sınıf)
    'TurkEd BO205',
    'TurkEd BO205',
    'AP Calc MA303',
    'Geom MA203',
    'Adv Chem MO103',
    'APCMec MA401',
    'Lunch',
    'English BA104',
    'English BA104'
  ];
  TableCell myTableCell(String text) {
    return TableCell(
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

  /* TableRow generateRow(List<String> todaysLessons){
    return TableRow(
      children: tableCellList(),
    );
  }

  List<TableCell> tableCellList(List<String> todaysLessons){
    List<TableCell> allCells=[];

     for (int i=0; i<todaysLessons.length; i++){
        allCells.add.(myTableCell(todaysLessons.elementAt(i),),);
      };

      return allCells;
  } */
}
