import 'package:replicate/replicate.dart';


void main() async {
  // Setting your API key.
  Replicate.apiKey = 'r8_d9FND9DDT2lFwtQ6QzWFRwrYQvGlwen45j1cB';

  // Setting showLogs to true will print all the requests and responses to the console.
  Replicate.showLogs = true;

  // Creating a prediction.
  Prediction firstPrediction = await Replicate.instance.predictions.create(
    version: "50adaf2d3ad20a6f911a8a9e3ccf777b263b8596fbd2c8fc26e8888f8a0edbb5",
    input: {
      "image": "https://i.stack.imgur.com/KEtWo.png",
    },
  );

  print(firstPrediction.createdAt);

  // Waiting for 2 seconds.
  await Future.delayed(Duration(seconds: 2), () {
    print("Waited 2 seconds.");
  });

  // if the prediction id created successfully, you should be able to check it in your replicate dashboard.
  //
  // you can get the prediction with it's id.
  Prediction firstPredictionWithId = await Replicate.instance.predictions.get(
    id: firstPrediction.id,
  );

  // printing the status of the prediction, at this point.
  print(firstPredictionWithId);
}
