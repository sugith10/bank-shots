import 'package:core_assets/gen/colors.gen.dart';
import 'package:core_design/core_design.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';

final class GoalGridView extends StatelessWidget {
  const GoalGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 16, // Spacing between columns
        mainAxisSpacing: 20, // Spacing between rows
        childAspectRatio: .65, // Decrease this value to increase width
      ),
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => const _GridBoxWidget(),
      ),
    );
  }
}

final class _GridBoxWidget extends StatefulWidget {
  const _GridBoxWidget();

  @override
  State<_GridBoxWidget> createState() => _GridBoxWidgetState();
}

final class _GridBoxWidgetState extends State<_GridBoxWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.x20),
        gradient: LinearGradient(
          colors: [
            AssetColors.coralOrange, // End color
            AssetColors.coralOrange.withValues(alpha: 0),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: const EdgeInsets.all(AppPadding.x16),
      child: GlassCardWidget(
        child: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.x10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  child: Text(
                    'Goa Trip',
                    style: context.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Gap(10),
                const _AmountWidget(
                  title: 'Saved',
                  amount: '5000',
                ),
                const Gap(10),
                const _AmountWidget(
                  title: 'Saved',
                  amount: '5000',
                ),
                const Gap(15),
                TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0, end: 0.7),
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.easeInOut,
                  builder: (context, value, child) {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        LinearProgressIndicator(
                          value: value,
                          minHeight: 20,
                          borderRadius: BorderRadius.circular(AppRadius.x12),
                          backgroundColor: Colors.white.withValues(alpha: 0.2),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                        Text(
                          '${(value * 100).toInt()}%',
                          style: context.bodySmall?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final class _AmountWidget extends StatelessWidget {
  const _AmountWidget({
    required this.title,
    required this.amount,
  });

  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white.withValues(alpha: 0.6),
            ),
          ),
          const Gap(2),
          Text(
            '₹$amount',
            style: context.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
