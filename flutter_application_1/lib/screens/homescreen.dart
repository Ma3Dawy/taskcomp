import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:flutter_application_1/widgets/provider/counter_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(countProvider);
    return TextButton(
      onPressed: () {
        if (count == collor.length - 1) {
          count = 0;
          // ignore: invalid_use_of_protected_member
          ref.watch(countProvider.notifier).state = count;
          // ignore: invalid_use_of_protected_member
          ref.watch(countProvider.notifier).state;
        } else {
          ref.watch(countProvider.notifier).state++;
        }
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Center(child: Text("Welcome",style: TextStyle(color: Colors.white),)),
            actions: [IconButton(onPressed: () => ref.invalidate(countProvider), icon:const Icon( Icons.replay_outlined,color: Colors.white,))],
          ),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.blueGrey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.music_note), label: "Music")
              ]),
          backgroundColor: collor[count],
          body: const Center(
              child: Text(
            "Hey There",
            style:
                TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
          ))),
    );
  }
}
