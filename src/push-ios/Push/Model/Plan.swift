//
//  Workout.swift
//  Push
//
//  Created by Kyle Thompson on 10/17/20.
//
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Foundation

struct Plan: Codable, Identifiable {
  @DocumentID var id: String?
  @ServerTimestamp var createdTime: Timestamp?

  var planId: String
  var name: String
  var description: String
  var thumbnailUrl: String
  var accessLevel: AccessLevel
  var planLevel: PlanLevel
  var schedule: Schedule
}

struct Schedule: Codable {
  var weeks: [[Workout]]
}

struct Workout: Codable {
  var phases: [Phase]
}

struct Phase: Codable {
  var name: String
  var description: String
  var rounds: Int
  var exercises: [String]
}

enum AccessLevel: Int, Codable {
  case free
  case premium
}

enum PlanLevel: Int, Codable {
  case beginner
  case intermediate
  case advanced
}

let testPhase = Phase(name: "Warm-up", description: "", rounds: 1, exercises: [])
let testWorkout = Workout(phases: [testPhase])
let testSchedule = Schedule(weeks: [[testWorkout]])

let testPlan = Plan(
  id: UUID().uuidString,
  createdTime: Timestamp(),
  planId: UUID().uuidString,
  name: "Core Strength Yoga",
  description: "Build your core strength front-to-back in this quick, fun and "
    + "challenging practice. Focus on strength and balance in standing poses "
    + "and keep controlled during the rotational movements.",
  thumbnailUrl: "",
  accessLevel: .free,
  planLevel: .beginner,
  schedule: testSchedule)
