part of 'add_categories_imports.dart';


@RoutePage<CategoriesModel>()
class AddCategories extends StatefulWidget {
  const AddCategories({Key? key}) : super(key: key);

  @override
  State<AddCategories> createState() => _AddCategoriesState();
}

class _AddCategoriesState extends State<AddCategories> {
  late AddCategoriesViewModel addCategoriesViewModel;

  @override
  void initState() {
    addCategoriesViewModel = AddCategoriesViewModel(repository: context.read<Repository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Add Categories".text.white.size(16.sp).make(),
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
                controller: addCategoriesViewModel.textEditingController,
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
                controller: addCategoriesViewModel.textEditingController,
                borderType: VxTextFieldBorderType.roundLine,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                borderColor: MyColors.primaryColor,
              ),
              const Spacer(),
              BlocBuilder<VelocityBloc, VelocityState>(
                bloc: addCategoriesViewModel.isLoadingBloc,
                builder: (context, state) {
                  return PrimaryButton(title: "Add Tag",
                      isLoading: state.data,
                      onPressed: () => addCategoriesViewModel.addNewCategories(context));
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
