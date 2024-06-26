//
//  ResultView.swift .swift
//  Questionapp
//
//  Created by Angela on 6/25/24.
//

import SwiftUI

struct ResultView: View {
    var message: String
    
    var body: some View {
        VStack {
            Text("Result:")
                .font(.headline)
                .padding(.top)
            
            Text(message)
                .font(.largeTitle)
                .padding()
            
            NavigationLink(destination: ContentView()) {
                Text("Back to Home")
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("Result")
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(message: "Sample Message")
    }
}
