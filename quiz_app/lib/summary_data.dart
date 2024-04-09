import 'package:flutter/material.dart';

class SummaryData extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const SummaryData({required this.summaryData, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: summaryData.length,
        itemBuilder: (context, index) {
          var data = summaryData[index];
          bool isCorrect = data["userAnswer"] == data["correctAnswer"];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: isCorrect ? Colors.green : Colors.red,
                  child: Text(
                    ((data["question_index"] as int) + 1).toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data["question"] as String,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text("Your answer: ${data["userAnswer"]}",
                          style: TextStyle(fontSize: 16, color: Colors.cyan)),
                      Text("Correct answer: ${data["correctAnswer"]}",
                          style: TextStyle(fontSize: 16, color: Colors.green)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
