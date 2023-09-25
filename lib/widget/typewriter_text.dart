import 'dart:async';
import 'package:flutter/material.dart';

class TypingTextAnimation extends StatefulWidget {
  final String text;
  final TextStyle textStyle;
  final Duration duration;

  const TypingTextAnimation({
    super.key,
    required this.text,
    required this.duration,
    required this.textStyle,
  });

  @override
  State<TypingTextAnimation> createState() => _TypingTextAnimationState();
}

class _TypingTextAnimationState extends State<TypingTextAnimation> {
  late String _animatedText;
  late Timer _timer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _animatedText = "";
    _timer = Timer.periodic(
      widget.duration,
      _animateText,
    );
  }

  void _animateText(Timer timer) {
    if (_currentIndex >= widget.text.length) {
      timer.cancel();
    } else {
      setState(() {
        _animatedText += widget.text[_currentIndex];
        _currentIndex++;
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _animatedText,
      textAlign: TextAlign.center,
      style: widget.textStyle,
    );
  }
}
