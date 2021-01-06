//
//  ContentView.swift
//  Africa
//
//  Created by Yurii Sameliuk on 25/12/2020.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive: Bool = false
    
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            } //: LINK
                        } //: loop
                    } //: list
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink(
                                    destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                } //: NavigationLink
                            } //: ForEach
                        } //: LazyVGrid
                        .padding(10)
                        .animation(.easeIn)
                    } //: ScrollView
                } //: condition
            } //: Group
            .navigationBarTitle("Africa",displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        // List
                        Button(action: {
                            print("list view i activated")
                            isGridViewActive = false
                            haptics.impactOccurred()
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }
                        
                        // GRID
                        Button(action: {
                            print("Grid view is activated")
                            isGridViewActive = true
                            haptics.impactOccurred()
                        }) {
                            Image(systemName: "square.grid.2x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        }
                    } //: HStack
                } //: buttons
            } //: toolbar
        } //: Navigation
        
    }
}

//MARK: -   PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
