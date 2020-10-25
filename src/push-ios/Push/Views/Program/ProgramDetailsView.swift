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
  let phases: [Phase] = [testPhase, testPhase, testPhase, testPhase, testPhase, testPhase]

  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      ZStack {
        Image("test_image")
          .resizable()
          .frame(height: 300)
          .aspectRatio(contentMode: .fit)
          .overlay(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.40))

        VStack {
          Spacer()
          HStack {
            Text(program.name)
              .font(.title)
              .fontWeight(.medium)
              .foregroundColor(.white)
            Spacer()
          }

          Button {

          } label: {
            HStack {
              Text("Start Prorgam")
                .fontWeight(.bold)
                .font(.body)
                .frame(width: 130, height: 10, alignment: .center)
                .foregroundColor(.white)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 1))
            }

            Spacer()
          }
        }.padding()
      }

      VStack(alignment: .leading) {
        HStack {
          DetailSection(icon: "lineweight", label: "4 Phases")
            .padding(.trailing, 40)
          DetailSection(icon: "calendar", label: "6 weeks, 3x week")
            .padding(.trailing, 20)
        }.padding()

        HStack {
          DetailSection(icon: "scalemass.fill", label: "Beginner")
            .padding(.trailing, 40)
          DetailSection(icon: "clock", label: "30min - 1hr workouts")
            .padding(.trailing, 20)
        }.padding()
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum fringilla fringilla. Donec fringilla porttitor dignissim. Mauris et elit porttitor, varius quam sed, fermentum nibh. Fusce egestas luctus arcu sit amet tempor. Morbi ac nulla id tortor malesuada pretium nec in quam. Donec non ex nisi. "
        )
        .font(.callout)
        .foregroundColor(.secondary)
        .padding()

        Text("Required Equipment:")
          .font(.headline)
          .fontWeight(.bold)
        Text("Dumbells (bodyweight options) and a mat")
          .font(.body)
          .foregroundColor(.secondary)
          .padding(.top, 1)
      }.padding()

      Divider()
        .padding(.horizontal, 15)
        .padding(.vertical, 10)

      VStack(alignment: .leading) {
        HStack {
          Text("Phases")
            .font(.title)
          Spacer()
        }

        ForEach(phases, id: \.id) { p in
          PhaseSection()
        }
      }.padding()
    }.ignoresSafeArea(SafeAreaRegions.container, edges: .top)
  }
}

struct DetailSection: View {
  var icon: String
  var label: String

  var body: some View {
    HStack {
      Image(systemName: icon)
        .font(.headline)
        .padding(.trailing, 3)
      Text(label)
        .font(.subheadline)
        .fontWeight(.semibold)
        .foregroundColor(.primary)
    }

  }
}

struct PhaseSection: View {
  var body: some View {
    VStack(alignment: .leading) {
      Text("Phase 1")
        .font(.subheadline)
        .fontWeight(.semibold)
        .foregroundColor(.primary)
      Text("Light Your Own Fire")
        .font(.headline)
        .fontWeight(.semibold)
        .foregroundColor(.primary)
    }.padding(.vertical)
  }
}

struct ProgramDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    ProgramDetailsView(program: testProgram)
  }
}
