import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quotelist extends StatelessWidget {
  String name;
  int count;
  var quotes = new List();

  Quotelist(String name) {
    this.name = name;
    if (name == "Alone") {
      quotes = [
        "A dream you dream alone is only a dream. A dream you dream together is reality.",
        "The soul that sees beauty may sometimes walk alone.",
        "Loneliness expresses the pain of being alone and solitude expresses the glory of being alone.",
        "I'm learning a lot about myself being alone, and doing what I'm doing.",
        "Walking with a friend in the dark is better than walking alone in the light.",
        "And in the end all I learned was how to be strong… Alone.",
        "It’s easy to stand with the crowd it takes courage to stand alone",
        "I used to think the worst thing in life was to end up all alone, it’s not. The worst thing in life is to end up with people that make you feel all alone.",
        "Sometimes, you need to be alone. Not to be lonely, but to enjoy your free time being yourself.",
        "Standing alone is better than standing with people who don’t value you.",
        "Standing alone doesn’t mean I am alone. It means I’m strong enough to handle things all by myself.",
        "You may feel lost and alone. But God knows where you are and has a good plan for your future.",
        "As for now I’m gonna hear the saddest songs and sit alone and wonder.",
        "Sometimes life is too hard to be alone and sometimes life is too good to be alone.",
        "Nobody knows about the little melt downs I have when I’m alone. They only know about the smiles and laughs I show them.",
        "Never say you are alone for you are not alone, your God and your genius is within.",
        "I’m falling apart right in front of your eyes but you don’t even see me.",
        "It takes a strong person to remain single in a world that is accustomed to settling with anything just to say they have something.",
        "No, I may not be physically alone. But mentally there is no one insight."
      ];
    } else if (name == "Motivation") {
      quotes = [
        "If you want to achieve greatness stop asking for permission.",
        "Things work out best for those who make the best of how things work out.",
        "To live a creative life, we must lose our fear of being wrong.",
        "If you are not willing to risk the usual you will have to settle for the ordinary.",
        "Trust because you are willing to accept the risk, not because it’s safe or certain.",
        "All our dreams can come true if we have the courage to pursue them.",
        "Good things come to people who wait, but better things come to those who go out and get them.",
        "If you do what you always did, you will get what you always got.",
        "Success is walking from failure to failure with no loss of enthusiasm.",
        "Just when the caterpillar thought the world was ending, he turned into a butterfly.",
        "Successful entrepreneurs are givers and not takers of positive energy.",
        "Opportunities don’t happen, you create them.",
        "Try not to become a person of success, but rather try to become a person of value.",
        "Great minds discuss ideas; average minds discuss events; small minds discuss people.",
        " I have not failed. I’ve just found 10,000 ways that won’t work.",
        " If you don’t value your time, neither will others. Stop giving away your time and talents- start charging for it.",
        "A successful man is one who can lay a firm foundation with the bricks others have thrown at him.",
        "No one can make you feel inferior without your consent.",
        "The whole secret of a successful life is to find out what is one’s destiny to do, and then do it.",
        " If you’re going through hell keep going.",
        "Don’t raise your voice, improve your argument.",
        "The meaning of life is to find your gift. The purpose of life is to give it away."
      ];
    }else if(name=="Birthday"){
     quotes=["I wish the Happiest of Happy Birthdays to someone fantastic and practically perfect in every way! You are one-in-a-million!","My life gave me a perfect gift that I was always dreaming of, a niece like you. Take this wonderful cake and enjoy the day.","The relationship between you and me is not about the smiles and laughs. You are such a wonderful niece that my heart wants to fly. Best bday.","Roses are red. Violets are blue. Sugar is sweet… but not as sweet as you! Happy Birthday my sweet niece! Love from your favorite Aunt.","A niece is someone as beautiful, talented, and intelligent as her favorite aunt—me of course! Happy Birthday to my favorite niece!","Happy Birthday to one lucky girl! You are so lucky to have me as your aunt! I’m also pretty lucky to have you as my niece!","I’m sending you birthday wishes and kisses! You are one incredible, beautiful girl! You are fabulous — it takes one to know one, right?!","Statistics show that nieces are way better than nephews! I’m so glad we got the better end of the bargain! Happy Birthday!","Your birthday it is. Happy it will be. Best Wishes from the greatest Jedi that ever lived, Master Yoda.","You are beauty, brains, and a real humdinger! Happy Birthday to you, my niece! Love from your favorite ‘fun’ uncle!","Happy Birthday to the girl who has the only birthday I can remember without being notified by Facebook!","You’re almost as beautiful in your super filtered selfies as you are in real life!","“Aunthood is the best neighborhood to live in, with a niece like you, sweetie. Happy birthday.","We are the best aunt-niece team this side of the shopping mall. Let’s shop until we drop. Happy birthday.","Nieces, poodles, warm apple strudel — these are a few of my favorite things! Happy Birthday, my favorite niece!","I’m sending positive energy your way to help you celebrate your big day! May you have the hap-hap-happiest birthday in the history of birthdays!","You are the sweetest child I’ve ever met and I’m so glad I get to call you my niece! Best Wishes to you on your special day!","Who is the awesomest niece around?! You are! Happy Birthday to my awesome-sauce niece!","Happy Birthday dear niece. Sending you tons of wishes and blessing on your special day.","A niece is someone as beautiful, talented, and intelligent as her favorite aunt—me of course! Happy Birthday to my favorite niece!","Best Wishes to a wonderful girl with the most amazing aunt! You sure are one lucky girl! I hope your birthday is as wonderful as we are!"];
    }
    else if(name=="Love"){
      quotes=["In love Never say “Sorry”!..","When I think about U…I don’t feel so alone….","If you were thinking about someone ,while Studying you’re definitely in LUV…","Luv is that ,which can never explained.","Love is That Which can not see the Religious, Caste, Rich, Poor in life..","Thinking of U is easy, I do it every day in life. Missing you is the heartache that never goes away…??","My love for you is a journey_ that starts at forever and ends at never in Life…..","I lost my Heart Can Any body See…??","Love is like a Air ..We can’t see it but! we can feel it..","Love is that which, cannot see the poorness…","Love in Life ,Make the life beautiful..","Love looks not with the eyes, but with the Heart.","In life I need only U!","My “Heart” is always Ur!","Love is like the sun which coming out from the clouds and warming Ur soul.","True Love = No doubts + No jealousy + No worries then life is good."];
    }
    count = quotes.length;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name,
          style: TextStyle(
            fontFamily: 'Myfonts',
            fontSize: 25,
          ),),
          backgroundColor: Color(0xFFEAA4A4),
        ),
        body: getListview(),
    backgroundColor: Color(0xFFFEDBD0),);

  }

  Widget getListview() {
    return ListView.builder(

        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
              margin: EdgeInsets.all(5.0),
              color: Colors.green[800],
              child: Padding(
                padding: EdgeInsets.all(5.0),
                  child: Text(
                quotes[position],
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                fontFamily: 'Myfonts',

                fontSize: 18),
              )));
        });
  }
}
