//
//  CenterModifier.swift
//  Africa
//
//  Created by Jesús  Fortuna on 16/6/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
