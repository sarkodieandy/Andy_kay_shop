import 'package:flutter/material.dart';

import '../../../constants.dart';

// class SplashContent extends StatefulWidget {
//   const SplashContent({
//     super.key,
//     this.text,
//     this.image,
//   });
//   final String? text, image;

//   @override
//   State<SplashContent> createState() => _SplashContentState();
// }

// class _SplashContentState extends State<SplashContent> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         const Spacer(),
//         const Text(
//           "Gaf SHOP",
//           style: TextStyle(
//             fontSize: 32,
//             color: kPrimaryColor,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         Text(
//           widget.text!,
//           textAlign: TextAlign.center,
//         ),
//         const Spacer(flex: 2),
//         Image.asset(
//           widget.image!,
//           height: 265,
//           width: 235,
//         ),
//       ],
//     );
//   }
// }

class SplashContent extends StatelessWidget {
  final ImageProvider image;
  final String text;

  const SplashContent({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "GAF MARKET",
            style: TextStyle(
              fontSize: 32,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image(
            image: image,
            width:
                screenWidth * 0.8, // Set the width to 80% of the screen width
            height: screenHeight *
                0.56, // Set the height to 60% of the screen height
            // fit: BoxFit.contain,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              color: kTextColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
