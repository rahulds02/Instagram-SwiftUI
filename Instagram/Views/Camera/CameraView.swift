//
//  CameraView.swift
//  Instagram
//
//  Created by Rahul Sharma on 26/02/23.
//  Copyright © 2023 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct CameraView: View {
    var body: some View {
        
        @state var isShowingPicker = false
        @state var image: Image?
        @state var isUsingCamera = false
        
        NavigationView {
            ZStack {
                
                VStack {
                    image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: .center)
                    
                    
                    Button(action: {
                        // display photo picker, using UIViewControllerRepreentable
                        self.isShowingPicker.toggle()
                        self.isUsingCamera = false
                    }, label: {
                        Text("Photo Library")
                    })
                    .padding()
                    
                    Button(action: {
                        // display photo picker, using UIViewControllerRepreentable
                        self.isShowingPicker.toggle()
                        self.isUsingCamera = true
                    }, label: {
                        Text("Take photo")
                    })
                    .padding()
                }
                if isShowingPicker {
                    CaptureView(isShown : $isShowingPicker, image: $image)
                }
            }.navigationBarTitle("Camera")
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
