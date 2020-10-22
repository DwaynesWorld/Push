//
//  PlanDetailsView.swift
//  Push
//
//  Created by Kyle Thompson on 10/17/20.
//
//

import SwiftUI

struct ProgramDetailsView: View {
  let plan: Program

  var body: some View {
    Text("Plan Details!")
  }
}

struct PlanDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    ProgramDetailsView(plan: testProgram)
  }
}
