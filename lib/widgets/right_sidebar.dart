import 'package:flutter/material.dart';

class RightSidebar extends StatelessWidget {
  const RightSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _SideCard(
          title: 'The Overflow Blog',
          items: [
            'Interface is everything, and everything is an interface',
            'At AWS re:Invent, the news was agents, but the focus was developers',
          ],
        ),
        SizedBox(height: 12),
        _SideCard(
          title: 'Featured on Meta',
          items: [
            'AI Assist is now available on Stack Overflow',
            'Native Ads coming soon to Stack Overflow and Stack Exchange',
            'Policy: Generative AI (e.g., ChatGPT) is banned',
          ],
        ),
        SizedBox(height: 12),
        _SideCard(
          title: 'Hot Meta Posts',
          items: [
            'What\'s the current approach to handle harmful, but highly upvoted answers?',
            'Does AI Assist have tangible quality and attribution standards anyone is...',
          ],
        ),
      ],
    );
  }
}

class _SideCard extends StatelessWidget {
  final String title;
  final List<String> items;

  const _SideCard({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.w800)),
            const SizedBox(height: 10),
            ...items.map(
              (t) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.article_outlined, size: 18),
                    const SizedBox(width: 10),
                    Expanded(child: Text(t)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
