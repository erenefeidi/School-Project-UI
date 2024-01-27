import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SorularWidget extends StatefulWidget {
  final String question1;
  final String question2;
  final String? answer1;
  final String? answer2;
  final Function(String) onAnswer1Changed;
  final Function(String) onAnswer2Changed;

  const SorularWidget({
    Key? key,
    required this.question1,
    required this.question2,
    required this.answer1,
    required this.answer2,
    required this.onAnswer1Changed,
    required this.onAnswer2Changed,
  }) : super(key: key);

  @override
  _SorularWidgetState createState() => _SorularWidgetState();
}

class _SorularWidgetState extends State<SorularWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.0,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          // Soru 1
          ListTile(
            title: Text(widget.question1),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(
                  value: 'Evet',
                  groupValue: widget.answer1,
                  onChanged: (value) {
                    widget.onAnswer1Changed(value.toString());
                  },
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Evet',
                    style: GoogleFonts.ubuntu(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Radio(
                  value: 'Hayır',
                  groupValue: widget.answer1,
                  onChanged: (value) {
                    widget.onAnswer1Changed(value.toString());
                  },
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Hayır',
                    style: GoogleFonts.ubuntu(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),


          // Soru 2
          ListTile(
            title: Text(widget.question2),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(
                  value: 'Evet',
                  groupValue: widget.answer2,
                  onChanged: (value) {
                    widget.onAnswer2Changed(value.toString());
                  },
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Evet',
                    style: GoogleFonts.ubuntu(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Radio(
                  value: 'Hayır',
                  groupValue: widget.answer2,
                  onChanged: (value) {
                    widget.onAnswer2Changed(value.toString());
                  },
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Hayır',
                    style: GoogleFonts.ubuntu(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
