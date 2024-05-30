//
//  ResultView.swift
//  Edutainment
//
//  Created by Groo on 5/28/24.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "popcorn.fill")
                .resizable()
                .frame(width: 100, height: 130)
                .foregroundColor(.yellow)
            Text("Yay! you made 3 popcorns!")
                .font(.title2)
            Spacer()
            Text("Do you want to pop again?")
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Label("Go to pop!", systemImage: "frying.pan.fill")
                    .font(.title)
            })
            .buttonStyle(.bordered)
            .tint(.yellow)
            
        }
        .padding()
    }
}

#Preview {
    ResultView()
}
