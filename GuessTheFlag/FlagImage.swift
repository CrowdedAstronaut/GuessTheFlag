//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Ross Phillips on 3/18/22.
//

import SwiftUI

struct FlagImage: View {
	let name: String
	
	var body: some View {
		Image(name)
			.renderingMode(.original)
			.clipShape(Capsule())
			.shadow(radius: 5)
	}
}

struct FlagImage_Previews: PreviewProvider {
    static var previews: some View {
        FlagImage(name: "France")
    }
}
