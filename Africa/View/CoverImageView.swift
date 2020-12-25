//
//  CoverImageView.swift
//  Africa
//
//  Created by Yurii Sameliuk on 25/12/2020.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES
    let coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    //MARK: - BODY

    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: FOREACH
        } //: TAB
        // delete tabbar area
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: - PRIVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
