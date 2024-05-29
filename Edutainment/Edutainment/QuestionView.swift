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
    var body: some View {
        VStack {
            Text("3 X 3 = ?")
                .font(.title)
        }
    }
}

#Preview {
    QuestionView(currentView: .constant(1), numberOfQuestions: .constant(10))
}
