import 'package:astroapp/widgets/listview_widget.dart';
import 'package:flutter/material.dart';

class MarriagePage extends StatelessWidget {
  const MarriagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListViewItem(title: 'Marriage'),
        ListViewItem(title: 'Carrier'),
        ListViewItem(title: 'Family'),
        ListViewItem(title: 'Health'),
      ],
    );
  }
}
