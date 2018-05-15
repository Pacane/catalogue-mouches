import 'package:flutter/material.dart';
import 'package:catalogue_mouches/domain.dart';
import 'fly_overview.dart';
import 'parts_list.dart';
import 'build_steps_list.dart';

class FlyPage extends StatefulWidget {
  final Fly fly;

  FlyPage(this.fly);

  String get photoUri => fly.photo.resourceUri;

  final List<IconData> icons = <IconData>[
    Icons.info,
    Icons.shopping_cart,
    Icons.build,
  ];

  final Map<IconData, String> labels = <IconData, String>{
    Icons.info: 'Informations',
    Icons.shopping_cart: 'Matériel',
    Icons.build: 'Montage',
  };

  @override
  FlyPageState createState() => new FlyPageState(fly);
}

class FlyPageState extends State<FlyPage> with TickerProviderStateMixin {
  final Fly fly;

  TabController tabController;

  FlyPageState(this.fly);

  @override
  void initState() {
    super.initState();

    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var tabs = <Widget>[
      Tab(
        key: ObjectKey(Icons.info),
        icon: Icon(Icons.info),
        text: 'INFORMATIONS',
      ),
      Tab(
        key: ObjectKey(Icons.shopping_cart),
        icon: Icon(Icons.shopping_cart),
        text: 'MATÉRIEL',
      ),
      Tab(
        key: ObjectKey(Icons.build),
        icon: Icon(Icons.build),
        text: 'MONTAGE',
      ),
    ];
    var tabBarView = TabBarView(
      children: [
        FlyOverview(fly),
        PartsList(fly.parts),
        BuildStepsList(fly.steps),
      ],
      controller: tabController,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(fly.name),
        bottom: TabBar(
          tabs: tabs,
          controller: tabController,
        ),
      ),
      body: tabBarView,
    );
  }
}
