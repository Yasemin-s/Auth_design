import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth1/components/my_button.dart';
import 'package:flutter_auth1/components/my_textfield.dart';
import 'package:flutter_auth1/components/square_tile.dart';

class LoginPage extends StatefulWidget{ //ctrl + . ile statefull a donusturduk

  final Function()? onTap;  //uye ol kismina link verebilmek iicn

  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //metin kontrolu
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  //kullanici giris butonu icin metod
  void signUserIn() async{

    // yukleniyor kismi
    showDialog(context: context, 
    builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
      );
    } ,
    );


    //tekrar girisi dene kismi


 try{ //email yanlis olma durumu
     await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text,
      );
       //yukeleniyor kismi dudurma
        Navigator.pop(context);
 } 
 
 on FirebaseAuthException catch(e){ //hata varsa yakalayalim
 //yukeleniyor kismi dudurma
    Navigator.pop(context);
 
    //hata mesaji
    showErrorMessage(e.code);
   }
   
  }
  //hata mesaji
  void showErrorMessage(String message){
    showDialog(
      context: context,
      builder: (context){
        return  AlertDialog(
          backgroundColor: Colors.red,
          title: Text(
            message,
            style: const TextStyle(
              color: Colors.white
            ),
            ),);
      });
  }

 


   


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView( //tasma sorunu icin
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const SizedBox(height: 50,), //final da, derleme ve calisma zamanindan sonra degerler bilinecek. const da ise derleme zamaninda olusturulacak.
          
             const Icon(
                Icons.lock,
                size: 100,),
          
             const SizedBox(height: 50,),
          
          
          
              //karsilama girisi
              Text("Tekrar Hoş Geldiniz",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
            
             const SizedBox(height: 25,),
          
          
              //email girisi
              MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
              ),
          
              const SizedBox(height: 25,),
          
              //sifre girisi
              MyTextField(
                controller: passwordController,
                hintText: "Şifre",
                obscureText: true,
              ),
          
              const SizedBox(height: 25,),
              //sifremi unuttum
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Şifremi unuttum?",
                      style: TextStyle(
                      color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
          
              //giris yap butonu
              const SizedBox(height: 25,),
              MyButton(
                text: "Giriş Yap",
               onTap: signUserIn,
              ),
          
              const SizedBox(height: 50,),
          
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
              
              
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[100],
                      ),
                    ),
              
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Yada giriş yap",
                      style: TextStyle(
                        color: Colors.grey[100],
                      ),),
                    ),
              
                     Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[100],
                      ),
                    ),
              
                  ],
                ),
              ),  //bolucu, cizgi ceker
          
              const SizedBox(height: 50,),
              //google ve apple ile giris kisimlari
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
               
                  SquareFile(imagePath: "lib/images_flutter_auth1/google.png"),
                  SizedBox(width: 25,),
                  SquareFile(imagePath: "lib/images_flutter_auth1/apple.png"),
          
          
                ],
              ),
          
             const SizedBox(height: 50,),
              //uye ol kismi
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Üye değil misiniz?",
                  style: TextStyle(
                    color: Colors.grey[200],
                  ),),
                  const SizedBox(width: 4,),
                  GestureDetector(  //hareketlendirmek icin, tiklama ozelligi iciin
                    onTap: widget.onTap,
                    child: const Text("Üye ol",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                       ),
                     ),
                  ),
                ],)
          
          
          
          
            ]),
          ),
          
        ),
      ),
    );
  }
}