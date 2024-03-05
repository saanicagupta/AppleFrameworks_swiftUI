//
//  FrameworkGridViewModel.swift
//  AppleFramework
//
//  Created by Sannica.Gupta on 05/03/24.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: FrameworkModel? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    var gridView: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @Published var isShowingDetailView = false
}
