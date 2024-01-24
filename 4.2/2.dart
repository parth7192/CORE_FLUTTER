import 'dart:io';

class Train {
  int trainNumber;
  String trainName;
  String source;
  String destination;
  String trainTime;

  Train(
      {required this.trainNumber,
      required this.trainName,
      required this.source,
      required this.destination,
      required this.trainTime});
}

class RailwayReservationSystem {
  List<Train> trains = [];

  void addTrainRecord() {
    stdout.write("Enter Train Number: ");
    int trainNumber = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Train Name: ");
    String trainName = stdin.readLineSync()!;

    stdout.write("Enter Source: ");
    String source = stdin.readLineSync()!;

    stdout.write("Enter Destination: ");
    String destination = stdin.readLineSync()!;

    stdout.write("Enter Train Time: ");
    String trainTime = stdin.readLineSync()!;

    Train newTrain = Train(
      trainNumber: trainNumber,
      trainName: trainName,
      source: source,
      destination: destination,
      trainTime: trainTime,
    );

    trains.add(newTrain);

    print("Train Record added successfully!");
  }

  void displayRecordByTrainNumber() {
    stdout.write("Enter Train Number to search: ");
    int searchTrainNumber = int.parse(stdin.readLineSync()!);

    Train? foundTrain = trains.firstWhere
        (train) => train.trainNumber == searchTrainNumber,
        orElse: () => null;

    if (foundTrain != null) {
      print("\nTrain Record Found:");
      print("Train Number: ${foundTrain.trainNumber}");
      print("Train Name: ${foundTrain.trainName}");
      print("Source: ${foundTrain.source}");
      print("Destination: ${foundTrain.destination}");
      print("Train Time: ${foundTrain.trainTime}");
    } else {
      print("\nTrain Record not found for Train Number: $searchTrainNumber");
    }
  }

  void displayAllRecords() {
    print("\nAll Train Records:");
    for (Train train in trains) {
      print("Train Number: ${train.trainNumber}");
      print("Train Name: ${train.trainName}");
      print("Source: ${train.source}");
      print("Destination: ${train.destination}");
      print("Train Time: ${train.trainTime}");
      print("-------------------------");
    }
  }
}

void main() {
  RailwayReservationSystem reservationSystem = RailwayReservationSystem();

  for (int i = 0; i < 3; i++) {
    reservationSystem.addTrainRecord();
  }

  reservationSystem.displayAllRecords();

  reservationSystem.displayRecordByTrainNumber();
}
