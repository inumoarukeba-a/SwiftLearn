//
//  ImagePicker.swift
//  ImagePicker
//
//  Created by Ataru Nakano on 2021/08/29.
//

import SwiftUI

struct ImagePicker:  UIViewControllerRepresentable {
    
    @Binding var image:Image?
    @Binding var isPicking:Bool
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker(image: .constant(nil), isPicking: .constant(true    ))
    }
}
