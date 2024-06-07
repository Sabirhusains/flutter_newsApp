part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            children: [
              Image.asset(MyAssets.netflix).cornerRadius(20),
              20.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Latest Posts".text.size(16.sp).make(),
                  "See All".text.size(16.sp).make(),
                ],
              ),
              10.h.heightBox,
              ListView.separated(
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Image.asset(
                          MyAssets.netflix,
                          height: 100.h,
                          width: 145.w,
                          fit: BoxFit.cover,
                        ).cornerRadius(20),
                        10.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Netflix Will Charge Money for Password Sharing".text.maxLines(2).bold.size(16.sp).make(),
                            10.h.heightBox,
                            Row(
                              children: [
                                const Icon(
                                  FeatherIcons.clock,
                                ),
                                5.w.widthBox,
                                "6 Months ago".text.size(16.sp).make(),
                              ],
                            ),
                            10.h.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "59 Views".text.size(16.sp).make(),
                                Icon(
                                  FeatherIcons.bookmark,
                                ),

                              ],
                            ),
                          ],
                        ).expand(),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                  itemCount: 6),
            ],
          ),
        ),
      ),
    );
  }
}
