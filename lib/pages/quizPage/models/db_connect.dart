import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:driver_course_app/pages/data/data.dart';
import 'questionModel.dart';

class DBconnect {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/question2.json";

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class DBconnect1 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/question.json";

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class DBconnect2 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/question3.json";

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class DBconnect3 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/question4.json";

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class DBconnect4 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/question5.json";

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class DBconnect5 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/question6.json";

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class DBconnect6 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/question7.json";

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class DBconnect7 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/question8.json";

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class DBconnect8 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/question9.json";

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class DBconnect9 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/question10.json";

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class IDBconnect {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/image0.json";
  static List<String> qUrlList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
    ];
  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class IDBconnect1 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/image1.json";
  
  
  static List<String> qUrlList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
    ];

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class IDBconnect2 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/image2.json";


  static List<String> qUrlList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
    ];

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class IDBconnect3 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/image3.json";


  static List<String> qUrlList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
    ];

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class IDBconnect4 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/image4.json";



  static List<String> qUrlList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
    ];

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class IDBconnect5 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/image5.json";


  static List<String> qUrlList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
    ];

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class IDBconnect6 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/image6.json";

  
  static List<String> qUrlList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
    ];



  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class IDBconnect7 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/image7.json";


  static List<String> qUrlList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
    ];

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class IDBconnect8 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/image8.json";



  static List<String> qUrlList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
    ];

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class IDBconnect9 {
  //static String currentQuiz = urlList[QuizData.quizID];
  static String currentQuiz =
      "https://incideniz-a3f8a-default-rtdb.europe-west1.firebasedatabase.app/image9.json";



  static List<String> qUrlList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
    ];

  static var url = Uri.parse(currentQuiz);

  Future<void> updateQuestions() async {
    url = Uri.parse(currentQuiz);
    List<Question> updatedQuestions = await fetchQuestions();
    // Burada, güncellenen soruları veritabanına kaydetmek için gerekli işlemleri yapabilirsiniz.
  }

  Future<List<Question>> fetchQuestions() async {
    return await http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            options: Map.castFrom(value['options']),
            title: value['title']);
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}
