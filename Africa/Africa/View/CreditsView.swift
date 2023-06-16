//
//  CreditsView.swift
//  Africa
//
//  Created by Jesús  Fortuna on 16/6/23.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - PROPERTY

    //MARK: - BODY
    var body: some View {
        VStack {
            
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Copyright © Jesus Fortuna
    All right reserved ♡
    """)
            .font(.footnote)
            .multilineTextAlignment(.center
        )
        }//: VSTACK
        .padding()
        .opacity(0.4)
    }
}

//MARK: - PREVIEW
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
