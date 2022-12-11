import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nererun/components/gradient_scaffold.dart';
import 'package:nererun/components/nererun_app_bar.dart';
import 'package:nererun/components/scaffold_indicator.dart';
import 'package:nererun/entity/off_timer_type.dart';
import 'package:nererun/feature/off_timer/components/off_timer_button.dart';
import 'package:nererun/feature/off_timer/off_timer_page_current_type_state.dart';
import 'package:nererun/feature/off_timer/off_timer_page_state.codegen.dart';
import 'package:nererun/feature/off_timer/off_timer_page_state_notifier.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';

class OffTimerScreen extends HookConsumerWidget {
  const OffTimerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(offTimerStateNotifierProvider);
    final store = ref.watch(offTimerStateNotifierProvider.notifier);

    final offTimerCurrentTypeStateNotifier =
        ref.watch(offTimerCurrentTypeStateNotifierProvider.notifier);

    return state.when(
      data: (state) {
        return GradientScaffold(
          appBar: NererunAppBar(
            title: Text(
              'タイマー',
              style: AppTextStyle.body1(AppColor.white),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Text(
                      '終了時間の設定',
                      style: AppTextStyle.body1(AppColor.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '設定した時間でストーリーの再生を自動で終了します。',
                      style: AppTextStyle.body3(AppColor.gray3),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: OffTimerType.values.length,
                  itemBuilder: (context, index) {
                    final currentType = OffTimerType.values[index];
                    return OffTimerButton(
                      title: currentType.fullName,
                      isSelected: currentType == state.offTimerType,
                      onTap: () {
                        HapticFeedback.mediumImpact();
                        offTimerCurrentTypeStateNotifier.set(currentType);
                        store.asyncAction.edit(currentType);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        ref.refresh(offTimerStateProvider);
        return Container();
      },
      loading: () => const ScaffoldIndicator(),
    );
  }
}
