import 'package:auto_route/auto_route.dart';
import 'package:bloc_newsapp/core/constants/my_assets.dart';
import 'package:bloc_newsapp/core/constants/my_colors.dart';
import 'package:bloc_newsapp/main.dart';
import 'package:bloc_newsapp/presentation/routers/router_import.gr.dart';
import 'package:bloc_newsapp/presentation/screens/general/profile/profile_model.dart';
import 'package:bloc_newsapp/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../data/repositories/repository.dart';

part 'profile.dart';
part 'profile_view_model.dart';