//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ross Phillips on 3/14/22.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			Button {
				print("Button was tapped")
			} label: {
				Text("Tap me!")
					.padding()
					.foregroundColor(.white)
					.background(.red)
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
