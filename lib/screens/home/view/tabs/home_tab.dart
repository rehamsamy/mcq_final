import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/core_classes/constants.dart';
import 'package:mcq_final/helpler/custom_widgets/app_cached_image.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';
import 'package:get/get.dart';
import 'package:mcq_final/screens/home/view/tabs/view/category_widget.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: SizedBox(
            height: 120,
            child: Card(
                elevation: 10,
                color: kPurpleColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Card(
                          elevation: 12,
                          color: Colors.purpleAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.wifi,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const AppCashedImage(
                            imageUrl:
                                'https://tse1.mm.bing.net/th?id=OIP.7HOtJ3fDJ6wj8r3ZQNDQnwHaFS&pid=Api&P=0',
                            isCircular: true,
                            width: 45,
                            height: 45,
                            borderColor: Colors.white,
                            borderWidth: 2,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText('level'.tr),
                              Row(
                                children: [
                                  const AppText('5'),
                                  SliderTheme(
                                    data: SliderThemeData(
                                      overlayShape:
                                          SliderComponentShape.noOverlay,
                                    ),
                                    child: SizedBox(
                                      width: 120,
                                      child: Slider(
                                        value: 0.5,
                                        onChanged: (val) {},
                                        activeColor: kBlueColor,
                                        min: 0.1,
                                        max: 1,
                                        inactiveColor: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  const AppText('6'),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/coin.png',
                            width: 50,
                            height: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppText('coins'.tr),
                              AppText(
                                '300'.tr,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ],
                          )
                        ],
                      )
                    ])),
          )),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 15,
            ),
            AppText(
              'start_play'.tr,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 40,
            ),
          ])),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return const CategoryWidget();
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 280,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 6 / 6,
                crossAxisCount: 2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
