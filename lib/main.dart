import 'package:flutter/material.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveCheck(),
    );
  }
}


class ResponsiveCheck extends StatefulWidget {
  const ResponsiveCheck({super.key});

  @override
  State<ResponsiveCheck> createState() => _ResponsiveCheckState();
}

class _ResponsiveCheckState extends State<ResponsiveCheck> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isTablet||ResponsiveBreakpoints.of(context).isMobile||ResponsiveBreakpoints.of(context).isPhone==true?MyHomePageTablet():MyHomePage();

  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      backgroundColor: Colors.grey.shade100,
      body:SingleChildScrollView(
        child: Wrap(
          alignment: WrapAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff051726)  ,
                      boxShadow: [BoxShadow(color:  Color(0xff81FFD9),offset: Offset(4,4),blurRadius: 10)]
                    ),
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/branding_logo.png',fit: BoxFit.contain,),
                      )),
                  Row(
                    children: [
                      Text('Bize Ulaşın',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),


                    ],
                  )
                ],
              ),
            ),
          SizedBox(
            width: double.infinity,
            height: 500,
            child:  Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SizedBox(
                    width: 500,
                    height: 700,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(TextSpan(text: 'İstediğin Yere ',children: [
                            WidgetSpan(child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff051726) ,
                                  borderRadius: BorderRadius.circular(30)),
                              child:const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Şarjın Bitmeden ',style: TextStyle(color: Color(0xff81FFD9),fontSize: 60,)),
                              ) ,
                            )),
                            TextSpan(text: 'Ulaş'),
                          ]),style: TextStyle(fontSize: 60,),textAlign: TextAlign.left,),

                          Padding(
                            padding: const EdgeInsets.only(top:36.0),
                            child: ElevatedButton(onPressed: (){}, child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Hemen Dene!',style: TextStyle(fontSize: 20,color: Colors.white),),
                            ),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xff81FFD9))  ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 300,
                      height: 700,
                      child: Image.asset('assets/images/logo.png'))
                ],
              ),
            ),
          ),
          Center(child: Text('Nereye gideceğini söyle en uygun rotayı oluşturalım!',style: TextStyle(fontSize: 30,),)),
            Padding(
              padding: const EdgeInsets.only(left: 24,top:150,right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 700,
                      width: 350,
                      child: Image.asset('assets/images/phone_mockup.png')),
                  const Padding(
                    padding: EdgeInsets.only(left: 34.0),
                    child: SizedBox(
                      width: 450,
                      height: 700,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Detaylı şarj istasyonu yol haritası!',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),),
                          Padding(
                            padding: EdgeInsets.only(top:50.0),
                            child: Text('Rotanda uğraman gereken istasyonları ve diğer detayları senin yerine bulalım! ',style: TextStyle(fontSize: 30,),),
                          ),

                      ],),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:200.0,bottom: 70),
              child: SizedBox(
                height: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset('assets/images/game.png')) ,
                        SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset('assets/images/app-store.png')) ,
                      ],
                    ),
                    SizedBox(
                        width: 500,
                        child: Text('Sana Uygun Platformu Seçip Erişebilirsin!',style: TextStyle(fontSize: 40,),)),
                  ],
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top:100.0,left: 50,right: 50,bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff051726)  ,
                              boxShadow: [BoxShadow(color:  Color(0xff81FFD9),offset: Offset(4,4),blurRadius: 10)]
                          ),
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/images/branding_logo.png',fit: BoxFit.contain,),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top:16.0),
                        child: Text('Aklına takılan herhangi bir şey için bize ulaşabilirsin! ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200)),
                      ),
                    ],
                  ),
                  Text('chargerrouteinfo@chargerroute.com',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
                ],
              ),
            ),


          ],),
      ),
    );
  }
}


class MyHomePageTablet extends StatefulWidget {
  const MyHomePageTablet({super.key});
  @override
  State<MyHomePageTablet> createState() => _MyHomePageTabletState();
}

