import 'package:flutter/material.dart';

class Layouting1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Layout Screen'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            // Wide layout - Side by side
            return Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: ImagePanel(),
                ),
                Expanded(
                  flex: 3,
                  child: DetailPanel(),
                ),
              ],
            );
          } else {
            // Narrow layout - Stacked
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: ImagePanel(),
                ),
                Expanded(
                  flex: 2,
                  child: DetailPanel(),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

class ImagePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://plus.unsplash.com/premium_photo-1678112180202-cd950dbe5a35?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your desired image URL
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const Text('Product Image',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class DetailPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Product Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'This section will dynamically adjust to display detailed information about the product. '
              'It can include various attributes such as size, color, price, and other relevant details that '
              'may interest the buyer.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'This section will dynamically adjust to display detailed information about the product. '
              'It can include various attributes such as size, color, price, and other relevant details that '
              'may interest the buyer.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'This section will dynamically adjust to display detailed information about the product. '
              'It can include various attributes such as size, color, price, and other relevant details that '
              'may interest the buyer.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child:
                  const Text('Buy Now', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text('Add to Wishlist',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
