//
//  ContentView.swift
//  Questionapp
//
//  Created by Angela on 6/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                NavigationLink(destination: TriviaQuestionView(category: "Coding Trivia", questions: codingTriviaQuestions)) {
                    Text("Coding Trivia")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: TriviaQuestionView(category: "Fun Facts", questions: funFactsQuestions)) {
                    Text("Fun Facts")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: TriviaQuestionView(category: "General Knowledge", questions: generalKnowledgeQuestions)) {
                    Text("General Knowledge")
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Trivia Game")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
