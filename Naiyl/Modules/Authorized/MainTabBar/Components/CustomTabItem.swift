//
//  CustomTabItem.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

struct CustomTabItem: View {
    let imageName: String
    let selectedImageName: String
    let title: String
    let isActive: Bool
    
    var body: some View {
        ZStack {
            if isActive {
                AppColors.getColor(.primaryWhite)
            }
            
            HStack(spacing: 10) {
                Spacer()
                
                Image(systemName: isActive ? selectedImageName : imageName)
                    .font(.system(size: 16))
                    .foregroundColor(
                        AppColors.getColor(
                           isActive ? .primaryBlack : .primaryWhite
                       )
                    )
                
                if isActive {
                    RegularTextView(
                        title: title,
                        fontColor: AppColors.getColor(
                            isActive ? .primaryBlack : .primaryWhite
                        ),
                        lineLimit: 1,
                        makeAutoResizable: true
                    )
                }
                
                Spacer()
            }
        }
        .frame(width: isActive ? 140 : 70, height: 60)
        .cornerRadius(30)
    }
    
}

