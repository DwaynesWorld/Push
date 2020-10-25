//
//  Program.swift
//  Push
//
//  Created by Kyle Thompson on 10/17/20.
//
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Foundation

struct Program: Codable, Identifiable {
  @DocumentID var id: String?
  @ServerTimestamp var createdTime: Timestamp?

  var programId: String
  var name: String
  var description: String
  var thumbnailUrl: String
  var accessLevel: AccessLevel
  var programLevel: ProgramLevel
  var schedule: Schedule
  var categories: [Category]
}

struct Schedule: Codable {
  var weeks: [[Workout]]
}

struct Workout: Codable {
  var phases: [Phase]
}

struct Phase: Codable {
  var id: String
  var name: String
  var description: String
  var rounds: Int
  var exercises: [String]
}

enum AccessLevel: Int, Codable {
  case free
  case premium
}

enum ProgramLevel: Int, Codable {
  case beginner
  case intermediate
  case advanced
}

let testPhase = Phase(
  id: UUID().uuidString,
  name: "Warm-up",
  description: "",
  rounds: 1,
  exercises: [])

let testWorkout = Workout(phases: [testPhase])
let testSchedule = Schedule(weeks: [[testWorkout]])

let testProgram = Program(
  id: UUID().uuidString,
  createdTime: Timestamp(),
  programId: UUID().uuidString,
  name: "Core Strength Yoga",
  description: "Build your core strength front-to-back in this quick, fun and "
    + "challenging practice. Focus on strength and balance in standing poses "
    + "and keep controlled during the rotational movements.",
  thumbnailUrl: "",
  accessLevel: .free,
  programLevel: .beginner,
  schedule: testSchedule,
  categories: [])
