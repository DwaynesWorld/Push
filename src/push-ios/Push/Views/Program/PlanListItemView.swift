//
//  PlanListItemView.swift
//  Push
//
//  Created by Kyle Thompson on 10/22/20.
//
//

import SwiftUI

struct ProgramListItemView: View {
  let plan: Program

  var body: some View {
    HStack(alignment: .center, spacing: 16.0) {
      Image("test_image")
        .resizable().renderingMode(.original)
        .aspectRatio(contentMode: .fill)
        .frame(width: 75, height: 75)
        .cornerRadius(10)
        .shadow(radius: 2)

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
    }.padding()
  }
}

struct PlanListItemView_Previews: PreviewProvider {
  static var previews: some View {
    ProgramListItemView(plan: testProgram)
  }
}
