//
//  MainView.swift
//  Push
//
//  Created by Kyle Thompson on 10/16/20.
//
//

import SwiftUI

struct MainView: View {
  @State var selectedTab = 1
  let plans: [Plan] = [testPlan, testPlan]

  var body: some View {
    NavigationView {
      VStack(alignment: .leading) {
        Text("Hello, Kyle")
          .font(.body)

        Text("Get Started by choosing a workout plan!")
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
                ForEach(plans, id: \.id) { plan in
                  NavigationLink(destination: PlanDetailsView(plan: plan)) {
                    PlanCardView(plan: plan)
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
              ForEach(Category.allCases, id: \.self) { cat in
                NavigationLink(destination: PlanDetailsView(plan: testPlan)) {
                  CategoryCardView(name: cat.displayName)
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
