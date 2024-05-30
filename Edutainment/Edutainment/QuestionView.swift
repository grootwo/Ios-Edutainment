//
//  QuestionView.swift
//  Edutainment
//
//  Created by Groo on 5/28/24.
//

import SwiftUI

struct QuestionView: View {
    @Binding var currentView: Int
    @Binding var numberOfQuestion: Int
    @Binding var numberOfTable: Int
    @State var numberToMultiply = Int.random(in: 1...9)
    @State var textInput = 0
    @State var currentQuestion = 1.0
    @State var score = 0
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            ProgressView(value: currentQuestion, total: Double(numberOfQuestion)) {
                HStack {
                    Text("\(Int(currentQuestion)) / \(numberOfQuestion)")
                    Spacer()
                    Text("Score: \(score)")
                }
            }
                .font(.title3)
                .tint(.yellow)
            Spacer()
            Text("\(numberOfTable) X \(numberToMultiply)")
            HStack {
                Text("=")
                TextField("answer", value: $textInput, formatter: QuestionView.numberFormatter)
                    .background()
                    .frame(maxWidth: 50)
                    .keyboardType(.numberPad)
            }
            Spacer()
            Button(action: {
                
            }, label: {
                Label("Pop to next", systemImage: "fireworks")
            })
            .tint(.yellow)
            .buttonStyle(.bordered)
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    QuestionView(currentView: .constant(1), numberOfQuestion: .constant(10), numberOfTable: .constant(9))
}
