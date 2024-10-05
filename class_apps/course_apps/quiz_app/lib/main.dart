import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",//key:value
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 1
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 2
    },
    {
      "question": "Who is the founder of SpaceX?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 3
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 0
    },
    {
      "question": "Who is the founder of Meta?",
      "options": ["Steve Jobs", "Mark Zuckerberg", "Lary Page", "Elon Musk"],
      "correctAnswer": 1
    },
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int score = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
     
      if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {

        return const WidgetStatePropertyAll(Colors.green);
      } 

      else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      }
    }
    return const WidgetStatePropertyAll(null); 
  }
  bool questionPage = true;

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      selectedAnswerIndex = -1;
      score = 0;
      questionPage = true; 
    });
  }


  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage == true) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 250, 250),
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(
                  width:120
                ),
                Text(
                  "Question: ${currentQuestionIndex + 1} / ${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Container(
              height: 60,
              width: 400,
             decoration: BoxDecoration(
             color: Color.fromARGB(255, 248, 252, 252), 
              boxShadow: [
                BoxShadow(
                color: Color.fromARGB(255, 22, 13, 100).withOpacity(0.5), 
                spreadRadius: 5, 
                blurRadius: 7, 
                offset: const Offset(0, 3), 
              ),
              ],
                  borderRadius: BorderRadius.circular(10), 
                ),
                        child:Center(
            child: Text(
              allQuestions[currentQuestionIndex]["question"],
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            )
                        ),
            const SizedBox(height: 50),
            // Option A
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    if (selectedAnswerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
                      score++; 
                    }
                    setState(() {});
                  }
                },
                child:Center(
                child: Text(
                  "A. ${allQuestions[currentQuestionIndex]["options"][0]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ),
            const SizedBox(height: 25),
            // Option B
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    if (selectedAnswerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
                      score++;
                    }
                    setState(() {});
                  }
                },
                child:Center(
                child: Text(
                  "B. ${allQuestions[currentQuestionIndex]["options"][1]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ),
            const SizedBox(height: 25),
            // Option C
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    if (selectedAnswerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
                      score++;
                    }
                    setState(() {});
                  }
                },
                child:Center(
                child: Text(
                  "C. ${allQuestions[currentQuestionIndex]["options"][2]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ),
            const SizedBox(height: 25),
            // Option D
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    if (selectedAnswerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
                      score++;
                    }
                    setState(() {});
                  }
                },
                child:Center(
                child: Text(
                  "D. ${allQuestions[currentQuestionIndex]["options"][3]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
              } else {
                questionPage = false;
              }
              selectedAnswerIndex = -1;
              setState(() {});
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold( 
         backgroundColor: Color.fromARGB(255, 230, 200, 200),
         appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://t3.ftcdn.net/jpg/02/91/43/48/360_F_291434847_sKFZXLHiJ6m7lGf6JI0zB7UniGsu5yzn.jpg',
                height: 300,
              ),
              const SizedBox(height: 30),
              const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Score: $score / ${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ), const SizedBox(height: 30),
              ElevatedButton(
                onPressed: resetQuiz, 
                child: const Text(
                  "Restart Quiz",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 190, 38, 38),
                  ),
                ),
                
              ),

            ],
          ),
        ),
      );
    }
  }
}