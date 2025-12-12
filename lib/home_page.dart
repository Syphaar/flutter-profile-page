import 'package:flutter/material.dart';
import 'first_column.dart';
import 'second_column.dart';
import 'third_column.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int selectedIndex = 1;

  late List<Widget> mobileColumns = [
    FirstColumn(showHamburger: true, scaffoldKey: _scaffoldKey),
    SecondColumn(scaffoldKey: _scaffoldKey),
    ThirdColumn(scaffoldKey: _scaffoldKey,),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFF151B29)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Navigation',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            ListTile(title: Text('Home'),
            onTap: () {
              _onItemTapped(1);
              Navigator.of(context).pop();
            },
            ),
            ListTile(title: Text('Set Your Profile'),
              onTap: () {
                _onItemTapped(0);
                Navigator.of(context).pop();
              },
            ),
            ListTile(title: Text('Profile Tips'),
              onTap: () {
                _onItemTapped(2);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        double width = constraints.maxWidth;

        List<Widget> columns = [];

        // NEW RULE: Column 2 (SecondColumn) is FIRST on screens < 795
        if (width < 795) {
          columns = [
            mobileColumns[selectedIndex],
          ];
        }

        // >= 1200
        else if (width >= 1200) {
          columns = [
            FirstColumn(showHamburger: false, scaffoldKey: _scaffoldKey),
            SecondColumn(),
            const ThirdColumn(),
          ];
        }
        // 750 - 1199
        else if (width >= 750 && width < 1200) {
          columns = [
            FirstColumn(showHamburger: true, scaffoldKey: _scaffoldKey),
            SecondColumn(),
          ];
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: columns.map((col) => Expanded(child: col)).toList(),
        );
      }),
    );
  }
}
