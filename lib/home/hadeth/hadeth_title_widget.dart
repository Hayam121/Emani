import 'package:flutter/material.dart';

import '../../hadeth_details/hadeth_details.dart';
import 'hadeth.dart';

// ignore: must_be_immutable
class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(4),
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
