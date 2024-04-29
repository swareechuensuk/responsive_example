import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_example/style_utils/card_style.dart';
import 'package:responsive_example/types/drug_item.dart';

class MedicalListItem extends StatelessWidget {
  final DrugItem drugItem;

  const MedicalListItem({
    super.key,
    required this.drugItem,
  });

  //TOSHOW try to change constrainedBox to Container with fixed height and see the difference

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: cardStyle(),
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
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ConstrainedBox(
                  constraints: const BoxConstraints(minHeight: 40),
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    drugItem.description,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(drugItem.dosageInfo),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
