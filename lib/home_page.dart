import 'package:flutter/material.dart';
import 'package:personal_assistent/feature_box.dart';
import 'package:personal_assistent/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(title: const Text("personal assistent"),
    centerTitle: true,
    leading: const Icon(Icons.menu),),

      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top: 5),
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/image/virtualAssistant.png'))
                ),
              )
            ],
          ),
        //  chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,vertical: 10
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30,
            ) ,
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor,
              ),
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft:Radius.zero,
              )
            ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text('Good Morning, what task can I do for you?',
                style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.mainFontColor,
                  fontSize: 25,
                ),),
              ),
            ),
          
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 22,

            ),
            child: const Text('here are a few features',
              style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.mainFontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),

            ),
          ),
        //  features list
          Column(
            children: [
              FeatureBox(color: Pallete.firstSuggestionBoxColor,
              headerText: 'ChatGPT',
              description: 'A smater way to stay organized and informed with ChatGPT',),

              FeatureBox(color: Pallete.secondSuggestionBoxColor,
                headerText: 'Dall-E',
                description: 'Get inspired and stay creative with your personal assistent powered by Dall-E',),

              FeatureBox(color: Pallete.thirdSuggestionBoxColor,
                headerText: 'Smart Voice Assistant',
                description: 'Get the best of Both worlds with a voice assistent powered by Dall-E and ChatGPT',),
            ],

          ),

        ],

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: Icon(Icons.mic),
      ),
      
    );
  }
}
