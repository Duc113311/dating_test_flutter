import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_test/src/view/explore/explore_page.dart';
import 'package:dating_test/src/view/home/home_page.dart';
import 'package:dating_test/src/view/message/message_page.dart';
import 'package:dating_test/src/view/profile/profile_page.dart';
import 'package:flutter/material.dart';
import '../../general/constants/app_colors.dart';
import '../../general/constants/app_images.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  // const
  late TabController _tabController;
  TabbarItems selectedItem = TabbarItems.home;

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addObserver(this);

    _tabController = TabController(
        initialIndex: selectedItem.index,
        length: TabbarItems.values.length,
        vsync: this);

    _tabController.addListener(() {
      setState(() {
        selectedItem = TabbarItem.init(_tabController.index);
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: mainView(),
    );
  }

  Widget mainView() {
    return Scaffold(
      body: Column(
        children: [
          // if (tabIndex == 0) _renderAppBar(context),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: const ClampingScrollPhysics(),
              children: const [
                HomePage(),
                ExplorePage(),
                MessagePage(),
                ProfilePage()
              ],
            ),
          ),
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
        backgroundColor: const Color(0xFF021242),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (value) async {
          setState(() {
            selectedItem = TabbarItem.init(value);
          });
          _tabController.animateTo(selectedItem.index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn);

          // if (selectedItem == TabbarItems.profile) {
          //   await ApiProfileSetting.getProfile(force: true);
          // }
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                selectedItem == TabbarItems.home
                    ? AppImages.icHomeTabSelected
                    : AppImages.icHomeTab,
                height: iconSize,
                width: iconSize,
                allowDrawingOutsideViewBox: true,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                selectedItem == TabbarItems.search
                    ? AppImages.icExploreTabSelected
                    : AppImages.icExploreTab,
                height: iconSize,
                width: iconSize,
                allowDrawingOutsideViewBox: true,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                selectedItem == TabbarItems.chat
                    ? AppImages.icMessageTabSelected
                    : AppImages.icMessageTab,
                height: iconSize,
                width: iconSize,
                allowDrawingOutsideViewBox: true,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: selectedItem == TabbarItems.profile
                    ? AppColors.primaryColor
                    : AppColors.color323232,
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

// Enum tab
enum TabbarItems { home, search, chat, profile }

extension TabbarItem on TabbarItems {
  int get index {
    switch (this) {
      case TabbarItems.home:
        return 0;
      case TabbarItems.search:
        return 1;
      case TabbarItems.chat:
        return 2;
      case TabbarItems.profile:
        return 3;
    }
  }

  static TabbarItems init(int index) {
    switch (index) {
      case 0:
        return TabbarItems.home;
      case 1:
        return TabbarItems.search;
      case 2:
        return TabbarItems.chat;
      case 3:
        return TabbarItems.profile;
      default:
        return TabbarItems.home;
    }
  }
}
