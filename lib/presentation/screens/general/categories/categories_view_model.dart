part of 'categories_imports.dart';


class CategoriesViewModel{

  final Repository repository;

  CategoriesViewModel({required this.repository});

  final VelocityBloc<CategoriesModel> categoriesModelBloc = VelocityBloc<CategoriesModel>(CategoriesModel());


  fetchAllCategories()async {
    var catData=await repository.categoriesRepo.getAllCategories();

    if(catData.status == 1){
      categoriesModelBloc.onUpdateData(catData);
    }
  }


  getAddCategories(context)async{
    var addedData =await AutoRouter.of(context).push<CategoriesModel>(AddCategoriesRoute());
    if(addedData != null){
      categoriesModelBloc.onUpdateData(addedData);
    }

  }


  getUpdateCategories(context, Category categories)async{
    var updatedData =await AutoRouter.of(context).push<CategoriesModel>(UpdateCategoriesRoute(category: categories));
    if(updatedData != null){
      categoriesModelBloc.onUpdateData(updatedData);
    }

  }


  deleteCategories(context,String id,int index)async{
    var data = await repository.categoriesRepo.deleteCategories(id);
    if(data.status == 1){
      VxToast.show(context, msg: data.message.toString());
      categoriesModelBloc.state.data.categories!.removeAt(index);
      categoriesModelBloc.onUpdateData(categoriesModelBloc.state.data);
    }
  }

}