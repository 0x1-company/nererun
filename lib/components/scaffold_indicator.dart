import 'package:flutter/material.dart';
import 'package:nererun/components/gradient_scaffold.dart';

class ScaffoldIndicator extends StatelessWidget {
  const ScaffoldIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
