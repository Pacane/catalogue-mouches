import 'package:flutter/material.dart';
import 'package:mouches/fly.dart';
import 'package:slugify/slugify.dart';
import 'dart:async';

const Duration kHeroTransitionDuration = const Duration(milliseconds: 600);

class HeroTransitionRoute extends MaterialPageRoute<Null> {
  HeroTransitionRoute(
      {WidgetBuilder builder, RouteSettings settings: const RouteSettings()})
      : super(builder: builder, settings: settings);

  // Cause the hero image to animate in under the toolbar
  @override
  void insertHeroOverlayEntry(
      OverlayEntry entry, Object tag, OverlayState state) {
    state.insert(entry, above: overlayEntries.first);
  }

  @override
  Duration get transitionDuration => kHeroTransitionDuration;

  // Don't shift the page up as we transition to it
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> forwardAnimation, Widget child) {
    return new FadeTransition(opacity: animation, child: child);
  }
}

class FlyGridPhoto extends StatelessWidget {
  final Fly fly;
  final Slugify _slugifier = new Slugify();

  FlyGridPhoto(this.fly);

  String get photoUri => fly.photo.resourceUri;
  String get flySlug => _slugifier.slugify(fly.name);

  Future<Null> _onTap(BuildContext context, Key key) async {
    await Navigator.pushNamed(context, '/fly');
  }

  @override
  Widget build(BuildContext context) {
    return new ListItem(
        onTap: () => _onTap(context, new Key('mouche')),
        title: new Hero(
            tag: photoUri,
            child: new Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: new ClipRect(
                    child: new Image.asset(photoUri, fit: ImageFit.fill)))));
  }
}
