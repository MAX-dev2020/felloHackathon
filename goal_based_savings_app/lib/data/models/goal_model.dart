import 'dart:convert';

class GoalModel {
  final int id;
  final String title;
  final double currentSavings;
  final double targetAmount;
  final double progress;
  final String deadline;
  final double nextMilestone;
  final String savingsPlan;
  final String image;

  GoalModel({
    required this.id,
    required this.title,
    required this.currentSavings,
    required this.targetAmount,
    required this.progress,
    required this.deadline,
    required this.nextMilestone,
    required this.savingsPlan,
    required this.image,
  });

  factory GoalModel.fromJson(Map<String, dynamic> json) {
    return GoalModel(
      id: json['id'],
      title: json['title'],
      currentSavings: json['currentSavings'].toDouble(),
      targetAmount: json['targetAmount'].toDouble(),
      progress: json['progress'].toDouble(),
      deadline: json['deadline'],
      nextMilestone: json['nextMilestone'].toDouble(),
      savingsPlan: json['savingsPlan'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'currentSavings': currentSavings,
      'targetAmount': targetAmount,
      'progress': progress,
      'deadline': deadline,
      'nextMilestone': nextMilestone,
      'savingsPlan': savingsPlan,
      'image': image,
    };
  }
}
