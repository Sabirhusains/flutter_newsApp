part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(FeatherIcons.logOut).pOnly(right: 10.w)),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 500,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: MyColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(MyAssets.netflix),
                  ),
                  10.h.heightBox,
                  "Sabirhusain".text.xl2.bold.white.make(),
                  "admin@admin.com".text.xl.bold.white.make(),
                  10.h.heightBox,
                  "Sabirhusain is a Flutter Developer at Tech440.My passion is solving real-world problems through software and I am skilled in creating dynamic and intuitive user interfaces using the Flutter framework."
                      .text
                      .xl
                      .bold
                      .center
                      .white
                      .make(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          "6".text.xl2.bold.white.make(),
                          "Posts".text.xl.bold.white.make(),
                        ],
                      ),
                      Column(
                        children: [
                          "0".text.xl2.bold.white.make(),
                          "Following".text.xl.bold.white.make(),
                        ],
                      ),
                      Column(
                        children: [
                          "0".text.xl2.bold.white.make(),
                          "Followers".text.xl.bold.white.make(),
                        ],
                      ),
                    ],
                  ).pSymmetric(h: 20),
                ],
              ),
            ),
          ),
          20.h.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "My Posts".text.xl3.bold.make(),
                GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.9,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(MyAssets.netflix).cornerRadius(10),
                          6.h.heightBox,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Netflix Will Charge Money for Password Sharing"
                                  .text
                                  .medium
                                  .make()
                                  .expand(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(FeatherIcons.moreVertical))
                            ],
                          ),
                        ],
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
