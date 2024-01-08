import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../model/accommodation.dart';


class PlaceDetailsPage extends StatefulWidget {
  final Accommodation accommodation;

  const PlaceDetailsPage({super.key, required this.accommodation});

  @override
  State<StatefulWidget> createState() => _PlaceDetailsPageState();
}

class _PlaceDetailsPageState extends State<PlaceDetailsPage> {
  @override
  Widget build(BuildContext context) {
    Accommodation accommodation = widget.accommodation;
    double width = MediaQuery
        .of(context)
        .size
        .width / 100;
    double height = MediaQuery
        .of(context)
        .size
        .height / 100;

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            accommodation.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                accommodation.image,
                height: height * 30,
                width: width * 100,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20,),

            AutoSizeText(
              accommodation.info,
              style: const TextStyle(fontSize: 15, color: Colors.black87),
              maxLines: 10,
            ),

            const Padding(
              padding: EdgeInsets.only(top: 20,bottom: 20),
              child: AutoSizeText(
                "Konum",
                style: TextStyle(fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ),

            AutoSizeText(
              accommodation.location,
              style: const TextStyle(fontSize: 15, color: Colors.black87),
            )
          ],
        ),
      ),
    );
  }
}
