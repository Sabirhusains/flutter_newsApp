part of 'login_imports.dart';


@RoutePage()

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginViewModel loginViewModel;

  @override
  void initState() {
    loginViewModel= LoginViewModel(repository: context.read<Repository>());
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: FadedScaleAnimation(
          child: ListView(
            children: [
              Image.asset(
                MyAssets.appLogo,
                width: 200.w,
              ).centered(),
              100.h.heightBox,
              Form(
                key: loginViewModel.formKey,
                child: Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  decoration:const BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        55.h.heightBox,
                        MyStrings.login.text.size(18.sp).color(MyColors.primaryColor).fontWeight(FontWeight.w700).makeCentered(),
                        48.h.heightBox,
                        "Email".text.make(),
                        8.h.heightBox,
                        VxTextField(
                          fillColor: Colors.transparent,
                          borderRadius: 10,
                          hint: "john@gmail.com",
                          controller: loginViewModel.emailController,
                          borderType: VxTextFieldBorderType.roundLine,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          borderColor: MyColors.primaryColor,
                          prefixIcon: const Icon(Icons.email),
                          validator: (email){
                            if(email!.isEmpty){
                              return "Email is Empty";
                            }else if(!email.isValidEmail){
                              return "Invalid Email";
                            }
                            return null;
                          },
                        ),
                        20.h.heightBox,
                        "Password".text.make(),
                        8.h.heightBox,
                        VxTextField(
                          fillColor: Colors.transparent,
                          borderRadius: 10,
                          controller: loginViewModel.passwordController,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderColor: MyColors.primaryColor,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          prefixIcon: const Icon(Icons.lock),
                          isPassword: true,
                          validator: (password){
                            if(password!.isEmpty){
                              return "Password is Empty";
                            }
                            // else if(!password.isValidPassword){
                            //   return "Invalid Password";
                            // }
                            return null;
                          },
                        ),
                        40.h.heightBox,
                        PrimaryButton(title: MyStrings.login, onPressed: () {
                          if(loginViewModel.formKey.currentState!.validate()){
                            loginViewModel.login(context);
                          }

                        }),
                        20.h.heightBox,
                        "Dont have an account ?".richText.semiBold.color(MyColors.primaryColor).size(14.sp).withTextSpanChildren([
                          TextSpan(
                            text: " Register",
                            recognizer: TapGestureRecognizer()..onTap=()=>AutoRouter.of(context).push(RegisterRoute()),
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            )
                          ),
                        ]).makeCentered(),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
