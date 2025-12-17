import 'package:flutter/material.dart';
import '../widgets/app_header.dart';
import '../widgets/left_sidebar.dart';
import '../widgets/center_body.dart';
import '../widgets/right_sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const double _maxWidth = 1400;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    final isCompact = w < 980; // hide sidebars on smaller widths

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Column(
        children: [
          const AppHeader(),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: _maxWidth),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (!isCompact) ...[
                        const SizedBox(
                          width: 220,
                          child: LeftSidebar(),
                        ),
                        const SizedBox(width: 12),
                      ],
                      const Expanded(
                       // flex: 6,
                        child: CenterBody(),
                      ),
                      if (!isCompact) ...[
                        const SizedBox(width: 12),
                        const SizedBox(
                          width: 300,
                          child: RightSidebar(),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
