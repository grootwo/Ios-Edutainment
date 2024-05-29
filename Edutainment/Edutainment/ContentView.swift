//
//  ContentView.swift
//  Edutainment
//
//  Created by Groo on 5/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentView = 0
    @State private var numberOfTable = 1
    @State var numberOfQuestion = 10
    var body: some View {
        if currentView == 0 {
            SettingView(currentView: $currentView, numberOfTable: $numberOfTable, numberOfQuestion: $numberOfQuestion)
        } else if currentView == 1 {
            QuestionView(currentView: $currentView, numberOfQuestions: $numberOfQuestion)
        } else {
            ResultView()
        }
    }
}

#Preview {
    ContentView()
}
