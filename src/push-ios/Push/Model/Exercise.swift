//
//  Exercise.swift
//  Push
//
//  Created by Kyle Thompson on 10/17/20.
//
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Foundation

struct Exercise: Codable, Identifiable {
  @DocumentID var id: String?
  @ServerTimestamp var createdTime: Timestamp?

  var name: String
  var description: String
  var thumbnailUrl: String
  var count: Int
  var units: ExerciseUnit
}

enum ExerciseUnit: Int, Codable {
  case reps
  case distance
}
