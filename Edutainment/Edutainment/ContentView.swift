//
//  ContentView.swift
//  Edutainment
//
//  Created by Groo on 5/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentView = 0
    var body: some View {
        if currentView == 0 {
            SettingView()
        } else if currentView == 1 {
            QuestionView()
        } else {
            ResultView()
        }
    }
}

#Preview {
    ContentView()
}
