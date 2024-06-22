//
//  AFButton.swift
//  SwiftUI-Frameworks
//
//  Created by KyoungSoo Kim on 6/22/24.
//

import SwiftUI

struct AFButton: View {
	
	var title: String
	
    var body: some View {
			Text(title)
				.font(.title2)
				.fontWeight(.semibold)
				.frame(width: 250, height: 50)
				.background(Color.blue)
				.foregroundColor(.white)
				.cornerRadius(7)
		}
}


#Preview {
	AFButton(title: "Test Title")
}
