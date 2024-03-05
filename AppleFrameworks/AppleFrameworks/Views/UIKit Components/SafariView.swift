//
//  SafariView.swift
//  AppleFramework
//
//  Created by Sannica.Gupta on 06/03/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    var url: URL

    func makeUIViewController(
        context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) { }
}
