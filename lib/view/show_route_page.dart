import 'package:edirne_gezgini_ui/model/route_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:edirne_gezgini_ui/model/question_to_user.dart';

class ShowRoutePage extends StatefulWidget {
  @override
  _ShowRoutePageState createState() => _ShowRoutePageState();
}

class _ShowRoutePageState extends State<ShowRoutePage> {
  String? answer1;
  String? answer2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0.0,
          title: const Text(
            "Rota Göster",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20), // İstediğiniz boşluğu ayarlayabilirsiniz
              child: Text(
                'Size en uygun rotayı vermemiz için lütfen soruları cevaplayın.',
                textAlign: TextAlign.center,
                style: GoogleFonts.ubuntu(
                  fontWeight :FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
            ),
            SizedBox(height: 10),

            SorularWidget(
              question1: 'Edirne\'de konaklayacak mısınız?',
              question2: 'Kültürel yerleri gezmeyi seviyor musunuz?',
              answer1: answer1,
              answer2: answer2,
              onAnswer1Changed: (value) {
                setState(() {
                  answer1 = value;
                });
              },
              onAnswer2Changed: (value) {
                setState(() {
                  answer2 = value;
                });
              },
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoutePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5.0,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                'Rota Göster',
                style: GoogleFonts.ubuntu(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
