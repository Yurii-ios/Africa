//
//  InsetFactView.swift
//  Africa
//
//  Created by Yurii Sameliuk on 29/12/2020.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - PROPERTIES
    let animal: AnimalModel
    //MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealWidth: 168, maxHeight: 180)
        } //: GroupBox
    }
}

//MARK: - PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("nimals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
