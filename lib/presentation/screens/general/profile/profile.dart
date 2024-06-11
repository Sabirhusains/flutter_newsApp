part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late ProfileViewModel profileViewModel;

  @override
  void initState() {
    profileViewModel = ProfileViewModel(repository: context.read<Repository>());
    profileViewModel.getUserProfileData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
              onPressed: () => profileViewModel.logout(context),
              icon: const Icon(FeatherIcons.logOut, color: MyColors.white,)
                  .pOnly(right: 10.w)),
        ],
      ),
      body: BlocBuilder<VelocityBloc<ProfileModel>, VelocityState<ProfileModel>>(
        bloc: profileViewModel.profileModelBloc,
        builder: (context, state) {
          if(state is VelocityInitialState){
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          else if(state is VelocityUpdateState){
            return RefreshIndicator(
              onRefresh: () => profileViewModel.getUserProfileData(),
              child: ListView(
                children: [
                  Container(
                    height: 500,
                    width: MediaQuery
                        .sizeOf(context)
                        .width,
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
                          CircleAvatar(
                            radius: 100,
                            backgroundImage: NetworkImage(state.data.userDetails!.profilePhotoUrl.toString()),
                          ),
                          10.h.heightBox,
                          state.data.userDetails!.name!.text.xl2.bold.white.make(),
                          state.data.userDetails!.email!.text.xl.bold.white.make(),
                          10.h.heightBox,
                          state.data.userDetails!.about!
                              .text
                              .size(14.sp)
                              .fontWeight(FontWeight.w500)
                              .center
                              .white
                              .make(),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  state.data.postsCount!.text.xl2.bold.white.make(),
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
                          20.h.heightBox,
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
                            itemCount: state.data.posts!.length,
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
                              var userPostData= state.data.posts![index];
                              var imagePath = userPostData.featuredimage
                                  .toString().prepend('https://techblog.codersangam.com/')
                                  .replaceAll('public', 'storage');
                              return Column(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl: imagePath,
                                    height: 100.h,
                                    width: 170.w,
                                    fit: BoxFit.cover,).cornerRadius(10),
                                  6.h.heightBox,
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      userPostData.title!
                                          .text
                                          .medium
                                          .maxLines(2)
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
          return SizedBox();

        },
      ),
    );
  }
}
