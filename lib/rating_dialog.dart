import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

class RatingDialogs extends StatefulWidget {
  const RatingDialogs({Key? key}) : super(key: key);

  @override
  State<RatingDialogs> createState() => _RatingDialogsState();
}

class _RatingDialogsState extends State<RatingDialogs> {
  final _dialog = RatingDialog(
      initialRating: 1.0,
      // your app's name?
      title: Text(
        'Rating Dialog',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      // encourage your user to leave a high rating?
      message: Text(
        'Tap a star to set your rating. Add more description here if you want.',
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 15),
      ),
      // your app's logo?
      image: const FlutterLogo(size: 100),
      submitButtonText: 'Submit',
      commentHint: 'Set your custom comment hint',
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        print('rating: ${response.rating}, comment: ${response.comment}');

      },
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FloatingActionButton(onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return _dialog;
            });
      }),
    );
  }
}
