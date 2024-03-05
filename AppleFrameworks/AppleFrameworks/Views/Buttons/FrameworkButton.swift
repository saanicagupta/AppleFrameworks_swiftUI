//
//  FrameworkButton.swift
//  AppleFramework
//
//  Created by Sannica.Gupta on 05/03/24.
//

import SwiftUI

struct FrameworkButton: View {
    internal let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .cornerRadius(10)
    }
}
