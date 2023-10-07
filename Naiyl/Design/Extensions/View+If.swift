//
//  View+If.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

extension View {
    
    @ViewBuilder
    public func `if`<Content: View>(
        _ condition: Bool,
        transform: (Self) -> Content
    ) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
    
}
