import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ImageDialog extends StatelessWidget {
  final String resourceUri;
  ImageDialog({
    Key key,
    @required this.resourceUri,
  })
      : super(key: key);

  static Future<dynamic> showSimulationImageDialog(
          BuildContext c, String pictureUri) =>
      showDialog(context: c, child: new ImageDialog(resourceUri: pictureUri));

  @override
  Widget build(BuildContext context) {
    final List<Widget> body = <Widget>[];

    body.add(new Image.asset(resourceUri));

    return new Dialog(
        child: new IntrinsicWidth(
            stepWidth: 56.0,
            child: new ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 280.0),
                child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: body))));
  }
}
