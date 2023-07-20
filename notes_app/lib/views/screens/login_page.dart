import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final GlobalKey<FormState> SinginKey = GlobalKey<FormState>();
  final GlobalKey<FormState> SingUpKey = GlobalKey<FormState>();

  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();

  String? Email;
  String? Password;

  int intialIndex = 1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.lightBlueAccent,
                    Colors.blue,
                    Colors.blueAccent.shade700,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  IndexedStack(
                    index: intialIndex,
                    children: [
                      //todo: choose an option
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  " Messenger",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 38,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/login_vector.jpg",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: 240,
                            ),
                            Container(
                              height: 70,
                              width: 390,
                              child: Center(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 70,
                              width: 390,
                              child: Center(
                                child: Text(
                                  "SING UP?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //todo: signin
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            Text(
                              "Welcome Back",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Get.height * 0.033,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.height * 0.05,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.03,
                            ),
                            Form(
                              key: SinginKey,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.024,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.person_outline),
                                      SizedBox(
                                        width: Get.height * 0.01,
                                      ),
                                      Text(
                                        "Your Email/User Name",
                                        style: TextStyle(
                                          fontSize: Get.height * 0.015,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.015,
                                  ),
                                  TextFormField(
                                    onSaved: (newValue) {
                                      Email = newValue;
                                    },
                                    validator: (value) => (value!.isEmpty)
                                        ? "Enter a Email"
                                        : null,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      border: const OutlineInputBorder(),
                                      hintText: "Enter your Email",
                                    ),
                                    controller: EmailController,
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.025,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.lock_outline_rounded),
                                      SizedBox(
                                        width: Get.height * 0.01,
                                      ),
                                      Text(
                                        "Password",
                                        style: TextStyle(
                                          fontSize: Get.height * 0.015,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.015,
                                  ),
                                  TextFormField(
                                    controller: PasswordController,
                                    onSaved: (newValue) {
                                      Password = newValue;
                                    },
                                    validator: (value) => (value!.isEmpty)
                                        ? "Enter a Password"
                                        : null,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: const BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: const BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        border: const OutlineInputBorder(),
                                        hintText: "Enter Your Password",
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                        )),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.015,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        intialIndex = 2;
                                      });
                                    },
                                    child: const Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.03,
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.07,
                                    width: Get.width * 0.9,
                                    child: OutlinedButtonTheme(
                                      data: OutlinedButtonThemeData(
                                        style: ButtonStyle(
                                          shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blueAccent
                                                  .withOpacity(0.5),
                                              // spreadRadius: 1,
                                              blurRadius: 3,
                                              offset: const Offset(0, 5),
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: OutlinedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.blueAccent),
                                          ),
                                          onPressed: () async {
                                            if (SinginKey.currentState !=
                                                null) {
                                              if (SinginKey.currentState!
                                                  .validate()) {
                                                SinginKey.currentState!.save();
                                                Get.toNamed("home_page");
                                              }
                                            }
                                          },
                                          child: const Text(
                                            "Login",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.04,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: "Are you new user? ",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                      children: [
                                        TextSpan(
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              setState(() {
                                                intialIndex = 1;
                                              });
                                            },
                                          text: "Sing Up",
                                          style: const TextStyle(
                                            color: Colors.blueAccent,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () async {},
                                  child: const CircleAvatar(
                                    child: Icon(Icons.g_mobiledata),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {},
                                  child: const CircleAvatar(
                                    child: Icon(Icons.person_outline),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const CircleAvatar(
                                    child: Icon(Icons.facebook),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      intialIndex = 3;
                                    });
                                  },
                                  child: const CircleAvatar(
                                    child: Icon(Icons.verified),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //todo: signup
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      intialIndex = 0;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Get.height * 0.039,
                                  color: Colors.red),
                            ),
                            SizedBox(
                              height: Get.height * 0.03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Sing Up",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.height * 0.06,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.03,
                            ),
                            Form(
                              key: SingUpKey,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.024,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.person_outline),
                                      SizedBox(
                                        width: Get.height * 0.01,
                                      ),
                                      Text(
                                        "Enter Email here...",
                                        style: TextStyle(
                                          fontSize: Get.height * 0.015,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.015,
                                  ),
                                  TextFormField(
                                    onSaved: (newValue) {
                                      Email = newValue;
                                    },
                                    validator: (value) => (value!.isEmpty)
                                        ? "Enter a Email"
                                        : null,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                        ),
                                      ),
                                      border: const OutlineInputBorder(),
                                      hintText: "Enter Email...",
                                    ),
                                    controller: EmailController,
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.025,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.lock_outline_rounded),
                                      SizedBox(
                                        width: Get.height * 0.01,
                                      ),
                                      Text(
                                        "Create Password...",
                                        style: TextStyle(
                                          fontSize: Get.height * 0.015,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.015,
                                  ),
                                  TextFormField(
                                    controller: PasswordController,
                                    onSaved: (newValue) {
                                      Password = newValue;
                                    },
                                    validator: (value) => (value!.isEmpty)
                                        ? "Create a Password..."
                                        : null,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                        ),
                                      ),
                                      border: const OutlineInputBorder(),
                                      hintText: "Create Your Password...",
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.015,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        intialIndex = 2;
                                      });
                                    },
                                    child: const Text("Forgot Password?"),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.03,
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.07,
                                    width: Get.width * 0.9,
                                    child: OutlinedButtonTheme(
                                      data: OutlinedButtonThemeData(
                                        style: ButtonStyle(
                                          shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blueAccent
                                                  .withOpacity(0.5),
                                              // spreadRadius: 1,
                                              blurRadius: 3,
                                              offset: const Offset(0, 5),
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: OutlinedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.blueAccent),
                                          ),
                                          onPressed: () async {},
                                          child: const Text(
                                            "SIGN UP",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.04,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: "Already User? ",
                                      children: [
                                        TextSpan(
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              setState(() {
                                                intialIndex = 0;
                                              });
                                            },
                                          text: "Sing In",
                                          style: const TextStyle(
                                            color: Colors.blueAccent,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  //without try catch

                                  // onTap: () async{
                                  //   User? user = await FirebaseAuthHelper.firebaseAuthHelper.signInWithGoogle();
                                  //
                                  //   if (user != null) {
                                  //     Get.snackbar(
                                  //       'Successfully',
                                  //       "Login Successfully",
                                  //       backgroundColor: Colors.green,
                                  //       snackPosition: SnackPosition.BOTTOM,
                                  //       duration: const Duration(seconds: 2),
                                  //     );
                                  //     Get.offAllNamed('/HomePage');
                                  //   } else {
                                  //     Get.snackbar(
                                  //       'Failed',
                                  //       "Login Failed",
                                  //       backgroundColor: Colors.red,
                                  //       snackPosition: SnackPosition.BOTTOM,
                                  //       duration: const Duration(seconds: 2),
                                  //     );
                                  //   }
                                  //
                                  //
                                  // },

                                  //with try catch

                                  onTap: () async {
                                    // Map<String, dynamic> data =
                                    // await FirebaseAuthHelper
                                    //     .firebaseAuthHelper
                                    //     .signInWithGoogle();
                                    //
                                    // if (data['user'] != null) {
                                    //   Get.snackbar(
                                    //     'Successfully',
                                    //     "Login Successfully",
                                    //     backgroundColor: Colors.green,
                                    //     snackPosition: SnackPosition.BOTTOM,
                                    //     duration: const Duration(seconds: 2),
                                    //   );
                                    //   Get.offAllNamed('/HomePage',
                                    //       arguments: data['user']);
                                    // } else {
                                    //   Get.snackbar(
                                    //     'Failed',
                                    //     data['msg'],
                                    //     backgroundColor: Colors.red,
                                    //     snackPosition: SnackPosition.BOTTOM,
                                    //     duration: const Duration(seconds: 2),
                                    //   );
                                    // }
                                  },

                                  child: const CircleAvatar(
                                    child: Icon(Icons.g_mobiledata),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {},
                                  child: const CircleAvatar(
                                    child: Icon(Icons.person_outline),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const CircleAvatar(
                                    child: Icon(Icons.facebook),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      intialIndex = 3;
                                    });
                                  },
                                  child: const CircleAvatar(
                                    child: Icon(Icons.verified),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //todo: forget password
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Column(
                            children: [
                              Text("Forget Password...."),
                              IconButton(
                                onPressed: () {
                                  intialIndex = 0;
                                  setState(() {});
                                },
                                icon: Icon(Icons.home),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
