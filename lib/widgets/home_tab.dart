import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import '../widgets/global_summary.dart';
import '../widgets/country_summary.dart';

class TabHome extends StatefulWidget {
  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildTabs(),
          _currentIndex == 0 ? _global() : _countrySpecific(),
          
        ],
      ),
    );
  }

  SliverToBoxAdapter _global() {
    return SliverToBoxAdapter(
      child: GlobalSummaryWidget(),
    );
  }

  SliverToBoxAdapter _countrySpecific() {
    return SliverToBoxAdapter(
      child:CountrySummary()
    );
  }

  SliverToBoxAdapter _buildTabs() {
    return SliverToBoxAdapter(
      child: DefaultTabController(
        length: 2,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          height: 50.0,
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(25.0)),
          child: TabBar(
            indicator: BubbleTabIndicator(
                indicatorColor: Colors.white,
                indicatorHeight: 40.0,
                tabBarIndicatorSize: TabBarIndicatorSize.tab),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            tabs: [Text('Global'), Text('Country')],
            onTap: (index) {
              print('index' + index.toString());
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

}
