//
//  FrameworkDetailView.swift
//  AppleFramework
//
//  Created by Sannica.Gupta on 05/03/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: FrameworkModel
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafari: Bool = false
    
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
                isShowingSafari = true
            } label: {
                FrameworkButton(title: "Learn More")
            }
        }
        // can be .sheet() as well for modal representation
        .fullScreenCover(isPresented: $isShowingSafari, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,
                        isShowingDetailView: .constant(false))
}
