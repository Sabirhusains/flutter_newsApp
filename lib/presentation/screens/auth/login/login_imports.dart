import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/velocity_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/constants/my_assets.dart';
import '../../../../core/constants/my_colors.dart';
import '../../../../core/constants/my_strings.dart';
import '../../../../data/repositories/repository.dart';
import '../../../../utils/utils.dart';
import '../../../../utils/validations.dart';
import '../../../common_widgets/common_widget_imports.dart';
import '../../../routers/router_import.gr.dart';

part 'login.dart';
part 'login_view_model.dart';