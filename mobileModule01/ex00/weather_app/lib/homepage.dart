import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: const TabBarView(
          children: [
            Center(child: Text('Currently', style: TextStyle(fontSize: 24))),
            Center(child: Text('Today', style: TextStyle(fontSize: 24))),
            Center(child: Text('Weekly', style: TextStyle(fontSize: 24))),
          ],
        ),
        
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Tab(icon: Icon(Icons.wb_sunny), text: 'Currently'),
              Tab(icon: Icon(Icons.today), text: 'Today'),
              Tab(icon: Icon(Icons.calendar_view_week), text: 'Weekly'),
            ],
          ),
        ),
      ),
    );
  }
}