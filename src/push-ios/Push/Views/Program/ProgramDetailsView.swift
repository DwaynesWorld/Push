//
//  ProgramDetailsView.swift
//  Push
//
//  Created by Kyle Thompson on 10/17/20.
//
//

import SwiftUI

struct ProgramDetailsView: View {
  let program: Program

  var body: some View {
    Text("Program Details!")
  }
}

struct ProgramDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    ProgramDetailsView(program: testProgram)
  }
}
