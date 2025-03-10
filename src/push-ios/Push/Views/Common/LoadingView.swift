//
//  LoadingView.swift
//  Push
//
//  Created by Kyle Thompson on 10/16/20.
//
//

import SwiftUI

struct LoadingView: View {
  var body: some View {
    VStack {
      LottieView(filename: "loading")
        .frame(width: 100, height: 100)
    }
  }
}

struct LoadingView_Previews: PreviewProvider {
  static var previews: some View {
    LoadingView()
  }
}
