//
//  QuestionView.swift
//  Edutainment
//
//  Created by Groo on 5/28/24.
//

import SwiftUI

struct QuestionView: View {
    @Binding var currentView: Int
    @Binding var numberOfQuestions: Int
    @State var textInput = 0
    @State var currentQuestion = 1
    @State var score = 0  
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    var body: some View {
        VStack(alignment: .center) {
            Text("3 X 3 = ?")
                .font(.title)
            TextField("answer", value: $textInput, formatter: QuestionView.numberFormatter)
                .font(.title)
                .background()
                .frame(maxWidth: 100)
        }
    }
}

#Preview {
    QuestionView(currentView: .constant(1), numberOfQuestions: .constant(10))
}
