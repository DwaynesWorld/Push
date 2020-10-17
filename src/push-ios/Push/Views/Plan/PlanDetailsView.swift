//
//  PlanDetailsView.swift
//  Push
//
//  Created by Kyle Thompson on 10/17/20.
//
//

import SwiftUI

struct PlanDetailsView: View {
  let plan: Plan

  var body: some View {
    Text("Plan Details!")
  }
}

struct PlanDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    PlanDetailsView(plan: testPlan)
  }
}
