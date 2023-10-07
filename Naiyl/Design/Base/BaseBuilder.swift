//
//  BaseBuilder.swift
//  Naiyl
//
//  Created by ibaikaa on 8/10/23.
//

import SwiftUI

protocol BaseBuilder {
    associatedtype view: View
    static func create() -> view
}
