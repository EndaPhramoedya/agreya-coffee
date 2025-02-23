import 'package:agreya_coffee/constants/constants.dart';
import 'package:agreya_coffee/features/home/model/model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MenuCard extends StatelessWidget {
  final MenuItemModel menuItem;
  final VoidCallback onTap;

  const MenuCard({super.key, required this.menuItem, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      menuItem.imageName,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: Text(
                      menuItem.name,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /// TODO: should be the price, but the API doesn't have price object
                  Text(
                    NumberFormat.simpleCurrency(locale: 'id', decimalDigits: 0).format(int.tryParse(menuItem.id) ?? '0'),
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      side: const BorderSide(
                        color: Colors.orange,
                        width: 0.5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size.zero,
                    ),
                    child: SizedBox(
                      width: kDeviceLogicalWidth,
                      child: const Text(
                        'Tambah',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.orange,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
