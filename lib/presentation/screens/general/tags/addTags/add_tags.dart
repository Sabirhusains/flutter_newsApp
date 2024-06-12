part of 'add_tags_imports.dart';


@RoutePage<TagsModel>()
class AddTags extends StatefulWidget {
  const AddTags({Key? key}) : super(key: key);

  @override
  State<AddTags> createState() => _AddTagsState();
}

class _AddTagsState extends State<AddTags> {
  late AddTagsViewModel addTagsViewModel;

  @override
  void initState() {
    addTagsViewModel = AddTagsViewModel(repository: context.read<Repository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Add Tags".text.white.size(16.sp).make(),
        centerTitle: true,
        backgroundColor: MyColors.primaryColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              20.verticalSpace,
              VxTextField(
                fillColor: Colors.transparent,
                borderRadius: 10,
                hint: "Title",
                controller: addTagsViewModel.textEditingController,
                borderType: VxTextFieldBorderType.roundLine,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                borderColor: MyColors.primaryColor,
              ),
              20.verticalSpace,
              VxTextField(
                fillColor: Colors.transparent,
                borderRadius: 10,
                hint: "Slug",
                controller: addTagsViewModel.textEditingController,
                borderType: VxTextFieldBorderType.roundLine,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                borderColor: MyColors.primaryColor,
              ),
              const Spacer(),
              BlocBuilder<VelocityBloc, VelocityState>(
                bloc: addTagsViewModel.isLoadingBloc,
                builder: (context, state) {
                  return PrimaryButton(title: "Add Tag",
                      isLoading: state.data,
                      onPressed: () => addTagsViewModel.addNewTags(context));
                },
              ),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
