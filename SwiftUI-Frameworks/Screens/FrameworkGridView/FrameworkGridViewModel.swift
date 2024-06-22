//
//  FrameworkGridViewModel.swift
//  SwiftUI-Frameworks
//
//  Created by KyoungSoo Kim on 6/22/24.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
	
	var selectedFramework: Framework? {
		didSet { isShowingDetailView = true	}
	}
	
	@Published var isShowingDetailView = false
	
	let columns: [GridItem] = [GridItem(.flexible()),
														 GridItem(.flexible()),
														 GridItem(.flexible())]
}
