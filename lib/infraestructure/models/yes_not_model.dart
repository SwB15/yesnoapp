import '../../domain/entities/message.dart';

class YesNotModel {
  final String answer;
  final bool forced;
  final String image;

  YesNotModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNotModel.fromJsonMap(Map<String, dynamic> json) => YesNotModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessageEntity() => Message(
        text: answer == 'yes' ? 'Si' : 'No',
        fromWho: FromWho.hers,
        imageURL: image,
      );
}
