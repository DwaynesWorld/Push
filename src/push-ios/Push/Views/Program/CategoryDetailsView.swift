//
//  CategoryDetailsView.swift
//  Push
//
//  Created by Kyle Thompson on 10/22/20.
//
//

import SwiftUI

struct CategoryDetailsView: View {
  let category: Category
  let programs: [Program] = [
    testProgram, testProgram, testProgram, testProgram, testProgram, testProgram,
  ]

  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      Image("test_image_2")
        .resizable()
        .frame(height: 300)
        .aspectRatio(contentMode: .fit)

      VStack(alignment: .leading) {
        Text(category.displayName)
          .font(.title)
          .fontWeight(.medium)

        HStack {
          Text("4 Workouts")
            .font(.caption)
            .foregroundColor(.secondary)
          Text("-")
            .font(.caption)
            .foregroundColor(.secondary)
          Text("Beginner & Intermediate")
            .font(.caption)
            .foregroundColor(.secondary)
          Spacer()
        }.padding(.top, 1)

        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum fringilla fringilla. Donec fringilla porttitor dignissim. Mauris et elit porttitor, varius quam sed, fermentum nibh. Fusce egestas luctus arcu sit amet tempor. Morbi ac nulla id tortor malesuada pretium nec in quam. Donec non ex nisi. "
        )
        .font(.callout)
        .padding(.top, 15)
      }.padding()

      VStack {
        ForEach(programs, id: \.id) { p in
          NavigationLink(destination: ProgramDetailsView(program: p)) {
            ProgramListItemView(program: p)
          }
        }
      }
    }.ignoresSafeArea(SafeAreaRegions.container, edges: .top)
  }
}

struct CategoryDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryDetailsView(category: .basicEquipment)
  }
}
