part of 'add_tags_imports.dart';

class AddTagsViewModel{

  final Repository repository;

  AddTagsViewModel({required this.repository});

  final TextEditingController textEditingController= TextEditingController();

  final VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);

  addNewTags(context)async{
    isLoadingBloc.onUpdateData(true);
    var data = await repository.tagsRepo.addNewTag(textEditingController.text, textEditingController.text.toLowerCase().replaceAll(" ", "-"));
    if(data.status == 1){
      VxToast.show(context, msg: data.message.toString());
      var newData = await repository.tagsRepo.getAllTags();
      isLoadingBloc.onUpdateData(false);
      AutoRouter.of(context).pop<TagsModel>(newData);
    }

  }

}