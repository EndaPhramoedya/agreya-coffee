import 'dart:ui';

import 'package:agreya_coffee/components/custom_button.dart';
import 'package:agreya_coffee/constants/constants.dart';
import 'package:agreya_coffee/features/home/model/model.dart';
import 'package:agreya_coffee/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class MenuDetailArguments {
  final MenuItemModel menuItem;

  MenuDetailArguments({
    required this.menuItem,
  });
}

class MenuDetailPage extends StatefulWidget {
  final MenuDetailArguments arguments;

  const MenuDetailPage({
    super.key,
    required this.arguments,
  });

  @override
  State<MenuDetailPage> createState() => _MenuDetailPageState();
}

class _MenuDetailPageState extends State<MenuDetailPage> {
  final TextEditingController _noteController = TextEditingController();

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  Widget _buildHeaderSection() {
    return Stack(
      children: <Widget>[
        Container(
          height: kDeviceLogicalHeight * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                widget.arguments.menuItem.imageName,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.6),
            ),
            child: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.close),
              visualDensity: VisualDensity.compact,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionSection() {
    return Padding(
      padding: EdgeInsets.only(top: kDeviceLogicalHeight * 0.3),
      child: Container(
        width: kDeviceLogicalWidth,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.arguments.menuItem.name,
                    style: AppTextStyle.black3C3D3E_700_20,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    NumberFormat.simpleCurrency(locale: 'id', decimalDigits: 0)
                        .format(int.tryParse(widget.arguments.menuItem.id) ?? '0'),
                    style: AppTextStyle.black3C3D3E_700_14,
                  ),
                  const SizedBox(height: 10),
                  Flexible(child: Text(lorem(paragraphs: 1, words: 20))),
                ],
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.shade100,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Catatan',
                    style: AppTextStyle.black3C3D3E_700_14,
                  ),
                  Text(
                    'Opsional',
                    style: AppTextStyle.black3C3D3E_400_14,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _noteController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(width: 0.3, color: Colors.grey.shade500),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(width: 0.3, color: Colors.grey.shade500),
                      ),
                      hintStyle: AppTextStyle.grey676768_400_14,
                      hintText: 'Contoh: sedikit gula',
                    ),
                    onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSection() {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(10),
      width: kDeviceLogicalWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            spreadRadius: 2,
              offset: const Offset(0, -5)
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text('Jumlah Pesanan'),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_circle_outline),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('1'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_outline),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            customContent: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Tambah pesanan - ',
                  style: AppTextStyle.white_500_16,
                ),
                Text(
                  FormatHelper.currencyStringFormat(
                    text: widget.arguments.menuItem.id,
                  ),
                  style: AppTextStyle.white_700_16,
                ),
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Stack(
            children: <Widget>[
              _buildHeaderSection(),
              _buildDescriptionSection(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildContent(),
      bottomNavigationBar: _buildBottomSection(),
    );
  }
}
