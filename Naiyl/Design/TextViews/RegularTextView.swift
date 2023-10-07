//
//  RegularTextView.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

struct RegularTextView: View {
    let title: String
    let fontSize: CGFloat
    let fontColor: Color
    let lineLimit: Int?
    let makeAutoResizable: Bool
    
    init(
        title: String,
        fontSize: CGFloat = 14,
        fontColor: Color = AppColors.getColor(.primaryBlack),
        lineLimit: Int? = nil,
        makeAutoResizable: Bool = false
    ) {
        self.title = title
        self.fontSize = fontSize
        self.fontColor = fontColor
        self.lineLimit = lineLimit
        self.makeAutoResizable = makeAutoResizable
    }
    
    var body: some View {
        Text(title)
            .font(.system(size: fontSize))
            .foregroundColor(fontColor)
            .lineLimit(lineLimit)
            .if(makeAutoResizable) { $0.minimumScaleFactor(0.5) }
    }
}

