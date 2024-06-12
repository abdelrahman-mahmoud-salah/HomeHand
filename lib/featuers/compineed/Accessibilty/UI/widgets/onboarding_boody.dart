import 'package:flutter/material.dart';
import '../../../../../core/theming/styels.dart';

import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class OnboardingBoody extends StatefulWidget {
  const OnboardingBoody({super.key});

  @override
  State<OnboardingBoody> createState() => _OnboardingBoodyState();
}

class _OnboardingBoodyState extends State<OnboardingBoody> {
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';
  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  /// This has to happen only once per app
  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
    Future.delayed(Duration(seconds: 6), () {
      print("_startListening");
      _startListening(); // Start listening for speech recognition
    });
    // Start listening for speech recognition immediately
  }

  /// Each time to start a speech recognition session
  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }
  // ... rest of your code remains unchanged

  /// Manually stop the active speech recognition session
  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  /// This is the callback that the SpeechToText plugin calls when
  /// the platform returns recognized words.
  ///
  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
      if (_lastWords == 'yes' || _lastWords == 'يس') {
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset("assets/images/Accessibility.png"),
      Center(
        child: Text(
          "Accessibility Assistance",
          style: TextStyles.font24BlueBold,
        ),
      )
    ]);
  }
}
