//
//  CenterModifier.swift
//  Africa
//
//  Created by Yurii Sameliuk on 06/01/2021.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
    
}
