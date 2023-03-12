//
//  HomeFeedView.swift
//  Instagram
//
//  Created by Rahul Sharma on 26/02/23.
//  Copyright © 2023 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct HomeFeedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    StoriesView()
                    ForEach(1...5, id: \.self) { num in
                        PostView(userImageName: "user\(num)", imageName: "image\(num)")
                            .padding(.bottom, 20)
                    }
                }
            }
        .navigationBarTitle("Instagram")
        }
    }
}

struct PostView: View {
    let userImageName: String
    let imageName: String
    
    var body: some View {
        VStack {
           PostHeaderView(userImageName: userImageName)
            .padding()
            
            // Image
            Image(imageName)
            .resizable()
                .frame(width: 430, height: 430, alignment: .center)
                .aspectRatio(contentMode: .fill)
                .background(Color.red)
            
            PostActionButtonsView()
            
            HStack {
                // like count
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(Color.red)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                
                Text("32 likes")
                .font(.system(size: 20))
                    .foregroundColor(Color(.link))
                Spacer()
            }
        .padding()
        .padding(.top, -20)
            
        // Caption
            Text("Learning Swift UI with Instagram UI")
            .font(.headline)
            .padding(.top, -15)
            // comments
            
            HStack {
                // Date
                Text("1 hour ago")
                    .foregroundColor(Color(.secondaryLabel))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.leading, 15)
        }
    }
}

struct PostHeaderView: View {
    let userImageName: String
    var body: some View {
        HStack {
            // user profile picture and user name
            Image(userImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            Text("Rahul")
                .foregroundColor(Color(.secondarySystemBackground))
            Spacer()
        }
    }
}

struct PostActionButtonsView: View {
    var body: some View {
        HStack {
            // action buttons: like, comment, shared
            Button(action: {
                // like
            }, label: {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            })
                .padding(.trailing, 3)
            
            Button(action: {
                // like
            }, label: {
                Image(systemName: "message")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            })
                .padding(.trailing, 3)
            
            Button(action: {
                // like
            }, label: {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            })
                .padding()
            
            Spacer()
        }
        .padding()
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
    }
}
