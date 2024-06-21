import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_test/src/general/constants/app_colors.dart';
import 'package:dating_test/src/general/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin{
  late TabController _tabController;

  final List<Tab> topTabs = <Tab>[
    const Tab(text: 'Profile'),
    const Tab(text: 'Match'),
    const Tab(text: 'Chat'),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(child: mainView());
  }

  Widget mainView() {
    return Scaffold(
      body:  Column(
        children: [
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: const [
              Center(child: Text("Home Page")),
              Center(child: Text("Search Page")),
              Center(child: Text("Profile Page")),
            ],
          ))
        ],
      ),
      bottomNavigationBar: _menuBar(),
    );
  }

  Widget _menuBar() {
    const iconSize = 32.0;

    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).dividerColor,
          border: Border(
              top:
                  BorderSide(color: Theme.of(context).dividerColor, width: 1))),
      child: BottomNavigationBar(
        backgroundColor: HexColor("021242"),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.icHomeTabSelected,
                height: iconSize,
                width: iconSize,
                allowDrawingOutsideViewBox: true,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.icExploreTabSelected,
                height: iconSize,
                width: iconSize,
                allowDrawingOutsideViewBox: true,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.icMessageTabSelected,
                height: iconSize,
                width: iconSize,
                allowDrawingOutsideViewBox: true,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: AppColors.color323232,
                radius: iconSize / 2,
                child: CachedNetworkImage(
                  errorWidget: (context, url, error) => const SizedBox(),
                  placeholder: (context, imageProvider) =>
                      SvgPicture.asset(AppImages.icProfileTab),
                  imageBuilder: (context, imageProvider) => CircleAvatar(
                    radius: (iconSize - 3) / 2,
                    backgroundImage: imageProvider,
                  ),
                  imageUrl: '',
                ),
              ),
              label: '')
        ],
      ),
    );
  }
}
