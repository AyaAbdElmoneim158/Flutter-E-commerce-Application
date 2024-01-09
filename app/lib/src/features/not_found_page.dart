import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/warning.png',
              height: 200,
            ),
            const SizedBox(height: 16),
            Text(
              "This page is not found!",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontFamily: 'metropolis',
                    color: Colors.black54,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
