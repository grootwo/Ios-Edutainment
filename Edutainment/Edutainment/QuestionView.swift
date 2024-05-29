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
    @State var currentQuestion = 1
    @State var score = 0  
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text("\(numberOfTable) X \(numberToMultiply)")
            HStack {
                Text("=")
                TextField("answer", value: $textInput, formatter: QuestionView.numberFormatter)
                    .background()
                    .frame(maxWidth: 50)
                    .keyboardType(.numberPad)
            }
        }
        .font(.title)
    }
}

#Preview {
    QuestionView(currentView: .constant(1), numberOfQuestion: .constant(10), numberOfTable: .constant(9))
}
