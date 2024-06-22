//
//  FrameworkDetailView.swift
//  SwiftUI-Frameworks
//
//  Created by KyoungSoo Kim on 6/22/24.
//

import SwiftUI

struct FrameworkDetailView: View {
	
	var framework: Framework
	@Binding var isShowingDetailView: Bool
	@State private var isShowingSafariView = false
	
	var body: some View {
		VStack {
			
			XDismissButton(isShowingDetailView: $isShowingDetailView)
			
			Spacer()
			
			FrameworkTitleView(framework: framework)
			Text(framework.description)
				.font(.body)
				.padding()
			
			Spacer()
			
			Button {
				isShowingSafariView = true
			} label: {
				AFButton(title: "Learn More")
			}
				Spacer()
			}
//		.sheet - modal / .fullScreenCover - Full page
		.fullScreenCover(isPresented: $isShowingSafariView, content: {
			SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
		})
		}
	}


#Preview {
	FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
