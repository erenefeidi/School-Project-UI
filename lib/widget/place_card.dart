import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String title;
  final String image;

  const PlaceCard({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width/100;
    double height = MediaQuery.of(context).size.height/100;
    return SizedBox(
      width: width*50,
      height: height*60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              height: height*45,
              width: width*100,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(84, 84, 84, 1)),
            overflow: TextOverflow.visible,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}