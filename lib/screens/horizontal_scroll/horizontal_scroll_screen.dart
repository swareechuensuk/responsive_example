import 'package:flutter/material.dart';
import 'package:responsive_example/screens/horizontal_scroll/medical_list_item_listview.dart';
import 'package:responsive_example/screens/horizontal_scroll/medical_list_item_row.dart';
import 'package:responsive_example/types/drug_item.dart';

class HorizontalScrollScreen extends StatelessWidget {
  const HorizontalScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal Scroll Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  const Text('Medical'),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    '(27 items)',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const Spacer(),
                  TextButton(onPressed: () {}, child: const Text('View All'))
                ],
              ),
            ),
            const Text(
                'Using IntrinsicHeight and Row\n no need to fixed height\nnot ideal if have too many items'),
            IntrinsicHeight(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...drugList.map((d) => Container(
                          margin: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              MedicalListItemRow(drugItem: d),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            const Text(
                'ListView.builder\nhave to fixed height\nready for many items'),
            SizedBox(
              height: 310,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: drugList.length,
                itemBuilder: (context, index) {
                  final drugItem = drugList[index];
                  return Container(
                    margin: EdgeInsets.only(
                        top: 16,
                        bottom: 16,
                        left: index == 0 ? 16 : 0,
                        right: 16),
                    child: MedicalListItemListView(drugItem: drugItem),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

final DrugItem drugItem1 = DrugItem(
  price: 120.00,
  sold: 42,
  description: 'Antibiotics (Amoxicillin)',
  imagePath: 'assets/drug.jpeg',
  dosageInfo: '500 mg, 30 capsules',
);

final DrugItem drugItem2 = DrugItem(
  price: 75.50,
  sold: 59,
  description:
      'Generic Pain Relievers (Ibuprofen) Generic Pain Relievers (Ibuprofen) Generic Pain Relievers (Ibuprofen)',
  imagePath: 'assets/drug.jpeg',
  dosageInfo: '200 mg, 100 tablets',
);

final DrugItem drugItem3 = DrugItem(
  price: 45.30,
  sold: 88,
  description: 'Diabetes Medication (Metformin)',
  imagePath: 'assets/drug.jpeg',
  dosageInfo: '500 mg, 120 tablets',
);

final DrugItem drugItem4 = DrugItem(
  price: 85.00,
  sold: 33,
  description: 'Statins (Atorvastatin)',
  imagePath: 'assets/drug.jpeg',
  dosageInfo: '20 mg, 90 tablets',
);

final DrugItem drugItem5 = DrugItem(
  price: 150.00,
  sold: 25,
  description: 'Antidepressants (Sertraline)',
  imagePath: 'assets/drug.jpeg',
  dosageInfo: '100 mg, 60 tablets',
);

final DrugItem drugItem6 = DrugItem(
  price: 200.00,
  sold: 15,
  description: 'Opioid Painkillers (Oxycodone)',
  imagePath: 'assets/drug.jpeg',
  dosageInfo: '30 mg, 50 tablets',
);

final drugList = [
  drugItem1,
  drugItem2,
  drugItem3,
  drugItem4,
  drugItem5,
  drugItem6,
];
