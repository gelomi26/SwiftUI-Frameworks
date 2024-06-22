//
//  FrameworkGridView.swift
//  SwiftUI-Frameworks
//
//  Created by KyoungSoo Kim on 6/22/24.
//

import SwiftUI

struct FrameworkGridView: View {
	
	@StateObject var viewModel = FrameworkGridViewModel()

	
	var body: some View {
		NavigationView {
			ScrollView {
				LazyVGrid(columns: viewModel.columns) {
					ForEach(MockData.frameworks) { framework in
						FrameworkTitleView(framework: framework)
							.onTapGesture {
								viewModel.selectedFramework = framework
							}
					}
				}
			}
			.navigationTitle("🍎 Frameworks")
			.sheet(isPresented: $viewModel.isShowingDetailView) {
				FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
			}
		}
	}
}
#Preview {
    FrameworkGridView()
}
//asd
