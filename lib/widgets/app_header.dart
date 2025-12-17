import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  static const double maxWidth = 1400;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: Colors.white,
      child: SizedBox(
        height: 64,
        child: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  // Left: Logo + Products
                  Row(
                    children: [
                      const Icon(Icons.layers, color: Colors.orange),
                      const SizedBox(width: 8),
                      Text(
                        'stackoverflow',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(width: 16),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Products'),
                      ),
                    ],
                  ),

                  const SizedBox(width: 12),

                  // Middle: Search
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: const Color(0xFFF3F3F3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 0),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Right: avatar + rep/badges + icons (like screenshot)
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 16,
                        child: Icon(Icons.person, size: 18),
                      ),
                      const SizedBox(width: 8),

                      const Text(
                        '1,565',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(width: 10),

                      _badgeCount(icon: Icons.circle, count: '9', color: const Color(0xFFFFC107)), // gold
                      const SizedBox(width: 8),
                      _badgeCount(icon: Icons.circle, count: '16', color: const Color(0xFFB87333)), // bronze
                      const SizedBox(width: 12),

                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.inbox_outlined),
                        tooltip: 'Inbox',
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_events_outlined),
                        tooltip: 'Achievements',
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.chat_bubble_outline),
                        tooltip: 'Messages',
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.help_outline),
                        tooltip: 'Help',
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                        tooltip: 'Menu',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget _badgeCount({
    required IconData icon,
    required String count,
    required Color color,
  }) {
    return Row(
      children: [
        Icon(icon, size: 10, color: color),
        const SizedBox(width: 4),
        Text(
          count,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
