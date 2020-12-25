//
//  CoverImageView.swift
//  Africa
//
//  Created by Yurii Sameliuk on 25/12/2020.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY

    var body: some View {
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image("cover-lion")
                    .resizable()
                    .scaledToFit()
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
