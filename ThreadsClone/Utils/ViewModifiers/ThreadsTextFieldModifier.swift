//
//  ThreadsTextFieldModifier.swift
//  ThreadsClone
//
//  Created by Yıldız Aydın on 23.06.2025.
//

import Foundation
import SwiftUICore
    
struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}


