//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ross Phillips on 3/14/22.
//

import SwiftUI

struct ContentView: View {
	@State private var showingScore = false
	@State private var questionCounter = 1
	@State private var showingResults = false
	@State private var scoreTitle = ""
	@State private var countries = allCountries.shuffled()
	@State private var correctAnswer = Int.random(in: 0...2)
	@State private var score = 0
	
	static let allCountries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
	
	var body: some View {
		ZStack{
			RadialGradient(stops: [
				.init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
				.init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
			], center: .top, startRadius: 200, endRadius: 400)
			.ignoresSafeArea()
			.ignoresSafeArea()
			VStack{
				Spacer()
				Text("Guess the Flag")
					.font(.largeTitle.weight(.bold))
					.foregroundColor(.white)
				VStack(spacing: 15){
					VStack{
						Text("Tap the flag of")
							.foregroundStyle(.secondary)
							.font(.subheadline.weight(.heavy))
						Text(countries[correctAnswer])
						
						.font(.largeTitle.weight(.semibold))				}
					
					ForEach(0..<3){ number in
						Button{
							flagTapped(number)
						} label: {
							Image(countries[number])
								.renderingMode(.original)
								.clipShape(Capsule())
								.shadow(radius: 5)
						}
					}
				}
				.frame(maxWidth: .infinity)
				.padding(.vertical, 20)
				.background(.regularMaterial)
				.clipShape(RoundedRectangle(cornerRadius: 20))
				
				Spacer()
				Spacer()
				Text("Score: \(score)")
					.foregroundColor(.white)
					.font(.title.bold())
				Spacer()
				
			}
			.padding()
			
		}
		.alert(scoreTitle, isPresented: $showingScore) {
			Button("Continue", action: askQuestion)
		} message: {
			Text("Your score is \(score)")
		}
		.alert("Game over!", isPresented: $showingResults) {
			Button("Start again", action:newGame )
		} message: {
			Text("Your final score is \(score)")
		}
	}
	func flagTapped(_ number: Int) {
		if number == correctAnswer {
			scoreTitle = "Correct"
			score += 1
		} else {
			let needsThe = ["UK", "US"]
			let theirAnswer = (countries[number])
			
			if needsThe.contains(theirAnswer){
				scoreTitle = "Wrong That's the flag of the \(theirAnswer)"
			} else {
				scoreTitle = "Wrong That's the flag of \(theirAnswer)"
			}
			
			if score > 0{
				score -= 1
			}
			
		}
		
		if questionCounter == 8 {
			showingResults = true
		} else {
			showingScore = true
		}
	}
	func askQuestion() {
		countries.remove(at: correctAnswer)
		countries.shuffle()
		correctAnswer = Int.random(in: 0...2)
		questionCounter += 1
	}
	func newGame(){
		questionCounter = 0
		score = 0
		countries = Self.allCountries
		askQuestion()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
