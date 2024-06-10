part of 'add_posts_imports.dart';


class AddPosts extends StatefulWidget {
  const AddPosts({Key? key}) : super(key: key);

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {

  // final QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        title: "Add Post".text.white.make(),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(FeatherIcons.check,color: Colors.white,))
        ],
      ),
      body: ListView(
        padding:const EdgeInsets.symmetric(horizontal: 24),
        children: [
          20.h.heightBox,
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.network("https://i0.wp.com/sunrisedaycamp.org/wp-content/uploads/2020/10/placeholder.png?ssl=1").cornerRadius(10),
              IconButton(onPressed: (){}, icon:const Icon(FeatherIcons.camera,color: MyColors.primaryColor,)),
            ],
          ),
          10.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderRadius: 10,
            hint: "Title",
            borderType: VxTextFieldBorderType.roundLine,
            borderColor: MyColors.primaryColor,
          ),
          10.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderRadius: 10,
            hint: "Slug",
            borderType: VxTextFieldBorderType.roundLine,
            borderColor: MyColors.primaryColor,
          ),
          10.h.heightBox,
          Container(
            height: 60,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: MyColors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Tags".text.make(),
                const Icon(FeatherIcons.chevronRight),
              ],
            ),
          ),
          10.h.heightBox,
          Container(
            height: 60,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: MyColors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Categories".text.make(),
                const Icon(FeatherIcons.chevronRight),
              ],
            ),
          ),
          // 10.h.heightBox,
          // QuillToolbar.simple(
          //   configurations: QuillSimpleToolbarConfigurations(
          //     controller: _controller,
          //   ),
          // ),
          // SizedBox(
          //   height: 500,
          //   child: QuillEditor.basic(
          //     configurations: QuillEditorConfigurations(
          //       controller: _controller,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
