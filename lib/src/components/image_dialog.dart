import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ImageDialog extends StatelessWidget {
  final String resourceUri;
  ImageDialog({
    Key key,
    @required this.resourceUri,
  }) : super(key: key);

  static Future<dynamic> showImageDialog(BuildContext c, String pictureUri) =>
      showDialog(
        context: c,
        builder: (context) => ImageDialog(resourceUri: pictureUri),
      );

  @override
  Widget build(BuildContext context) {
    final body = <Widget>[];

    body.add(Image.asset(resourceUri));

    return Dialog(
      child: IntrinsicWidth(
        stepWidth: 56.0,
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 280.0),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: body),
        ),
      ),
    );
  }
}
