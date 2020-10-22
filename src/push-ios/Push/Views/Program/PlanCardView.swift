//
//  PlanCardView.swift
//  Push
//
//  Created by Kyle Thompson on 10/17/20.
//
//

import SwiftUI

struct ProgramCardView: View {
  let plan: Program

  var body: some View {
    VStack(alignment: .leading, spacing: 16.0) {
      Image("test_image")
        .resizable().renderingMode(.original)
        .aspectRatio(contentMode: .fill)
        .frame(width: 300, height: 170)
        .cornerRadius(10)
        .shadow(radius: 10)

      VStack(alignment: .leading, spacing: 5.0) {
        Text(plan.name)
          .foregroundColor(.primary)
          .font(.headline)

        Text(plan.description)
          .font(.subheadline)
          .foregroundColor(.secondary)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
          .frame(height: 40.0)
      }
    }
  }
}

struct PlanCardView_Previews: PreviewProvider {
  static var previews: some View {
    return ProgramCardView(plan: testProgram)
  }
}
