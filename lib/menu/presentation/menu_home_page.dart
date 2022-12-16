import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuHomePage extends HookConsumerWidget {
  const MenuHomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      floatingActionButton: FloatingActionButton(
        // ignore: no-empty-block
        onPressed: () {},
        child: const Icon(Icons.verified_outlined),
      ),
    );
  }
}
