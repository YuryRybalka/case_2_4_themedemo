import 'package:case_2_4_themedemo/theme4case2_4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color : Color (0xFF777777), width : 2));
    /*const linkTexStyle = TextStyle(
        fontSize : 19,
        fontWeight: FontWeight.bold,
        color : Color(0xFF0079D0));*/
    return MaterialApp(
        theme: ThemeData(),
        home: Scaffold(
          //appBar: AppBar(title: Center(child: Text('Мой authpage test'))),
          body: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(children:  [
                  const SizedBox(height: 20),
                  Center(
                    child: Row(
                      children: const [
                        Icon(Icons.people_outlined, color: Colors.black,
                            size: 30),
                        Text(' Регистрация ') // стиль вставился сам <----------------------------
                      ],
                    ),
                  ),
                  const Divider(
                    height: 5,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                    color: Colors.pinkAccent,
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Text('Чтобы зарегистрироваться, введите',
                      style : Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const Center(
                    child: Text('свой номер телефона и почту',
                      style : TextStyle(fontSize : 16,color : Color(0xFFc4c4c4)),),
                  ),
                  const SizedBox(height: 20),
                  const Text('Телефон',
                    style : const TextStyle(fontSize : 16,color : Color.fromRGBO(0,0,0,0.6)),),
                  const SizedBox(height: 20),
                  TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[350],
                        enabledBorder: borderStyle,
                        focusedBorder: borderStyle,
                      )
                  ),
                  const SizedBox(height: 20),
                  const Text('Почта',
                    style : const TextStyle(fontSize : 16,color : Color.fromRGBO(0,0,0,0.6)),),
                  const SizedBox(height: 20),
                  TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[350],
                        enabledBorder: borderStyle,
                        focusedBorder: borderStyle,
                      )
                  ),
                  const SizedBox(height: 40),
                  const Text('Вам придет четырехзначный код,',
                    style : TextStyle(fontSize : 14,color : Color(0xFF39e639)),),
                  const Text('который будет вашим паролем',
                    style : TextStyle(fontSize : 14,color : Color(0xFF39e639)),),
                  const SizedBox(height: 20),
                  const Text('Изменить пароль можно будет в',
                    style : TextStyle(fontSize : 14,color : Color(0xFFc4c4c4)),),
                  const Text(' личном кабинете после регистрации',
                    style : TextStyle(fontSize : 14,color : Color(0xFFc4c4c4)),),
                  const SizedBox(height: 30),
                  SizedBox(
                      width: 252, height: 42,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Отправить код'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF0079D0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                        ) , // ElevatedButton.styleFrom
                      )
                  ),
                ],
                ),
              )
          ),
        )
    );
  } //build
} //MyApp