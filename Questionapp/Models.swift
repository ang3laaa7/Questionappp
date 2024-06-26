//
//  Models.swift
//  Questionapp
//
//  Created by Angela on 6/25/24.
//

import Foundation

struct Question {
    let question: String
    let options: [String]
    let correctAnswer: String
}

// Sample questions
let codingTriviaQuestions = [
    Question(question: "What does HTTP stand for?", options: ["HyperText Transfer Protocol", "HighText Transfer Protocol", "HyperTransfer Text Protocol"], correctAnswer: "HyperText Transfer Protocol"),
    Question(question: "What does CSS stand for?", options: ["Cascading Style Sheets", "Creative Style Sheets", "Computer Style Sheets"], correctAnswer: "Cascading Style Sheets"),
    Question(question: "What does JSON stand for?", options: ["JavaScript Object Notation", "JavaScript Online Notation", "JavaScript Objective Notation"], correctAnswer: "JavaScript Object Notation")
]

let funFactsQuestions = [
    Question(question: "What is the tallest mountain in the world?", options: ["K2", "Kangchenjunga", "Mount Everest"], correctAnswer: "Mount Everest"),
    Question(question: "Which planet is known as the Red Planet?", options: ["Earth", "Mars", "Jupiter"], correctAnswer: "Mars"),
    Question(question: "What is the largest ocean on Earth?", options: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean"], correctAnswer: "Pacific Ocean")
]

let generalKnowledgeQuestions = [
    Question(question: "What is the capital of France?", options: ["Berlin", "Madrid", "Paris"], correctAnswer: "Paris"),
    Question(question: "Who wrote 'To Kill a Mockingbird'?", options: ["Harper Lee", "Mark Twain", "Jane Austen"], correctAnswer: "Harper Lee"),
    Question(question: "What is the hardest natural substance on Earth?", options: ["Gold", "Diamond", "Iron"], correctAnswer: "Diamond")
]

let sampleQuestions = [
    Question(question: "Sample Question?", options: ["Option 1", "Option 2", "Option 3"], correctAnswer: "Option 1")
]
