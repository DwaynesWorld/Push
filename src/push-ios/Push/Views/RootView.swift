//
//  RootView.swift
//  Push
//
//  Created by Kyle Thompson on 10/16/20.
//
//

import SwiftUI

struct RootView: View {
  @ObservedObject var m = RootViewModel()

  var body: some View {
    switch (m.isLoggedIn, m.userInitialized, m.onboardingComplete) {
    case (false, _, _): LoginView()
    case (true, true, true): MainView()
    case (true, true, false): TourView()
    default: LoadingView()
    }
  }
}

struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
