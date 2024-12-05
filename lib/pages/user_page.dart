import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String userName;
  //final int userAge;
  const UserPage({
    super.key,
    required this.userName,
    //required this.userAge,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "User page",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "User name: $userName  and User age: ",
              // $userAge

              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
