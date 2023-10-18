import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/user_profile.dart';

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super (key:key);

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfile(),
      

    );
  }
}