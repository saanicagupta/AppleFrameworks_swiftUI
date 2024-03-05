//
//  FrameworkTitleView.swift
//  AppleFramework
//
//  Created by Sannica.Gupta on 05/03/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: FrameworkModel
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
