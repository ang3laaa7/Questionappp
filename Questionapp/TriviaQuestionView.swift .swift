//
//  TriviaQuestionView.swift .swift
//  Questionapp
//
//  Created by Angela on 6/25/24.
//

import SwiftUI

struct TriviaQuestionView: View {
    let category: String
    let questions: [Question]
    @State private var currentQuestionIndex = 0
    @State private var selectedOption: String? = nil
    @State private var isAnswerSelected = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text(questions[currentQuestionIndex].question)
                .font(.title)
                .padding()
            
            ForEach(questions[currentQuestionIndex].options, id: \.self) { option in
                Button(action: {
                    selectedOption = option
                    isAnswerSelected = true
                }) {
                    Text(option)
                        .padding()
                        .background(
                            selectedOption == option
                                ? (option == questions[currentQuestionIndex].correctAnswer ? Color.green : Color.red)
                                : Color.blue
                        )
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            
            if isAnswerSelected {
                NavigationLink(destination: ResultView(message: selectedOption == questions[currentQuestionIndex].correctAnswer ? "Correct! \(selectedOption!)" : "Wrong! The correct answer is \(questions[currentQuestionIndex].correctAnswer)")) {
                    Text("Next")
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .simultaneousGesture(TapGesture().onEnded {
                    // Reset for next question or end
                    if currentQuestionIndex < questions.count - 1 {
                        currentQuestionIndex += 1
                        selectedOption = nil
                        isAnswerSelected = false
                    }
                })
            }
        }
        .navigationTitle(category)
    }
}

struct TriviaQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaQuestionView(category: "Sample Category", questions: sampleQuestions)
    }
}

