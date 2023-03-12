//
//  ContentView.swift
//  Instagram
//
//  Created by Rahul Sharma on 26/02/23.
//  Copyright © 2023 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeFeedView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            ExploreView().tabItem {
                Image(systemName: "safari")
                Text("Explore")
            }
            
            CameraView().tabItem {
                Image(systemName: "camera")
                Text("Camera")
            }
            
            NotificationsView().tabItem {
                Image(systemName: "bell")
                Text("Notifications")
            }
            
            ProfileView().tabItem {
                Image(systemName: "person.cirlce")
                Text("Profile")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
