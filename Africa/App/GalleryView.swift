//
//  GalleryView.swift
//  Africa
//
//  Created by Yurii Sameliuk on 25/12/2020.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - PROPERTIES
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    // SIMPLE GRID DEFINITION
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
    
    // EFFICIENT GRID DEFINITION
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            //MARK: - GRID
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                ForEach(animals) { item in
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 1))
                    //Text("Gallery")
                } //: ForEach
            } //: GRID
        } //: ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

//MARK: - PREVIEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
