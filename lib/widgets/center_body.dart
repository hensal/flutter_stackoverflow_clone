import 'package:flutter/material.dart';

class CenterBody extends StatelessWidget {
  const CenterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _heroCard(context),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: _statCard('Reputation', '1.6k', '+48')),
            const SizedBox(width: 12),
            Expanded(child: _statCard('Badge progress', 'Curious', '8/5')),
            const SizedBox(width: 12),
            Expanded(child: _tagsCard()),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          'Interesting posts for you',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        _postCard(),
        const SizedBox(height: 10),
        _postCard(title: 'How to run Flutter on Edge with web-server?'),
        const SizedBox(height: 10),
        _postCard(title: 'How to run Flutter on Edge with web-server?'),
        const SizedBox(height: 10),
        _postCard(title: 'How to run Flutter on Edge with web-server?'),
        const SizedBox(height: 10),
        _postCard(title: 'How to run Flutter on Edge with web-server?'),
        const SizedBox(height: 10),
        _postCard(title: 'How to run Flutter on Edge with web-server?'),
      ],
    );
  }

  Widget _heroCard(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey greetal, what do you want to learn today?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 6),
            const Text(
              'Get instant answers with AI Assist, grounded in community-verified knowledge.',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Start a chat with AI Assist...',
                      filled: true,
                      fillColor: const Color(0xFFF7F7F7),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFE4E4E4)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 56,
                  width: 56,
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                    child: const Icon(Icons.arrow_upward),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _statCard(String title, String big, String small) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(big, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w800)),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(small, style: const TextStyle(fontSize: 12)),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text('Next privilege at 2000 rep: Edit posts.', style: TextStyle(color: Colors.black54)),
          ],
        ),
      ),
    );
  }

  Widget _tagsCard() {
    final tags = ['dart', 'flutter', 'html-input', 'node.js'];
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Watched tags', style: TextStyle(fontWeight: FontWeight.w700)),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: tags.map((t) => _chip(t)).toList(),
            ),
            const SizedBox(height: 10),
            const Text('See all', style: TextStyle(color: Colors.blue)),
          ],
        ),
      ),
    );
  }

  Widget _chip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }

  Widget _postCard({String? title}) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // votes/answers column
            SizedBox(
              width: 90,
              child: Column(
                children: const [
                  Text('4 votes', style: TextStyle(fontWeight: FontWeight.w700)),
                  SizedBox(height: 8),
                  Text('2 answers', style: TextStyle(color: Colors.green)),
                  SizedBox(height: 8),
                  Text('103 views', style: TextStyle(color: Colors.black54)),
                ],
              ),
            ),
            const SizedBox(width: 12),
            // content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? 'Trying to implement two finger pinch to zoom images on cards in appinio_swiper library',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'I am using a library for swiping cards. On images I wanted to implement pinch to zoom...',
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: const [
                      _Tag('flutter'),
                      _Tag('dart'),
                      _Tag('swipe-gesture'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final String text;
  const _Tag(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }
}
