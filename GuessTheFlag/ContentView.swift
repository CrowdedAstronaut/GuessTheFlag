//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ross Phillips on 3/14/22.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
		
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
