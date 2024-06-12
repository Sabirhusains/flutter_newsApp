part of 'tags_imports.dart';


@RoutePage()

class Tags extends StatefulWidget {
  const Tags({Key? key}) : super(key: key);

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  late TagsViewModel tagsViewModel;

  @override
  void initState() {
    tagsViewModel = TagsViewModel(repository: context.read<Repository>());
    tagsViewModel.fetchAllTags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Tags".text.white.size(16.sp).make(),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => tagsViewModel.getAddTags(context),
              icon: const Icon(
                FeatherIcons.plus,
                color: MyColors.white,
              )),
        ],
        backgroundColor: MyColors.primaryColor,
      ),
      body: BlocBuilder<VelocityBloc<TagsModel>, VelocityState<TagsModel>>(
        bloc: tagsViewModel.tagsModelBloc,
        builder: (context, state) {
          if(state is VelocityInitialState){
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }else if(state is VelocityUpdateState){

            return ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
                itemCount: state.data.tags!.length,
                itemBuilder: (context, index) {
                  var tagsData= state.data.tags![index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Card(
                      child: ListTile(
                        leading: "${index + 1}".text.size(16.sp).make(),
                        title: tagsData.title!.text.size(16.sp).make(),
                        trailing: SizedBox(
                          width: 100.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  onPressed: () =>tagsViewModel.getUpdateTags(context,tagsData), icon:const Icon(FeatherIcons.edit2,color: Colors.green,)),
                              IconButton(
                                  onPressed: () => tagsViewModel.deleteTag(context,tagsData.id.toString(),index), icon:const Icon(FeatherIcons.trash2,color: Colors.red,)),
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
