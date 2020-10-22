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
      ZStack {
        Image("test_image_2")
          .resizable().renderingMode(.original)
          .aspectRatio(contentMode: ContentMode.fill)
          .frame(height: 170)
          .cornerRadius(10)
          .shadow(radius: 10)

        VStack(alignment: .leading) {
          Spacer()
          HStack {
            Text(name)
              .foregroundColor(.white)
              .font(.headline)
              .fontWeight(.bold)
              .padding(10)
            Spacer()
          }.backgroundGradient()
        }.frame(height: 170)
      }
    }
  }
}

struct CategoryCardView_Previews: PreviewProvider {
  static var previews: some View {
    return CategoryCardView(name: "Upper Body")
  }
}
