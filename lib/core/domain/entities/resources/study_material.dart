import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';

/// Study materials store user-specific notes and synonyms for a given subject.
/// The records are created as soon as the user enters any study information.
class StudyMaterial {
  const StudyMaterial({
    required this.createdAt,
    required this.hidden,
    required this.meaningNote,
    required this.meaningSynonyms,
    required this.readingNote,
    required this.subjectId,
    required this.subjectType,
  });

  /// Timestamp when the study material was created.
  final DateTime createdAt;

  /// Indicates if the associated subject has been hidden, preventing it from appearing in lessons or reviews.
  final bool hidden;

  /// Free form note related to the meaning(s) of the associated subject.
  final String? meaningNote;

  /// Synonyms for the meaning of the subject. These are used as additional correct answers during reviews.
  final List<String> meaningSynonyms;

  /// Free form note related to the reading(s) of the associated subject.
  final String? readingNote;

  /// Unique identifier of the associated subject.
  final int subjectId;

  /// The type of the associated subject, one of: kanji, radical, or vocabulary.
  final SubjectType subjectType;
}
