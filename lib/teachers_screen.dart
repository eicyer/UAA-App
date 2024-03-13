import 'package:flutter/material.dart';
import 'package:uaaapp/teacher.dart';

class TeachersScreen extends StatefulWidget {
  TeachersScreen({Key? key}) : super(key: key);

  final allTeachers = [
    Teacher('Serena Arapyan', 'MO305'),
    Teacher('Osman Yılmaz', 'MA305'),
    Teacher('Rodney Lutz', 'MO203'),
    Teacher('Neva Anaç', 'MA301'),
    Teacher('Emir İçyer', 'MA302'),
    Teacher('Neva İçyer', 'MA302'),
    Teacher('Lidya Işık', 'MA303'),
    Teacher('Emir Yılmaz', 'MM304'),
    Teacher('Neva Işık', 'MO302'),
    Teacher('Dr. Kimberly Byrd', 'BA003'),
    Teacher('Sunay Saraçoğlu', 'BO204'),
    Teacher('Ozan Şafak', 'EK23'),
  ];

  @override
  State<TeachersScreen> createState() {
    return _TeachersScreenState();
  }
}

class _TeachersScreenState extends State<TeachersScreen> {
  List<Teacher> teachers = [];
  @override
  void initState() {
    super.initState();
    // Access the allTeachers list from the widget property
    teachers = widget.allTeachers;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;

    return SizedBox(
      height: pixelRatio * 250,
      child: Card(
        color: const Color.fromARGB(255, 209, 227, 235),
        child: Column(
          children: <Widget>[
            SizedBox(height: pixelRatio * 5),
            Container(
              margin: const EdgeInsets.all(10),
              color: const Color.fromARGB(255, 209, 227, 235),
              child: TextField(
                controller: _controller,
                onSubmitted: searchTeacher,
                //onChanged: searchTeacher,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Öğretmen ismi:',
                  suffixIcon: IconButton(
                    onPressed: _controller.clear,
                    icon: const Icon(Icons.clear),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 14.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: teachers.length,
                itemBuilder: (context, index) {
                  final teacher = teachers[index];
                  return ListTile(
                    title: Text(teacher.name),
                    textColor: Colors.black,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void searchTeacher(String newInput) {
    if (newInput.isEmpty) {
      //reset the list to the original list
      setState(() => teachers = widget.allTeachers);
      return;
    }

    final finalList = teachers.where((teacher) {
      //int n = newInput.length;
      final teacherName = teacher.getName().toLowerCase();
      final input = newInput.toLowerCase();
      return teacherName.contains(input);
    }).toList();

    setState(() => teachers = finalList);
  }
}
