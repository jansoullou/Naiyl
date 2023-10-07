//
//  BaseScreen.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI
import Stinsen

typealias BaseScreen = View & BaseScreenProtocol

protocol BaseScreenProtocol: View {
    associatedtype ViewModel: ObservableObject
    var viewModel: ViewModel { get }
}

