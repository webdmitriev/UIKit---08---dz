//
//  AddImage.swift
//  UIKit - 08 - dz
//
//  Created by Олег Дмитриев on 09.08.2024.
//

import UIKit

class AddImage: UIImageView {
    let postImage: String
    let postBrs: CGFloat
    
    init(postImage: String, postBrs: CGFloat = 30) {
        self.postImage = postImage
        self.postBrs = postBrs
        
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        image = UIImage(named: self.postImage)
        layer.cornerRadius = self.postBrs
        contentMode = .scaleAspectFill
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
