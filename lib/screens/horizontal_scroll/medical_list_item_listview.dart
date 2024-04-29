import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_example/style_utils/card_style.dart';
import 'package:responsive_example/types/drug_item.dart';

class MedicalListItemListView extends StatelessWidget {
  final DrugItem drugItem;

  const MedicalListItemListView({
    super.key,
    required this.drugItem,
  });

  //TOSHOW try to remove Expanded and see what happens

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: cardStyle(),
      height: 310,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            child:
                Image.asset(drugItem.imagePath, height: 150, fit: BoxFit.cover),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$${drugItem.price.toStringAsFixed(2)}'),
                      Text('${drugItem.sold} sold'),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      drugItem.description,
                    ),
                  ),
                  Text(drugItem.dosageInfo),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
