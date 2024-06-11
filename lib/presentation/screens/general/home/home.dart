part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeViewModel homeViewModel;

  @override
  void initState() {
    homeViewModel = HomeViewModel(repository: context.read<Repository>());
    homeViewModel.fetchAllPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<VelocityBloc<HomeModel>, VelocityState<HomeModel>>(
            bloc: homeViewModel.postBloc,
            builder: (context, state) {
              if (state is VelocityInitialState) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else if (state is VelocityUpdateState) {
                return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      VxSwiper.builder(
                        autoPlay: true,
                          enlargeCenterPage: true,
                          itemCount: state.data.popularPosts!.length,
                          itemBuilder: (context, index) {
                            var latestPosts = state.data.popularPosts![index];
                            var imagePath = latestPosts.featuredimage
                                .toString()
                                .replaceAll('public', 'storage');
                            return CachedNetworkImage(imageUrl: imagePath,fit: BoxFit.cover,)
                                .cornerRadius(20).pSymmetric(h: 10);
                          }),
                      20.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "Latest Posts".text.size(16.sp).make(),
                          "See All".text.size(16.sp).make(),
                        ],
                      ).pSymmetric(h: 24.w),
                      10.h.heightBox,
                      ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                        shrinkWrap: true,
                        itemCount: state.data.allPosts!.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          var latestPosts = state.data.allPosts![index];
                          var imagePath = latestPosts.featuredimage
                              .toString()
                              .replaceAll('public', 'storage');
                          return GestureDetector(
                            onTap: () => AutoRouter.of(context).push(
                                HomeDetailsRoute(
                                    post: latestPosts, imagePath: imagePath)),
                            child: FadedScaleAnimation(
                              child: Row(
                                children: [
                                  Hero(
                                    tag: latestPosts.id.toString(),
                                    child: CachedNetworkImage(
                                      imageUrl: imagePath,
                                      height: 100.h,
                                      width: 145.w,
                                      fit: BoxFit.cover,
                                    ).cornerRadius(20),
                                  ),
                                  10.w.widthBox,
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      latestPosts.title!.text
                                          .maxLines(2)
                                          .bold
                                          .size(16.sp)
                                          .make(),
                                      10.h.heightBox,
                                      Row(
                                        children: [
                                          const Icon(
                                            FeatherIcons.clock,
                                          ),
                                          5.horizontalSpace,
                                          latestPosts.createdAt!
                                              .timeAgo()
                                              .text
                                              .size(16.sp)
                                              .make(),
                                        ],
                                      ),
                                      10.h.heightBox,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          "${latestPosts.views} Views"
                                              .text
                                              .size(16.sp)
                                              .make(),
                                          const Icon(
                                            FeatherIcons.bookmark,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ).expand(),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 20.h,
                        ),
                      ),
                    ],
                  ),
                );
              }
              return const SizedBox();
            }),
      ),
    );
  }
}
