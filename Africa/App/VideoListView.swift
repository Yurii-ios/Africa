//
//  VideoListView.swift
//  Africa
//
//  Created by Yurii Sameliuk on 25/12/2020.
//

import SwiftUI

struct VideoListView: View {
    //MARK: - PROPERTIES
    var videos: [VideoModel] = Bundle.main.decode("videos.json")
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                }
            } //: List
        } //: NavigationView
    }
}

//MARK: - PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
            
    }
}
