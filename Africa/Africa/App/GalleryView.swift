//
//  GalleryView.swift
//  Africa
//
//  Created by Jesús  Fortuna on 7/6/23.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - PROPERTY

    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery View")
        }//: SCROLL
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
