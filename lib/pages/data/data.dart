import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserData {
  static String userName = "";
  static void changeName(String name) {
    UserData.userName = name;
  }

  static Map<String, int> userData = {
    "tsoru": 0,
    "dsoru": 0,
    "ysoru": 0,
    "bsınav": 0,
    "tvideo": 0,
  };
  static void updateTotalQ(int number, int num2) {
    UserData.userData.update("tsoru", (value) => value + number + num2);
  }

  static void updateTotalCQ(int number) {
    UserData.userData.update("dsoru", (value) => value + number);
  }

  static void updateTotaliCQ(int number) {
    UserData.userData.update("ysoru", (value) => value + number);
  }

  static void updateTotalQuiz() {
    UserData.userData.update("bsınav", (value) => value + 1);
  }

  static void increase(String key) {
    UserData.userData.update(key, (value) => value + 1);
  }

  static void decrease(String key) {
    UserData.userData.update(key, (value) => value - 1);
  }

  final List<String> tDataName = [
    "Ahmet",
    "Burcu",
    "Mehmet",
    "Sinem",
    "Şenol",
    "Caner",
    "Kutsal"
  ];

  final List<String> tDataSurname = [
    "Mavi",
    "Gri",
    "Mor",
    "Siyah",
    "Kırmızı",
    "Turuncu",
    "Beyaz"
  ];

  final List<String> tDataTel = [
    "321321",
    "123123",
    "876679",
    "213123",
    "213214",
    "987212",
    "002381"
  ];

  UserData();
}

class QuizData {
  final int correctQ;
  final int inCorrectQ;
  final String result;
  static int quizID = 0;
  static int newQuiz = 0;
  static void updateQuiz() {
    QuizData.quizID = QuizData.newQuiz;
  }

  static void reloadQuiz() {
    QuizData.quizID = 0;
  }

  QuizData(this.correctQ, this.inCorrectQ, this.result);
  static List<QuizData> quizList = [
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
  ];

  static List<QuizData> iQuizList = [
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
    QuizData(0, 0, ""),
  ];
  //data gönderimi için
  static List<bool> quizResult = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  // icon değişimi için
  static List<bool> quizIconResult = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  static bool? quizIcon;

  static int selectedQuiz = 0;

  static List<String> networkQuiz10 = [
    "https://github.com/holymolys/images/blob/main/image0/soru1.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru2.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru3.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru4.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru5.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru6.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru7.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru8.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru9.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru90.png?raw=true",
  ];
}

class ButtonData {
  static String buttonString = "Sonraki Soru";
}

class NetworkQuiz1 {
  static List<String> networkQuiz = [
    "https://github.com/holymolys/images/blob/main/image0/soru1.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru2.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru3.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru4.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru5.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru6.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru7.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru8.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru9.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru90.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru91.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru92.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru93.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru94.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image0/soru95.png?raw=true",
  ];
}

class NetworkQuiz2 {
  static List<String> networkQuiz = [
    "https://github.com/holymolys/images/blob/main/image1/soru1.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru2.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru3.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru4.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru5.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru6.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru7.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru8.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru9.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru90.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru91.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru92.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru93.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru94.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image1/soru95.png?raw=true",
  ];
}

class NetworkQuiz3 {
  static List<String> networkQuiz = [
    "https://github.com/holymolys/images/blob/main/image2/soru00.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru01.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru02.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru03.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru04.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru05.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru06.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru07.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru08.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru09.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru10.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru11.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru12.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru13.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image2/soru14.png?raw=true",
  ];
}

class NetworkQuiz4 {
  static List<String> networkQuiz = [
    "https://github.com/holymolys/images/blob/main/image3/soru00.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru01.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru02.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru03.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru04.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru05.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru06.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru07.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru08.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru09.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru10.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru11.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru12.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru13.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image3/soru14.png?raw=true",
  ];
}

class NetworkQuiz5 {
  static List<String> networkQuiz = [
    "https://github.com/holymolys/images/blob/main/image4/soru00.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru01.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru02.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru03.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru04.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru05.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru06.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru07.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru08.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru09.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru10.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru11.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru12.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru13.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image4/soru14.png?raw=true",
  ];
}

class NetworkQuiz6 {
  static List<String> networkQuiz = [
    "https://github.com/holymolys/images/blob/main/image5/soru00.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru01.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru02.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru03.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru04.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru05.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru06.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru07.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru08.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru09.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru10.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru11.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru12.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru13.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image5/soru14.png?raw=true",
  ];
}

class NetworkQuiz7 {
  static List<String> networkQuiz = [
    "https://github.com/holymolys/images1/blob/main/image6/soru00.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru01.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru02.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru03.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru04.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru05.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru06.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru07.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru08.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru09.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru10.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru11.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru12.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru13.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image6/soru14.png?raw=true",
  ];
}

class NetworkQuiz8 {
  static List<String> networkQuiz = [
    "https://github.com/holymolys/images1/blob/main/image07/soru00.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru01.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru02.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru03.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru04.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru05.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru06.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru07.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru08.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru09.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru10.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru11.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru12.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru13.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image07/soru14.png?raw=true",
  ];
}

class NetworkQuiz9 {
  static List<String> networkQuiz = [
    "https://github.com/holymolys/images1/blob/main/image8/soru00.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru01.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru02.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru03.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru04.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru05.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru06.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru07.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru08.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru09.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru10.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru11.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru12.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru13.png?raw=true",
    "https://github.com/holymolys/images1/blob/main/image8/soru14.png?raw=true",
  ];
}
class NetworkQuiz10 {
  static List<String> networkQuiz = [
    "https://github.com/holymolys/images/blob/main/image9/soru00.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru01.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru02.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru03.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru04.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru05.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru06.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru07.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru08.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru09.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru10.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru11.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru12.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru13.png?raw=true",
    "https://github.com/holymolys/images/blob/main/image9/soru14.png?raw=true"];
    
}
