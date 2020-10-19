//
//  View+Extensions.swift
//  Push
//
//  Created by Kyle Thompson on 10/17/20.
//
//

import SwiftUI

extension View {
  public func fullSize(alignment: Alignment = .center) -> some View {
    self.frame(
      maxWidth: .infinity,
      maxHeight: .infinity,
      alignment: alignment
    )
  }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  public func foregroundGradient(_ colors: [Color]) -> some View {
    let gradient = LinearGradient(
      gradient: .init(colors: colors),
      startPoint: .topLeading,
      endPoint: .bottomTrailing
    )

    return self.overlay(gradient).mask(self)
  }

  public func backgroundGradient() -> some View {
    let black = Color(Color.RGBColorSpace.sRGB, red: 0, green: 0, blue: 0, opacity: 0.75)
    let gradient = LinearGradient(
      gradient: .init(colors: [.clear, black]),
      startPoint: .top,
      endPoint: .bottom
    )

    return self.background(gradient)
  }
}
