part of '../pages/create_goal_page.dart';

final class _CreateGoalSubCard extends StatelessWidget {
  final Color bgColor;
  final TextEditingController controller;
  const _CreateGoalSubCard({
    required this.height,
    required this.bgColor,
    required this.controller,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.x10),
        borderSide: BorderSide(color: Colors.transparent));
    return GlassCardWidget(
      color: ColorUtil.glassCardBgFromColorList(bgColor),
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.x16),
          child: Column(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: AppColor.card,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: context.height * 0.6,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(AppPadding.x12),
                              child: Divider(
                                color: AppColor.shadowFont,
                                thickness: 3.5,
                                indent: context.width * 0.35,
                                endIndent: context.width * 0.35,
                              ),
                            ),
                            Gap(20),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Wrap(
                                  children: List.generate(
                                      Assets.svg.values.length, (index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.all(AppPadding.x12),
                                      child: SvgPicture.asset(
                                        height: 50,
                                        width: 50,
                                        Assets.svg.values[index],
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                            Gap(40)
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.x75),
                    color: Colors.black.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.x16),
                    child: SvgPicture.asset(Assets.svg.money),
                  ),
                ),
              ),
              Spacer(),
              Text(
                'Name your goal',
                style: context.titleLarge?.copyWith(
                    color: ColorUtil.get(
                  backgroundColor: bgColor,
                  dark: AppColor.fontOpposite,
                  light: AppColor.fontPrimary,
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppPadding.x16),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    focusedBorder: inputBorder,
                    enabledBorder: inputBorder,
                    fillColor: Colors.white.withOpacity(0.6),
                    filled: true,
                  ),
                  style: TextStyle(
                    color: ColorUtil.get(
                      backgroundColor: bgColor,
                      dark: AppColor.fontOpposite,
                      light: AppColor.fontPrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
