import 'package:flutter/material.dart';

import '../helpers/helpers.dart';

void showLoading(BuildContext context) {
  // TODO:
  // showDialog(
  //   context: context,
  //   barrierDismissible: false,
  //   child: SimpleDialog(
  //     children: <Widget>[
  //       Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           CircularProgressIndicator(),
  //           SizedBox(height: 10),
  //           Text(R.string.wait, textAlign: TextAlign.center),
  //         ],
  //       ),
  //     ],
  //   ),
  // );

  // try {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => SimpleDialog(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 10),
            Text(R.string.wait, textAlign: TextAlign.center),
          ],
        ),
      ],
    ),
  );
  // } catch (error) {
  //   print(error);
  // }
}

void hideLoading(BuildContext context) {
  if (Navigator.canPop(context)) {
    Navigator.of(context).pop();
  }
}
