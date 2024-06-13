part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  late CategoriesViewModel categoriesViewModel;

  @override
  void initState() {
    categoriesViewModel = CategoriesViewModel(repository: context.read<Repository>());
    categoriesViewModel.fetchAllCategories();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Categories".text.white.size(16.sp).make(),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => categoriesViewModel.getAddCategories(context),
              icon: const Icon(
                FeatherIcons.plus,
                color: MyColors.white,
              )),
        ],
        backgroundColor: MyColors.primaryColor,
      ),
      body: BlocBuilder<VelocityBloc<CategoriesModel>, VelocityState<CategoriesModel>>(
        bloc: categoriesViewModel.categoriesModelBloc,
        builder: (context, state) {
          if(state is VelocityInitialState){
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }else if(state is VelocityUpdateState){

            return ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
                itemCount: state.data.categories!.length,
                itemBuilder: (context, index) {
                  var catData= state.data.categories![index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Card(
                      child: ListTile(
                        leading: "${index + 1}".text.size(16.sp).make(),
                        title: catData.title!.text.size(16.sp).make(),
                        trailing: SizedBox(
                          width: 100.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  onPressed: () =>categoriesViewModel.getUpdateCategories(context,catData), icon:const Icon(FeatherIcons.edit2,color: Colors.green,)),
                              IconButton(
                                  onPressed: () => categoriesViewModel.deleteCategories(context,catData.id.toString(),index), icon:const Icon(FeatherIcons.trash2,color: Colors.red,)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
          }else{
            return const SizedBox();
          }
        },
      ),
    );
  }
}
