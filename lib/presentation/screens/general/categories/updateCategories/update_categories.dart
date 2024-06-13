part of 'update_categories_imports.dart';


@RoutePage<CategoriesModel>()
class UpdateCategories extends StatefulWidget {

  final Category category;
  const UpdateCategories({super.key,required this.category});

  @override
  State<UpdateCategories> createState() => _UpdateCategoriesState();
}

class _UpdateCategoriesState extends State<UpdateCategories> {
  late UpdateCategoriesViewModel updateCategoriesViewModel;

  @override
  void initState() {
    updateCategoriesViewModel = UpdateCategoriesViewModel(repository: context.read<Repository>());
    updateCategoriesViewModel.textEditingController.text = widget.category.title.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Update Categories".text.white.size(16.sp).make(),
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
                controller: updateCategoriesViewModel.textEditingController,
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
                controller: updateCategoriesViewModel.textEditingController,
                borderType: VxTextFieldBorderType.roundLine,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                borderColor: MyColors.primaryColor,
              ),
              const Spacer(),
              BlocBuilder<VelocityBloc, VelocityState>(
                bloc: updateCategoriesViewModel.isLoadingBloc,
                builder: (context, state) {
                  return PrimaryButton(title: "Update Tag",
                      isLoading: state.data,
                      onPressed: () => updateCategoriesViewModel.updateCategories(context, widget.category.id.toString()));
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
