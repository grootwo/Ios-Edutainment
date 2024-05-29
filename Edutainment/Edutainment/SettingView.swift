//
//  SettingView.swift
//  Edutainment
//
//  Created by Groo on 5/28/24.
//

import SwiftUI

struct SettingView: View {
    @Binding var numberOfTable: Int
    @Binding var numberOfQuestion: Int
    let numbersOfQuestions = [5, 10, 20]
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text("Which multiplication tables do you want to practice?")
                .font(.title)
            Stepper("table of \(numberOfTable)", value: $numberOfTable, in: 1...9, step: 1)
                .font(.title3)
            Text("How many questions do you want to play?")
                .font(.title)
            Picker("number of questions", selection: $numberOfQuestion, content: {
                ForEach(numbersOfQuestions, id: \.self) { number in
                    Text(number, format: .number)
                }
            })
            .pickerStyle(.segmented)
        }
        .padding()
    }
}

#Preview {
    SettingView(numberOfTable: .constant(1), numberOfQuestion: .constant(1))
}
