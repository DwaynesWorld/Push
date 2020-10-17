//
//  LottieView.swift
//  Push
//
//  Created by Kyle Thompson on 10/16/20.
//

import Lottie
import SwiftUI

struct LottieView: UIViewRepresentable {
  typealias UIViewType = UIView
  var filename: String

  func makeUIView(context: Context) -> UIView {
    let view = UIView(frame: .zero)
    let animationView = makeAnimationView()

    view.addSubview(animationView)

    NSLayoutConstraint.activate([
      animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
      animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
    ])

    return view
  }

  func makeAnimationView() -> AnimationView {
    let view = AnimationView(frame: .zero)
    view.animation = Animation.named(filename, subdirectory: nil)
    view.animationSpeed = 1.5
    view.contentMode = .scaleAspectFit
    view.loopMode = .loop
    view.backgroundBehavior = .pauseAndRestore
    view.play()

    view.setContentCompressionResistancePriority(.fittingSizeLevel, for: .horizontal)
    view.translatesAutoresizingMaskIntoConstraints = false
    view.isHidden = false
    return view
  }

  func updateUIView(_ uiView: UIView, context: Context) {
    // TODO
  }
}
