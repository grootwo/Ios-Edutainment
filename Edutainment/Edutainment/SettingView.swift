//
//  SettingView.swift
//  Edutainment
//
//  Created by Groo on 5/28/24.
//

import SwiftUI

struct SettingView: View {
    @State var numberOfTable: Int
    @Binding var numberOfQuestion: Int
    var body: some View {
        Form {
                Text("Which multiplication tables do you want to practice?")
                    .font(.title)
                Stepper("table of \(numberOfTable)", value: $numberOfTable, in: 1...9, step: 1)
                    .font(.title3)
                Text("How many questions do you want to play?")
                    .font(.title)
                Picker("number of questions", selection: $numberOfQuestion, content: {
                    Text("5")
                    Text("10")
                    Text("20")
                })
                .pickerStyle(.segmented)
            }
    }
}

#Preview {
    SettingView(numberOfTable: 1, numberOfQuestion: .constant(1))
}
