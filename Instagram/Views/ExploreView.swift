//
//  ExploreView.swift
//  Instagram
//
//  Created by Rahul Sharma on 26/02/23.
//  Copyright © 2023 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct ExploreView: View {
    @State var text = ""
    
    var columns: [GridItem] = [
        GridItem(.flexible(minimum: 200)),
        GridItem(.flexible(minimum: 200))
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search...", text: $text)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(12)
                    .padding()
                
                LazyVGrid(columns: [], content: {
                    
                })
            }
            .navigationBarTitle("Explore")
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
