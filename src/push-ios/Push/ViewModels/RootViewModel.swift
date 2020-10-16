//
//  RootViewModel.swift
//  Push
//
//  Created by Kyle Thompson on 10/16/20.
//  
//

import Foundation
import Combine
import Resolver

class RootViewModel: ObservableObject {
//  @Injected private var authenticationService: AuthenticationService
//  @Injected private var userRepository: UserRepository
  @Published var isLoggedIn: Bool = false
  @Published var userInitialized: Bool = false
  @Published var onboardingComplete: Bool = false
  private var cancellables = Set<AnyCancellable>()
  
  init() {
//    authenticationService.$isLoggedIn
//      .compactMap { $0 }
//      .assign(to: \.isLoggedIn, on: self)
//      .store(in: &cancellables)
//    
//    userRepository.$user
//      .compactMap { $0?.onboardingCompleted }
//      .assign(to: \.onboardingComplete, on: self)
//      .store(in: &cancellables)
//    
//    userRepository.$user
//      .compactMap { $0 == nil ? false : true }
//      .assign(to: \.userInitialized, on: self)
//      .store(in: &cancellables)
  }
  
  func signout() {
//    authenticationService.signOut { _ in }
  }
  
  deinit {
    cancellables.forEach { $0.cancel() }
    cancellables.removeAll()
  }
}
