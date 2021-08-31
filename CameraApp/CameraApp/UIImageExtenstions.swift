//
//  UIImageExtenstions.swift
//  UIImageExtenstions
//
//  Created by Ataru Nakano on 2021/08/31.
//

import UIKit

extension UIImage {
    func redraw() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format)
            .image{ context in
                draw(in: CGRect(origin: .zero, size: size))
            }
    }
}
