//
//  StoriesView.swift
//  Instagram
//
//  Created by Rahul Sharma on 26/02/23.
//  Copyright © 2023 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct StoriesView: View {
    let data = (1...5).map({"user\($0)"})
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
              //  StoryView(imageName: "foo")
                ForEach(data, id: \.self) { imageName in
                    StoryView(imageName: imageName)
                }
            }
        }
    }
}

struct StoryView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
        .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 90, height: 90, alignment: .center)
            .background(Color.blue)
        .cornerRadius(45)
        .padding()
    }
}
