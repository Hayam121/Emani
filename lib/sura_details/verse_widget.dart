import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VerseWidget extends StatelessWidget {
  String content;
  int index;

  VerseWidget(this.content, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
      alignment: Alignment.center,
      child: Text(
        '$content ${{index}}',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
