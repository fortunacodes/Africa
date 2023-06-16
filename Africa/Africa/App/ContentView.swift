//
//  ContentView.swift
//  Africa
//
//  Created by Jesús  Fortuna on 5/6/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTY
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)

    @State private var isGridViewActive: Bool = false
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    //MARK: - FUNCTIONS
    func gridSwitch() {
        print("\(gridLayout.count)")
        print("\(gridLayout.count % 3)")
        print("\(gridLayout.count % 3 + 1)")

        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        
        // TOOLBAR IMAGE
        switch gridColumn{
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            Group{
                if !isGridViewActive {
                    List{
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals){ animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal), label: {
                                AnimalListView(animal: animal)
                            })//: LINK
                        }//: LOOP
                        CreditsView()
                            .modifier(CenterModifier())
                    }//: LIST
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal), label: {
                                    AnimalGridItemView(animal: animal)
                                })//: LINK
                            }//: LOOP
                        }//: GRID
                        .padding(10)
                    }//: SCROLL
                }//: CONDITION
            }//: GROUP
            .listStyle(PlainListStyle())
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                HStack(spacing: 16) {
                    // LIST
                    Button {
                        print("List view is activated")
                        isGridViewActive = false
                        haptics.impactOccurred()
                    } label: {
                        Image(systemName: "square.fill.text.grid.1x2")
                            .font(.title2)
                            .foregroundColor(isGridViewActive ? .primary : .accentColor)
                    }
                    
                    // GRID
                    Button {
                        print("Grid view is activated")
                        isGridViewActive = true
                        haptics.impactOccurred()
                        gridSwitch()
                    } label: {
                        Image(systemName: toolbarIcon)
                            .font(.title2)
                            .foregroundColor(isGridViewActive ? .accentColor : .primary)
                    }
                }//: HSTACK
            }//: TOOLBAR ITEM (BUTTONS)
        }//: TOOLBAR

        }//: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
