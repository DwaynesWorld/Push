//
//  MainView.swift
//  Push
//
//  Created by Kyle Thompson on 10/16/20.
//
//

import SwiftUI

struct MainView: View {
  let programs: [Program] = [testProgram, testProgram]

  var body: some View {
    NavigationView {
      VStack(alignment: .leading) {
        Text("Hello, Kyle")
          .font(.body)

        Text("Get Started by choosing a workout program!")
          .font(.title)
          .bold()
          .padding(.top, 1)

        ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: .leading) {
            Text("Recommended for you")
              .font(.headline)
              .fontWeight(.bold)
              .foregroundColor(Color.primary)

            ScrollView(.horizontal, showsIndicators: false) {
              HStack(alignment: .top) {
                ForEach(programs, id: \.id) { p in
                  NavigationLink(destination: ProgramDetailsView(program: p)) {
                    ProgramCardView(program: p)
                      .frame(width: 300.0)
                      .padding(.trailing, 20)
                  }
                }
              }
            }
          }
          .padding(.top, 15)

          VStack(alignment: .leading) {
            Text("Browse Categories")
              .font(.headline)
              .fontWeight(.bold)
              .foregroundColor(Color.primary)

            VStack {
              ForEach(Category.allCases, id: \.self) { c in
                NavigationLink(destination: CategoryDetailsView(category: c)) {
                  CategoryCardView(name: c.displayName)
                    .padding(.bottom, 10)
                }
              }
            }
          }
          .padding(.top, 25)
        }
      }
      .padding()
      .navigationBarHidden(true)
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
