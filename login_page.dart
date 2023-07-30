import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body(){
    return SingleChildScrollView( // scroll de tela
       child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,     
        child: Column(
             mainAxisAlignment: MainAxisAlignment.center,             
             children: [
              // Image(image: AssetImage(assetName))
               Container(
                width: 120,
                height: 120,
                child: Image.asset('assets/images/jana_face.png'),
               ),
               Container(
                height:60,
               ),
               Card(
                child: Padding(
                  padding: EdgeInsets.only(left: 12, right: 12,top: 20, bottom: 20),
                  child: Column(
                    
                  children: [
                          TextField(
                            onChanged: (value) => email = value,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(), 
                              labelText: 'E-mail'),                   
                          ),
                          Container(
                            height: 30,),
                          TextField(
                            onChanged: (value) => password = value,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(), 
                              labelText: 'Password',
                              ),                   
                          ),
                            ],                  
                   ),
                )
               ),
               Container(
                height: 50,
               ),
               MaterialButton(
                  onPressed: (){
                    if(email=='paulorey@gmail.com' && password=='123'){
                   /*   Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage())
                      );*/
                   /*   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));*/
                   Navigator.pushReplacementNamed(context, '/home');
                    }
                  }, 
                  child: Text('Entrar'), 
                  textTheme: ButtonTextTheme.normal, 
                  color: Colors.grey, 
               ),
               
               
             ],
        )
      )
      );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Stack( //empilhamento de widget
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(255, 245, 188, 206), //cor de fundo
            //child: Image.asset('assets/images/nome_imagem.jpg',fit: BoxFit.cover), para usar imagem de fundo
          ),
          _body(),
        ]
      )
    );
  }
}