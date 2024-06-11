
import 'package:bloc_newsapp/data/repositories/post_repo.dart';

import 'auth_repo.dart';
import 'tags_repo.dart';

class Repository{
  final TagsRepo tagsRepo;
  final AuthRepo authRepo;
  final PostRepo postRepo;
  Repository({required this.tagsRepo,required this.authRepo,required this.postRepo});
}