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
			HStack(spacing: 20) {
				Text("1")
				Text("2")
				Text("3")
			}
			HStack(spacing: 20) {
				Text("1")
				Text("2")
				Text("3")
			}
			HStack(spacing: 20) {
				Text("1")
				Text("2")
				Text("3")
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
