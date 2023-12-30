import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:programming_club/features/home/model/code_forces_model.dart';

@RoutePage()
class ContestDetailsPage extends ConsumerWidget {
  final CodeForcesContest args;
  const ContestDetailsPage({super.key, required this.args});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: Text('ContestDetailsPage'),
      ),
    );
  }
}
