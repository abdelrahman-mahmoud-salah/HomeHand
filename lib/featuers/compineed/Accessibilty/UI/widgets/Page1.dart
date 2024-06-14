// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';

// class TextToSpeech extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// enum TtsState { playing, stopped }

// class _MyAppState extends State<TextToSpeech> {
//   late FlutterTts _flutterTts;

//   TtsState _ttsState = TtsState.stopped;
//   String ttl = "if you blind people say Yes if not say skip or NO";
//   @override
//   void initState() {
//     super.initState();
//     initTts();
//     Future.delayed(Duration(milliseconds: 500), () {
//       speak(); // Start listening for speech recognition
//     }); 
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _flutterTts.stop();
//   }

//   initTts() async {
//     _flutterTts = FlutterTts();
//     await _flutterTts.awaitSpeakCompletion(true);

//     _flutterTts.setStartHandler(() {
//       setState(() {
//         print("Playing");
//         _ttsState = TtsState.playing;
//       });
//     });

//     _flutterTts.setCompletionHandler(() {
//       setState(() {
//         print("Complete");
//         _ttsState = TtsState.stopped;
//       });
//     });

//     _flutterTts.setCancelHandler(() {
//       setState(() {
//         print("Cancel");
//         _ttsState = TtsState.stopped;
//       });
//     });

//     _flutterTts.setErrorHandler((message) {
//       setState(() {
//         print("Error: $message");
//         _ttsState = TtsState.stopped;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         alignment: Alignment.topCenter,
//         padding: const EdgeInsets.all(25.0),
//         child: AnimatedTextKit(
//           animatedTexts: [
//             TypewriterAnimatedText(
//               ttl,
//               textStyle: const TextStyle(
//                 fontSize: 32.0,
//                 fontWeight: FontWeight.bold,
//               ),
//               speed: const Duration(milliseconds: 100),
//             ),
//           ],
//           totalRepeatCount: 1,
//           pause: const Duration(milliseconds: 100),
//           displayFullTextOnTap: true,
//           stopPauseOnTap: true,
//         ));
//   }

//   Future speak() async {
//     await _flutterTts.setVolume(5);
//     await _flutterTts.setSpeechRate(.4);
//     await _flutterTts.setPitch(1);

//     await _flutterTts.speak(ttl);
//     await _flutterTts.stop();
//   }

//   Future stop() async {
//     var result = await _flutterTts.stop();
//     if (result == 1) {
//       setState(() {
//         _ttsState = TtsState.stopped;
//       });
//     }
//   }
// }
