import 'package:flutter/material.dart';

class LeftSidebar extends StatelessWidget {
  const LeftSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _sectionTitle(context, 'Home'),
        _item(Icons.home_filled, 'Home', selected: true),
        _item(Icons.help_outline, 'Questions'),
        _item(Icons.smart_toy_outlined, 'AI Assist'),
        _item(Icons.flag_outlined, 'Staging Ground'),
        _item(Icons.sell_outlined, 'Tags'),
        _item(Icons.bookmark_border, 'Saves'),
        const SizedBox(height: 18),
        _sectionTitle(context, 'COLLECTIVES'),
        _item(Icons.cloud_outlined, 'AWS', badge: '5'),
        const SizedBox(height: 18),
        _sectionTitle(context, 'STACK INTERNAL'),
        _item(Icons.work_outline, 'Work'),
      ],
    );
  }

  Widget _sectionTitle(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
      child: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: Colors.black54,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }

  Widget _item(IconData icon, String title, {bool selected = false, String? badge}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFEFEFEF) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        dense: true,
        leading: Icon(icon, size: 20),
        title: Text(title, style: const TextStyle(fontSize: 14)),
        trailing: badge == null
            ? null
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(badge, style: const TextStyle(fontSize: 12)),
              ),
      ),
    );
  }
}
