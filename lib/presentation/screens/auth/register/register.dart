part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                decoration: const BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      55.h.heightBox,
                      MyStrings.register.text
                          .size(18.sp)
                          .color(MyColors.primaryColor)
                          .fontWeight(FontWeight.w700)
                          .makeCentered(),
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
                        obscureText: true,
                        borderRadius: 10,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderColor: MyColors.primaryColor,
                        prefixIcon: Icon(Icons.lock),
                        isPassword: true,
                      ),
                      20.h.heightBox,
                      "Confirm Password".text.make(),
                      8.h.heightBox,
                      const VxTextField(
                        fillColor: Colors.transparent,
                        borderRadius: 10,
                        obscureText: true,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderColor: MyColors.primaryColor,
                        prefixIcon: Icon(Icons.lock),
                        isPassword: true,
                      ),
                      40.h.heightBox,
                      PrimaryButton(title: MyStrings.register, onPressed: () {}),
                      20.h.heightBox,
                      "Already have an account ?"
                          .richText
                          .semiBold
                          .color(MyColors.primaryColor)
                          .size(14.sp)
                          .withTextSpanChildren([
                            TextSpan(
                            text: " Login",
                            recognizer: TapGestureRecognizer()..onTap=()=>AutoRouter.of(context).push(LoginRoute()),
                            style:const TextStyle(
                              fontWeight: FontWeight.w700,
                            )),
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
