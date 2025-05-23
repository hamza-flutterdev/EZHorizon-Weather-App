import 'package:flutter/material.dart';

class PullToRefresh extends StatefulWidget {
  final Widget child;
  final Future<void> Function()? onRefresh;

  const PullToRefresh({super.key, required this.child, this.onRefresh});

  @override
  State<PullToRefresh> createState() => _PullToRefreshState();
}

class _PullToRefreshState extends State<PullToRefresh> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Color(0xFF4A90E2),
      onRefresh: widget.onRefresh ?? _defaultRefresh,
      child: widget.child,
    );
  }

  Future<void> _defaultRefresh() async {
    // Just a fallback in case onRefresh isn't passed
    await Future.delayed(const Duration(seconds: 1));
  }
}