class _MyHomePageTabletState extends State<MyHomePageTablet> {

  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      backgroundColor: Colors.grey.shade100,
      body:SingleChildScrollView(
        child: Wrap(
          alignment: WrapAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff051726)  ,
                          boxShadow: [BoxShadow(color:  Color(0xff81FFD9),offset: Offset(4,4),blurRadius: 10)]
                      ),
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/branding_logo.png',fit: BoxFit.contain,),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top:24.0),
                    child: const Row(
                      children: [
                        Text('Bize Ulaşın',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),

                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 1000,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.black12,offset: Offset(4,4),blurRadius: 10)]
                    ),
                    width: double.infinity,
                    height: 400,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text.rich(TextSpan(text: 'İstediğin Yere ',children: [
                            WidgetSpan(child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff051726) ,
                                  borderRadius: BorderRadius.circular(30)),
                              child:const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Şarjın Bitmeden ',style: TextStyle(color: Color(0xff81FFD9),fontSize: 40,)),
                              ) ,
                            )),
                            TextSpan(text: '\nUlaş'),
                          ]),style: TextStyle(fontSize: 40,),textAlign: TextAlign.center,),
                          Padding(
                            padding: const EdgeInsets.only(top:36.0),
                            child: ElevatedButton(onPressed: (){}, child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Hemen Dene!',style: TextStyle(fontSize: 20,color: Colors.white),),
                            ),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xff81FFD9))  ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Colors.black12,offset: Offset(4,4),blurRadius: 10)]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Column(children: [
                        SizedBox(
                            width: 300,
                            height:
                            300,
                            child: Image.asset('assets/images/logo.png')),
                        const Padding(
                          padding: EdgeInsets.only(left:24.0,top: 24),
                          child: Center(child: Text('Nereye gideceğini söyle en uygun rotayı oluşturalım!',style: TextStyle(fontSize: 25,),)),
                        ),

                      ],),
                    ),)

                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12,offset: Offset(4,4),blurRadius: 10)]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24,top:150,right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 500,
                        width: double.infinity,
                        child: Image.asset('assets/images/phone_mockup.png')),
                    const Padding(
                      padding: EdgeInsets.only(left: 34.0),
                      child: SizedBox(
                        width: 450,
                        height: 400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Detaylı şarj istasyonu yol haritası!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                            Padding(
                              padding: EdgeInsets.only(top:50.0),
                              child: Text('Rotanda uğraman gereken istasyonları ve diğer detayları senin yerine bulalım! ',style: TextStyle(fontSize: 20,),),
                            ),

                          ],),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:200.0,bottom: 70),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.black12,offset: Offset(4,4),blurRadius: 10)]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:200.0,bottom: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 300,
                          height: 100,
                          child: Image.asset('assets/images/game.png')) ,
                      Padding(
                        padding: const EdgeInsets.only(top:100.0),
                        child: SizedBox(
                            width: 300,
                            height: 100,
                            child: Image.asset('assets/images/app-store.png')),
                      ) ,
                      const Padding(
                        padding: const EdgeInsets.only(top:100.0),
                        child: SizedBox(
                            width: 300,
                            child: Text('Sana Uygun Platformu Seçip Erişebilirsin!',style: TextStyle(fontSize: 30,),textAlign: TextAlign.center,)),
                      ),

                    ],
                  ),
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top:100.0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.black12,offset: Offset(4,4),blurRadius: 10)]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40,left: 50,right: 50,bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff051726)  ,
                              boxShadow: [BoxShadow(color:  Color(0xff81FFD9),offset: Offset(4,4),blurRadius: 10)]
                          ),
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/images/branding_logo.png',fit: BoxFit.contain,),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top:16.0),
                        child: Text('Aklına takılan herhangi bir şey için bize ulaşabilirsin! ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200)),
                      ),
                      Text('chargerrouteinfo@chargerroute.com',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)

                    ],
                  ),
                ),
              ),
            ),


          ],),
      ),
    );
  }
}
