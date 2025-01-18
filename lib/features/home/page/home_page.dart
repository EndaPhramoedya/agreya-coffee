import 'package:agreya_coffee/constants/constants.dart';
import 'package:agreya_coffee/features/home/home.dart';
import 'package:agreya_coffee/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    /// TODO: add initial category value
    context.read<HomeBloc>().add(const HomeEvent.getMenuList(filterCategory: 'Beef'));

    super.initState();
  }

  List<Widget> _appbarActions() {
    return <Widget>[
      Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          visualDensity: VisualDensity.compact,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          visualDensity: VisualDensity.compact,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
    ];
  }

  Widget _buildAppbar() {
    return SizedBox(
      height: 230,
      child: AppBar(
        flexibleSpace: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageHelper.getSourceByPng(PngAssetNames.banner),
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        actions: _appbarActions(),
      ),
    );
  }

  Widget _headerCards() {
    return Padding(
      padding: const EdgeInsets.only(top: 200, left: 10, right: 10),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 90,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.grey, width: 0.4),
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Agreya Coffee Duren Sawit',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Buka hari ini, 00:00-23:59',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                        size: 30,
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 70,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.grey, width: 0.4),
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Tipe Pemesanan',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        side: const BorderSide(
                          color: Colors.grey,
                          width: 0.3,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Makan di tempat',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      children: <Widget>[
        _buildAppbar(),
        _headerCards(),
      ],
    );
  }

  Widget _buildMenuList() {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (HomeState previous, HomeState current) => previous.menuModel != current.menuModel,
      builder: (BuildContext context, HomeState state) {
        final MenuModel? menuModel = state.menuModel;

        if (menuModel == null || menuModel.menuList.isEmpty) {
          return const SizedBox();
        }

        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 0.6
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            final MenuItemModel menuItem = menuModel.menuList[index];

            return MenuCard(menuItem: menuItem);
          },
        );
      },
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildHeader(),
          _buildMenuList(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
    );
  }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     // appBar: _appBar(),
//     body: CustomScrollView(
//       slivers: <Widget>[
//         SliverAppBar(
//           title: const InvisibleExpandedHeader(
//             child: Text('Agreya Coffee Duren Sawit'),
//           ),
//           actions: _appbarActions(),
//           expandedHeight: 180,
//           pinned: true,
//           flexibleSpace: FlexibleSpaceBar(
//
//             background: Stack(
//               children: <Widget>[
//                 ClipRRect(
//                   borderRadius: const BorderRadius.only(
//                     bottomLeft: Radius.circular(15),
//                     bottomRight: Radius.circular(15),
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           ImageHelper.getSourceByPng(PngAssetNames.banner),
//                         ),
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: -50,
//                   child: SizedBox(
//                     height: 100,
//                     child: Card(
//                       color: Colors.red,
//                       child: Row(
//                         children: <Widget>[
//                           const Column(
//                             children: <Widget>[
//                               Text('Agreya Coffee Duren Sawit'),
//                               Text('Buka hari ini, 00:00-23:59'),
//                             ],
//                           ),
//                           IconButton(
//                             onPressed: () {},
//                             icon: const Icon(Icons.chevron_right),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         SliverList(
//           delegate: SliverChildBuilderDelegate(
//             childCount: 20,
//             (BuildContext context, int index) {
//               return ListTile(
//                 title: Text('Index ${index + 1}'),
//               );
//             },
//           ),
//         ),
//       ],
//     ),
//   );
// }
}
