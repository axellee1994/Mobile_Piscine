import 'package:flutter/material.dart';
import 'weatherview.dart';
import 'geolocation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _locationDisplay = "";
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      // Redraws the UI when the tab index changes to sync Top and Bottom bars
      if (!_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchSubmitted(String value) {
    setState(() {
      _locationDisplay = value;
    });
  }

  void _onGeolocationPressed() {
    setState(() {
      _locationDisplay = GeoLocation.GeoLocationRequest();
      _searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _searchController,
                onSubmitted: _onSearchSubmitted,
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.my_location),
              onPressed: _onGeolocationPressed,
            ),
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: [
          WeatherView(tabName: 'Currently', location: _locationDisplay),
          WeatherView(tabName: 'Today', location: _locationDisplay),
          WeatherView(tabName: 'Weekly', location: _locationDisplay),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          controller: _tabController,
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
    );
  }
}
