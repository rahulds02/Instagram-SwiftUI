//
//  CaptureView.swift
//  Instagram
//
//  Created by Rahul Sharma on 03/03/23.
//  Copyright © 2023 Rahul Sharma. All rights reserved.
//

import Foundation
import SwiftUI

struct CaptureView: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIImagePickerController
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    init(isShown: Binding<Bool>, image: Binding<image>?) {
        _isShown = isShown
        _image = image
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureView>) -> UIImagePickerController {
        
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        // do nothing
    }
    
    
}

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    init(isShown: Binding<Bool>, image: Binding<image?>) {
        _isShown = isShown
        _image = image
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // user cancelled
        isShown = false
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      
        guard let uiimage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
        }
        isShown = false
        image = Image(uiImage: uiimage)
    }
}
