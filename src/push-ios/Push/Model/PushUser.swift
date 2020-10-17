//
//  PushUser.swift
//  Push
//
//  Created by Kyle Thompson on 10/17/20.
//
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Foundation

struct PushUser: Codable, Identifiable {
  @DocumentID var id: String?
  @ServerTimestamp var createdTime: Timestamp?

  var userId: String
  var email: String
  var firstName: String
  var lastName: String
  var avatar: String?
  var onboardingCompleted: Bool = false

  init(userId: String, email: String, firstName: String, lastName: String) {
    self.userId = userId
    self.email = email
    self.firstName = firstName
    self.lastName = lastName
  }
}
