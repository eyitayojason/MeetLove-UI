import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meetlove/ui/meetlovemain.dart';

main() {
  runApp(
    const ProviderScope(
      child: MeetLove(),
    ),
  );
}

class MeetLove extends StatelessWidget {
  const MeetLove({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MeetLoveMainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
