
part of 'tags_imports.dart';


class TagsViewModel{

  final Repository repository;

  TagsViewModel({required this.repository});

  final VelocityBloc<TagsModel> tagsModelBloc = VelocityBloc<TagsModel>(TagsModel());


  fetchAllTags()async {
    var tagsData=await repository.tagsRepo.getAllTags();

    if(tagsData.status == 1){
      tagsModelBloc.onUpdateData(tagsData);
    }
  }


  getAddTags(context)async{
    var addedData =await AutoRouter.of(context).push<TagsModel>(const AddTagsRoute());
    if(addedData != null){
      tagsModelBloc.onUpdateData(addedData);
    }

  }


getUpdateTags(context, Tag tags)async{
    var updatedData =await AutoRouter.of(context).push<TagsModel>(UpdateTagsRoute(tag: tags));
    if(updatedData != null){
      tagsModelBloc.onUpdateData(updatedData);
    }

  }


  deleteTag(context,String id,int index)async{
    var data = await repository.tagsRepo.deleteTag(id);
    if(data.status == 1){
      VxToast.show(context, msg: data.message.toString());
      tagsModelBloc.state.data.tags!.removeAt(index);
      tagsModelBloc.onUpdateData(tagsModelBloc.state.data);
    }
  }

}