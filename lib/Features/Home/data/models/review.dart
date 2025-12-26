import 'package:hive/hive.dart';
part 'review.g.dart';

@HiveType(typeId: 3)
class Review {
  @HiveField(0)
  int? rating;
  @HiveField(1)
  String? comment;
  @HiveField(2)
  DateTime? date;
  @HiveField(3)
  String? reviewerName;
  @HiveField(4)
  String? reviewerEmail;

  Review({
    this.rating,
    this.comment,
    this.date,
    this.reviewerName,
    this.reviewerEmail,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
    rating: json['rating'] as int?,
    comment: json['comment'] as String?,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    reviewerName: json['reviewerName'] as String?,
    reviewerEmail: json['reviewerEmail'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'rating': rating,
    'comment': comment,
    'date': date?.toIso8601String(),
    'reviewerName': reviewerName,
    'reviewerEmail': reviewerEmail,
  };
}
