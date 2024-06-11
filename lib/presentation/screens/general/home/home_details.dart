part of 'home_imports.dart';

@RoutePage()
class HomeDetails extends StatelessWidget {
  const HomeDetails({Key? key,required this.post,required this.imagePath}) : super(key: key);

  final Post post;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: post.title!
            .text
            .ellipsis
            .white
            .size(16.sp)
            .make(),
        backgroundColor: MyColors.primaryColor,
      ),
      body: ListView(
        children: [
          Hero(
            tag: post.id.toString(),
            child: CachedNetworkImage(
              imageUrl: imagePath,
              height: 250.h,
              width: double.infinity.w,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                10.h.heightBox,
                post.title!
                    .text
                    .bold
                    .xl2
                    .make(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(FeatherIcons.eye),
                    8.w.widthBox,
                    "${post.views} Views".text.make(),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon:const Icon(
                          FeatherIcons.thumbsUp,
                          color: Colors.green,
                        )),
                    "0".text.make(),
                    IconButton(
                        onPressed: () {},
                        icon:const Icon(
                          FeatherIcons.thumbsDown,
                          color: Colors.red,
                        )),
                    "0".text.make(),
                  ],
                ),
                HtmlWidget(
                    post.body!,
                ),
                // post.body!
                //     .text
                //     .make(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
