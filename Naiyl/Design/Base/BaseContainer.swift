//
//  BaseContainer.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

struct BaseContainer<Content: View>: View {
    let backgroundColor: Color
    var content: () -> Content
    
    init(
        backgroundColor: Color = AppColors.getColor(.backgroundColor),
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.backgroundColor = backgroundColor
        self.content = content
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            content()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
    }
    
}
