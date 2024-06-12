part of 'update_tags_imports.dart';


@RoutePage<TagsModel>()
class UpdateTags extends StatefulWidget {

  final Tag tag;
  const UpdateTags({super.key,required this.tag});

  @override
  State<UpdateTags> createState() => _UpdateTagsState();
}

class _UpdateTagsState extends State<UpdateTags> {
  late UpdateTagsViewModel updateTagsViewModel;

  @override
  void initState() {
    updateTagsViewModel = UpdateTagsViewModel(repository: context.read<Repository>());
    updateTagsViewModel.textEditingController.text = widget.tag.title.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Update Tags".text.white.size(16.sp).make(),
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
                controller: updateTagsViewModel.textEditingController,
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
                controller: updateTagsViewModel.textEditingController,
                borderType: VxTextFieldBorderType.roundLine,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                borderColor: MyColors.primaryColor,
              ),
              const Spacer(),
              BlocBuilder<VelocityBloc, VelocityState>(
                bloc: updateTagsViewModel.isLoadingBloc,
                builder: (context, state) {
                  return PrimaryButton(title: "Update Tag",
                      isLoading: state.data,
                      onPressed: () => updateTagsViewModel.updateTags(context, widget.tag.id.toString()));
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
