import 'package:flutter/material.dart';
import 'package:trenyolclone/service/googleSignIn.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Button/UyeOlTextButton.dart';
import 'Button/appleTextButton.dart';
import 'Button/faceIconButton.dart';
import 'Button/girisButton.dart';
import 'Button/googleIconButton.dart';
import 'Decoration/InputDe.dart';
import 'TextFiels/emailFields.dart';
import 'TextFiels/passFields.dart';
import 'TextGiris/textGiris.dart';
import 'TextGiris/textGirisUye.dart';
import 'const/ColorsItems .dart';
import 'const/ImageItems.dart';
import 'const/ProjectKeys.dart';
import 'const/ProjectPadding.dart';
import 'const/ProjectStyle.dart';
import 'launch_manager_trendyol.dart';

class TrendYou extends StatefulWidget {
  TrendYou({Key? key}) : super(key: key);

  @override
  State<TrendYou> createState() => _TrendYouState();
}

class _TrendYouState extends State<TrendYou>
    with TickerProviderStateMixin, LaunchMixinTrend {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsItems.orange,
        //Colors.orange[800]
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 5,
          child: Stack(children: [
            Positioned.fill(
              bottom: 50,
              child: Container(
                //padding: EdgeInsets.only(right: 20),
                padding: ProjectPadding.pagePaddingRight,
                color: ColorsItems.orange,
                //Colors.orange[800],

                child: Image.asset(
                  ImageItems().trend,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              //padding: EdgeInsets.only(top: 200),
              padding: ProjectPadding.pagePaddingTop,

              //burayı yeni yaptım

              child: Positioned(
                height: 150,
                bottom: 0,
                width: 500,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      //SizedBox(height: 60),
                      Padding(
                        /****** */
                        //padding: const EdgeInsets.all(10),
                        padding: ProjectPadding.pagePaddingAllq,

                        child: Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey))),
                          child: textEmail(),
                        ),
                      ),
                      Container(
                          //padding: EdgeInsets.all(10),
                          padding: ProjectPadding.pagePaddingAllq,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: ColorsItems.grey,
                            // Colors.grey
                          ))),
                          child: textPassword()),

                      const SizedBox(
                        height: 15,
                      ),

                      TextButton(
                        onPressed: () {
                          launchURL('https://www.trendyol.com/sifremiunuttum');
                        },
                        child: Text(
                          ProjectKeys().SifremiUnuttum,
                          style: const TextStyle(
                            color: ColorsItems.orange,
                          ),
                          //Text kısmının clean code yap ve sağa götür
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),
                      girisButton(),

                      textGiris(),

                      Row(children: [
                        appleTextButton(),
                        //2.kısım
                        //googleIconButton(),
                        googleButton(),

                        //3.kısmı
                        facebookIconButton(),
                      ]),

                      Row(children: [
                        Expanded(
                          child: Padding(
                            // padding: EdgeInsets.only(left: 60),
                            padding: ProjectPadding.pagePaddingLeft,

                            child: textGirisUye(),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            // padding: const EdgeInsets.only(left: 10),
                            padding: ProjectPadding.pagePaddingLeft10,
                            child: textUyeOl(),
                          ),
                        ),
                      ]),
                    ]),
                  ),
                ),
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
