part of 'login_imports.dart';


@RoutePage()

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              Container(
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
                      const VxTextField(
                        fillColor: Colors.transparent,
                        borderRadius: 10,
                        hint: "john@gmail.com",
                        borderType: VxTextFieldBorderType.roundLine,
                        borderColor: MyColors.primaryColor,
                        prefixIcon: Icon(Icons.email),
                      ),
                      20.h.heightBox,
                      "Password".text.make(),
                      8.h.heightBox,
                      const VxTextField(
                        fillColor: Colors.transparent,
                        borderRadius: 10,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderColor: MyColors.primaryColor,
                        prefixIcon: Icon(Icons.lock),
                        isPassword: true,
                      ),
                      40.h.heightBox,
                      PrimaryButton(title: MyStrings.login, onPressed: () => AutoRouter.of(context).push(GeneralRoute())),
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
            ],
          ),
        ),
      ),
    );
  }
}
