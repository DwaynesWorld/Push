//
//  CategoryCardView.swift
//  Push
//
//  Created by Kyle Thompson on 10/17/20.
//
//

import SwiftUI

struct CategoryCardView: View {

  var name: String

  var body: some View {
    VStack(alignment: .leading, spacing: 16.0) {
      Image("test_image_2")
        .resizable().renderingMode(.original)
        .aspectRatio(contentMode: ContentMode.fill)
        .frame(height: 170)
        .cornerRadius(10)
        .shadow(radius: 10)

      VStack(alignment: .leading, spacing: 5.0) {
        Text(name)
          .foregroundColor(.primary)
          .font(.headline)
      }
    }
  }
}

struct CategoryCardView_Previews: PreviewProvider {
  static var previews: some View {
    return CategoryCardView(name: "Upper Body")
  }
}
