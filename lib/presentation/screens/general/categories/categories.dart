part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Categories".text.white.size(16.sp).make(),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FeatherIcons.plus,
                color: MyColors.white,
              )),
        ],
        backgroundColor: MyColors.primaryColor,
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 10.h),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Card(
                child: ListTile(
                  leading: "${index + 1}".text.size(16.sp).make(),
                  title: "Sheliya".text.size(16.sp).make(),
                  trailing: SizedBox(
                    width: 100.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {}, icon:const Icon(FeatherIcons.edit2,color: Colors.green,)),
                        IconButton(
                            onPressed: () {}, icon:const Icon(FeatherIcons.trash2,color: Colors.red,)),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
