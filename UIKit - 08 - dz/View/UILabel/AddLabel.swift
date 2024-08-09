//
//  AddLabel.swift
//  UIKit - 08 - dz
//
//  Created by Олег Дмитриев on 09.08.2024.
//

import UIKit

class AddLabel: UILabel {
    let labelText: String
    let labelFontS: CGFloat
    let labelFontW: UIFont.Weight
    let labelColor: UIColor
    let labelLines: Int
    
    init(labelText: String, labelFontS: CGFloat, labelFontW: UIFont.Weight = .black, labelColor: UIColor = .white, labelLines: Int = 0) {
        self.labelText = labelText
        self.labelFontS = labelFontS
        self.labelFontW = labelFontW
        self.labelColor = labelColor
        self.labelLines = labelLines
        
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        text = self.labelText
        font = .systemFont(ofSize: self.labelFontS, weight: self.labelFontW)
        textColor = self.labelColor
        numberOfLines = self.labelLines
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
