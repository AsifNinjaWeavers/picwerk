import 'package:flutter/material.dart';
import 'package:picwerk/constant/all_text.dart';
import 'package:picwerk/utility/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.backgroundcolor,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xff1C5ABFF),
        onPressed: () {},
        label: Row(
          children: [
            const Icon(
              Icons.add,
              size: 14,
              color: Color(0xff25222D),
            ),
            Text(
              AllText.createjobpost,
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
    );
  }
}
